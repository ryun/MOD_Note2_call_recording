.class Lcom/android/phone/BluetoothHandsfree$33;
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
    .line 4693
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 10
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 4697
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4698
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4699
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v2, p1

    if-ge v0, v2, :cond_6c

    .line 4700
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4b

    .line 4701
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_ac

    .line 4699
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4703
    :pswitch_25
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports CODEC_CVSD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    :cond_32
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->access$3676(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_22

    .line 4707
    :pswitch_38
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports CODEC_MSBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    :cond_45
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3676(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_22

    .line 4714
    :cond_4b
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Codec ID Format from HF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 4717
    :cond_6c
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 4718
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4719
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4720
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4721
    .local v1, result:Landroid/bluetooth/AtCommandResult;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9a

    .line 4722
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4723
    const-string v2, "+BCS:2"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4731
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :goto_99
    return-object v1

    .line 4726
    .restart local v1       #result:Landroid/bluetooth/AtCommandResult;
    :cond_9a
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4727
    const-string v2, "+BCS:1"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_99

    .line 4731
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :cond_a5
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_99

    .line 4701
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_25
        :pswitch_38
    .end packed-switch
.end method
