.class Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingScoAcceptThread"
.end annotation


# instance fields
.field private mIncomingSco:Landroid/bluetooth/BluetoothSocket;

.field private final mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private stopped:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 6
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 388
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, serverSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_start_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_10

    move-result-object v1

    .line 398
    :goto_d
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 399
    return-void

    .line 394
    :catch_10
    move-exception v0

    .line 395
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Could not create BluetoothServerSocket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    goto :goto_d
.end method

.method private connectSco()V
    .registers 7

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 418
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_d9

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_d9

    :cond_21
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-nez v1, :cond_d9

    .line 421
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Routing audio for incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 424
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 425
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO is already connected before A2DP suspended (mA2dpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 427
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 432
    :cond_73
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 433
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "already connected SCO"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 435
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 438
    :cond_93
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 439
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 442
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    if-nez v1, :cond_d7

    .line 443
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1202(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 444
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    const-string v3, "SignalScoCloseThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->setName(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->start()V

    .line 456
    :cond_d7
    :goto_d7
    monitor-exit v2

    .line 457
    return-void

    .line 448
    :cond_d9
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Rejecting incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_3 .. :try_end_e0} :catchall_e9

    .line 450
    :try_start_e0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_e9
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e5} :catch_ec

    .line 454
    :goto_e5
    const/4 v1, 0x0

    :try_start_e6
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    goto :goto_d7

    .line 456
    :catchall_e9
    move-exception v1

    monitor-exit v2
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_e9

    throw v1

    .line 451
    :catch_ec
    move-exception v0

    .line 452
    .local v0, e:Ljava/io/IOException;
    :try_start_ed
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Error when closing incoming Sco socket"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_ed .. :try_end_f4} :catchall_e9

    goto :goto_e5
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 403
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    if-nez v1, :cond_1d

    .line 405
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_14

    .line 410
    :goto_c
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->connectSco()V

    goto :goto_0

    .line 406
    :catch_14
    move-exception v0

    .line 407
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "BluetoothServerSocket could not accept connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 414
    .end local v0           #e:Ljava/io/IOException;
    :cond_1d
    return-void
.end method

.method shutdown()V
    .registers 4

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_9

    .line 463
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_10

    .line 467
    :cond_9
    :goto_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->interrupt()V

    .line 469
    return-void

    .line 464
    :catch_10
    move-exception v0

    .line 465
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Error when closing server socket"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
