.class Lcom/android/phone/PhoneInterfaceManagerExt$2;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 95
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOMESTIC PCSC HandleMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_316

    .line 224
    :pswitch_20
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "Get Default"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    new-array v4, v6, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 228
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v4, -0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 231
    :goto_34
    return-void

    .line 100
    :pswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 102
    :try_start_40
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_131

    .line 103
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_fc

    .line 120
    :try_start_4f
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "90"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x2

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 122
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_8b
    .catchall {:try_start_4f .. :try_end_8b} :catchall_fc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4f .. :try_end_8b} :catch_ed

    .line 134
    :goto_8b
    :try_start_8b
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM(TCash) : Get CONNECT_DONE event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    .local v2, i:I
    :goto_aa
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_ff

    .line 136
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM(TCash) : Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v6

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_8b .. :try_end_e3} :catchall_fc

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 125
    .end local v2           #i:I
    :cond_e6
    :try_start_e6
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_fc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e6 .. :try_end_ec} :catch_ed

    goto :goto_8b

    .line 127
    :catch_ed
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_ee
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v5, "Exception in getting Logical Channel."

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_8b

    .line 147
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_fc
    move-exception v3

    monitor-exit v4
    :try_end_fe
    .catchall {:try_start_ee .. :try_end_fe} :catchall_fc

    throw v3

    .line 138
    .restart local v2       #i:I
    :cond_ff
    :try_start_ff
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect! Logical Ch is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v2           #i:I
    :goto_11d
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    monitor-exit v4

    goto/16 :goto_34

    .line 141
    :cond_131
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 142
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v5, "SMARTCARD_IO_ERROR_CARD_NOT_EXIST"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_ff .. :try_end_13e} :catchall_fc

    goto :goto_11d

    .line 151
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_13f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 153
    :try_start_14a
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_206

    .line 154
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 156
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "90"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 158
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 164
    :goto_18d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_18e
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1d4

    .line 165
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM(TCash) : Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v6

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_18e

    .line 160
    .end local v2           #i:I
    :cond_1ca
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_18d

    .line 176
    :catchall_1d1
    move-exception v3

    monitor-exit v4
    :try_end_1d3
    .catchall {:try_start_14a .. :try_end_1d3} :catchall_1d1

    throw v3

    .line 167
    .restart local v2       #i:I
    :cond_1d4
    :try_start_1d4
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnect! res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v2           #i:I
    :goto_1f2
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    monitor-exit v4

    goto/16 :goto_34

    .line 170
    :cond_206
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 171
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v5, "SMARTCARD_IO_INVALID_CHANNEL"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catchall {:try_start_1d4 .. :try_end_213} :catchall_1d1

    goto :goto_1f2

    .line 180
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 181
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 182
    :try_start_21f
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2ac

    .line 183
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 184
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v5

    array-length v5, v5

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 187
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_23b
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_277

    .line 188
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v6

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_23b

    .line 190
    :cond_277
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get TRANSMIT_DONE event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v2           #i:I
    :goto_295
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    monitor-exit v4

    goto/16 :goto_34

    :catchall_2a9
    move-exception v3

    monitor-exit v4
    :try_end_2ab
    .catchall {:try_start_21f .. :try_end_2ab} :catchall_2a9

    throw v3

    .line 193
    :cond_2ac
    :try_start_2ac
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 194
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x4

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_2b8
    .catchall {:try_start_2ac .. :try_end_2b8} :catchall_2a9

    goto :goto_295

    .line 204
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2b9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 205
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 206
    :try_start_2c4
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_30e

    .line 207
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 208
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 214
    :goto_2d9
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get POWERUP event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    monitor-exit v4

    goto/16 :goto_34

    :catchall_30b
    move-exception v3

    monitor-exit v4
    :try_end_30d
    .catchall {:try_start_2c4 .. :try_end_30d} :catchall_30b

    throw v3

    .line 210
    :cond_30e
    :try_start_30e
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_314
    .catchall {:try_start_30e .. :try_end_314} :catchall_30b

    goto :goto_2d9

    .line 98
    nop

    :pswitch_data_316
    .packed-switch 0x2
        :pswitch_2b9
        :pswitch_20
        :pswitch_35
        :pswitch_13f
        :pswitch_214
    .end packed-switch
.end method
