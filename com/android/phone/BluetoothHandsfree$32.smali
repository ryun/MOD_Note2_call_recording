.class Lcom/android/phone/BluetoothHandsfree$32;
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


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 4657
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 10
    .parameter "args"

    .prologue
    const-wide/16 v6, 0x64

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4661
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4662
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 4663
    array-length v1, p1

    if-ne v1, v4, :cond_84

    aget-object v1, p1, v3

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_84

    .line 4664
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4665
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v1, v2, :cond_79

    .line 4666
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    packed-switch v1, :pswitch_data_ae

    .line 4674
    :goto_43
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4675
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4676
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4677
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4688
    .end local v0           #msg:Landroid/os/Message;
    :goto_60
    return-object v1

    .line 4668
    :pswitch_61
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "bt_samplerate=16000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_43

    .line 4671
    :pswitch_6d
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "bt_samplerate=8000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_43

    .line 4680
    :cond_79
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4681
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_60

    .line 4684
    :cond_84
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "bt_samplerate=8000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4685
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4686
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4687
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4688
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_60

    .line 4666
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_61
    .end packed-switch
.end method
