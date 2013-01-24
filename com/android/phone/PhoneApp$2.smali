.class Lcom/android/phone/PhoneApp$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 3103
    iput-object p1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_18

    .line 3107
    const-string v0, "PhoneApp"

    const-string v1, "DockReceiver : RESULT_CANCELED during call"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp$2;->setResultCode(I)V

    .line 3110
    :cond_18
    return-void
.end method
