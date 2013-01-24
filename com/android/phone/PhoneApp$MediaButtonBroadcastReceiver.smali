.class Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field private isLongPress:Z

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 3
    .parameter

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2989
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x4f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3002
    const-string v7, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 3003
    .local v1, event:Landroid/view/KeyEvent;
    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaButtonBroadcastReceiver.onReceive()...  event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3004
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v10, :cond_50

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_50

    .line 3007
    iget-object v7, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v8, :cond_50

    .line 3008
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_4d

    .line 3009
    const-string v7, "PhoneApp"

    const-string v8, "MediaButtonBroadcastReceiver.onReceive()... Long pressed "

    invoke-static {v7, v8, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3010
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    .line 3012
    :cond_4d
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 3016
    :cond_50
    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v10, :cond_ce

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_ce

    .line 3019
    iget-object v7, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v8, :cond_cc

    .line 3020
    iget-object v7, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_cf

    move v2, v5

    .line 3021
    .local v2, hasActiveCall:Z
    :goto_79
    iget-object v7, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_d1

    move v3, v5

    .line 3022
    .local v3, hasHoldingCall:Z
    :goto_88
    iget-object v7, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_d3

    move v4, v5

    .line 3024
    .local v4, hasRingingCall:Z
    :goto_97
    if-eqz v4, :cond_d5

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3028
    .local v0, currentPhone:Lcom/android/internal/telephony/Phone;
    :goto_a1
    iget-boolean v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    if-eqz v5, :cond_f4

    .line 3029
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v7, :cond_f0

    .line 3030
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 3042
    :goto_bc
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 3043
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 3045
    :cond_c9
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 3047
    .end local v0           #currentPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #hasRingingCall:Z
    :cond_cc
    iput-boolean v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->isLongPress:Z

    .line 3049
    :cond_ce
    return-void

    :cond_cf
    move v2, v6

    .line 3020
    goto :goto_79

    .restart local v2       #hasActiveCall:Z
    :cond_d1
    move v3, v6

    .line 3021
    goto :goto_88

    .restart local v3       #hasHoldingCall:Z
    :cond_d3
    move v4, v6

    .line 3022
    goto :goto_97

    .line 3024
    .restart local v4       #hasRingingCall:Z
    :cond_d5
    if-eqz v2, :cond_e0

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_a1

    :cond_e0
    if-eqz v3, :cond_eb

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_a1

    :cond_eb
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_a1

    .line 3032
    .restart local v0       #currentPhone:Lcom/android/internal/telephony/Phone;
    :cond_f0
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    goto :goto_bc

    .line 3035
    :cond_f4
    if-nez v4, :cond_106

    if-eqz v2, :cond_106

    if-eqz v3, :cond_106

    .line 3036
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_bc

    .line 3038
    :cond_106
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    goto :goto_bc
.end method
