.class Lcom/android/phone/BluetoothHandsfree$3;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
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
    .line 3632
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$3;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 10
    .parameter "args"

    .prologue
    const/4 v7, 0x2

    .line 3635
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3636
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 3639
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 3640
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 3641
    const-string v1, "imsCallIsActive..SendingBT Call answer Event to ImsCallApp"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 3643
    :try_start_2e
    const-string v1, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendBTEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "START_CALL"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_62} :catch_68

    .line 3647
    :goto_62
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3663
    :goto_67
    return-object v1

    .line 3644
    :catch_68
    move-exception v0

    .line 3645
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Bluetooth HS/HF"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 3651
    .end local v0           #e:Ljava/lang/Exception;
    :cond_73
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_a0

    .line 3653
    :try_start_81
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->val$voipInf:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_9a

    .line 3654
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    if-nez v1, :cond_95

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIncoming()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 3655
    :cond_95
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_9a} :catch_ae

    .line 3663
    :cond_9a
    :goto_9a
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_67

    .line 3660
    :cond_a0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_9a

    .line 3658
    :catch_ae
    move-exception v1

    goto :goto_9a
.end method
