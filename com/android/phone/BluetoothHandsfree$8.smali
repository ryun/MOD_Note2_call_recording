.class Lcom/android/phone/BluetoothHandsfree$8;
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
    .line 3852
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$8;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 3855
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CMER: 3,0,0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-boolean v0, v0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    if-eqz v0, :cond_21

    const-string v0, "1"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_21
    const-string v0, "0"

    goto :goto_15
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 10
    .parameter "args"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3860
    array-length v1, p1

    if-ge v1, v7, :cond_e

    .line 3862
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3907
    :goto_d
    return-object v1

    .line 3863
    :cond_e
    aget-object v1, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    aget-object v1, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    aget-object v1, p1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 3865
    const/4 v0, 0x0

    .line 3866
    .local v0, valid:Z
    aget-object v1, p1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 3867
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-boolean v3, v1, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 3868
    const/4 v0, 0x1

    .line 3873
    :cond_44
    :goto_44
    if-eqz v0, :cond_f5

    .line 3874
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_ee

    .line 3875
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 3876
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3877
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7800(Lcom/android/phone/BluetoothHandsfree;)V

    .line 3878
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isInVoIPcallAudio()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$8000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isInVoLTEcallAudio()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 3879
    :cond_79
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 3901
    :cond_7e
    :goto_7e
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_d

    .line 3869
    :cond_84
    aget-object v1, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 3870
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-boolean v4, v1, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 3871
    const/4 v0, 0x1

    goto :goto_44

    .line 3880
    :cond_96
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 3883
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_7e

    .line 3884
    :cond_b0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 3885
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_7e

    .line 3889
    :cond_c6
    :try_start_c6
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->val$voipInf:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_7e

    .line 3890
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    if-nez v1, :cond_e2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIncoming()Z

    move-result v1

    if-nez v1, :cond_e2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPWaiting()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 3893
    :cond_e2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_eb} :catch_ec

    goto :goto_7e

    .line 3896
    :catch_ec
    move-exception v1

    goto :goto_7e

    .line 3903
    :cond_ee
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_d

    .line 3907
    .end local v0           #valid:Z
    :cond_f5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1, v7}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto/16 :goto_d
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 3911
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CMER: (3),(0),(0),(0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
