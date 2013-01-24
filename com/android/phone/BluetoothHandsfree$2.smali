.class Lcom/android/phone/BluetoothHandsfree$2;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$voipInf:Landroid/os/IVoIPInterface;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$2;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private headsetButtonPress()Landroid/bluetooth/AtCommandResult;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3566
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3568
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 3569
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3570
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3573
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 3574
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3607
    :goto_39
    return-object v0

    .line 3575
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 3576
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_59

    .line 3578
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 3592
    :cond_53
    :goto_53
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_39

    .line 3580
    :cond_59
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getConnectTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_53

    .line 3588
    :cond_7b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 3589
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_53

    .line 3594
    :cond_8a
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_b3

    .line 3596
    :try_start_94
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->val$voipInf:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_ad

    .line 3597
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPIncoming()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 3598
    :cond_a8
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_ad} :catch_ba

    .line 3603
    :cond_ad
    :goto_ad
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_39

    .line 3607
    :cond_b3
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$7300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_39

    .line 3601
    :catch_ba
    move-exception v0

    goto :goto_ad
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 2

    .prologue
    .line 3612
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$2;->headsetButtonPress()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 3
    .parameter "args"

    .prologue
    .line 3616
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$2;->headsetButtonPress()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method
