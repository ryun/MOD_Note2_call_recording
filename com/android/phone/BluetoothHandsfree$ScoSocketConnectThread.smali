.class Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoSocketConnectThread"
.end annotation


# instance fields
.field private mIsWbs:Z

.field private mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8
    .parameter
    .parameter "device"
    .parameter "wbs"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 483
    :try_start_5
    iput-boolean p3, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mIsWbs:Z

    .line 484
    if-eqz p3, :cond_31

    .line 485
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->createScoWbsSocket()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_38

    .line 494
    :goto_f
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 495
    .local v1, service:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->isOutgoingCall()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Landroid/sec/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v2

    if-nez v2, :cond_30

    .line 496
    const-string v2, "Bluetooth HS/HF"

    const-string v3, " Device requesting for SCO, EDM blocked it"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    .line 498
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    .line 502
    :cond_30
    return-void

    .line 487
    .end local v1           #service:Landroid/sec/enterprise/BluetoothPolicy;
    :cond_31
    :try_start_31
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->createScoSocket()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_f

    .line 489
    :catch_38
    move-exception v0

    .line 490
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Could not create BluetoothSocket"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    goto :goto_f
.end method

.method private connectSco()V
    .registers 7

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 540
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_77

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-nez v1, :cond_77

    .line 541
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "Routing audio for outgoing SCO conection"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 542
    :cond_24
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 543
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 544
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 549
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    if-nez v1, :cond_75

    .line 550
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1202(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 551
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    const-string v3, "SignalScoCloseThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->setName(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->start()V

    .line 564
    :cond_75
    :goto_75
    monitor-exit v2

    .line 565
    return-void

    .line 555
    :cond_77
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_82

    const-string v1, "Rejecting new connected outgoing SCO socket"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_8e

    .line 557
    :cond_82
    :try_start_82
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_8e
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_87} :catch_91

    .line 561
    :goto_87
    const/4 v1, 0x0

    :try_start_88
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    .line 562
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    goto :goto_75

    .line 564
    :catchall_8e
    move-exception v1

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_8e

    throw v1

    .line 558
    :catch_91
    move-exception v0

    .line 559
    .local v0, e:Ljava/io/IOException;
    :try_start_92
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_8e

    goto :goto_87
.end method

.method private failedScoConnect()V
    .registers 5

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 572
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    monitor-enter p0

    .line 582
    :try_start_23
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 583
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)V

    .line 585
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_39

    .line 587
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mIsWbs:Z

    if-eqz v1, :cond_38

    .line 588
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->fallbackNb()V

    .line 590
    :cond_38
    return-void

    .line 585
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private isOutgoingCall()Z
    .registers 6

    .prologue
    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, outCall:Z
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 508
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1a

    .line 509
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 510
    .local v0, connections:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1a

    .line 511
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    .line 512
    .local v3, ret:Z
    if-nez v3, :cond_1b

    const/4 v2, 0x1

    .line 515
    .end local v0           #connections:Lcom/android/internal/telephony/Connection;
    .end local v3           #ret:Z
    :cond_1a
    :goto_1a
    return v2

    .line 512
    .restart local v0       #connections:Lcom/android/internal/telephony/Connection;
    .restart local v3       #ret:Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_11

    .line 523
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_19

    .line 533
    :goto_9
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_10

    .line 534
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->connectSco()V

    .line 536
    :cond_10
    return-void

    .line 525
    :cond_11
    :try_start_11
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Bluetooth OutgoingSco Socket is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_9

    .line 527
    :catch_19
    move-exception v0

    .line 528
    .local v0, connectException:Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "BluetoothSocket could not connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    .line 530
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    goto :goto_9
.end method

.method shutdown()V
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)V

    .line 598
    monitor-enter p0

    .line 599
    :try_start_6
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->interrupt()V

    .line 600
    monitor-exit p0

    .line 601
    return-void

    .line 600
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method
