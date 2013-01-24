.class final Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandsfreeMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 2554
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    .line 2555
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2556
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2553
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2560
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_266

    .line 2701
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 2562
    :pswitch_9
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 2564
    :try_start_c
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v6, :cond_30

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_36

    .line 2566
    :cond_30
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2574
    :cond_36
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2576
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 2577
    monitor-exit v5

    goto :goto_8

    :catchall_46
    move-exception v4

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_46

    throw v4

    .line 2580
    :pswitch_49
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 2583
    :try_start_4c
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2584
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$5902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2585
    const-string v4, "Bluetooth HS/HF"

    const-string v6, "Timeout waiting for call to start"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v6, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2587
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2588
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2591
    :cond_7d
    monitor-exit v5

    goto :goto_8

    :catchall_7f
    move-exception v4

    monitor-exit v5
    :try_end_81
    .catchall {:try_start_4c .. :try_end_81} :catchall_7f

    throw v4

    .line 2594
    :pswitch_82
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 2597
    :try_start_85
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$6100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 2598
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$6102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2599
    const-string v4, "Bluetooth HS/HF"

    const-string v6, "Timeout waiting for voice recognition to start"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v6, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2602
    :cond_a1
    monitor-exit v5

    goto/16 :goto_8

    :catchall_a4
    move-exception v4

    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_85 .. :try_end_a6} :catchall_a4

    throw v4

    .line 2605
    :pswitch_a7
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    .line 2608
    :try_start_aa
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-eqz v7, :cond_15a

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 2609
    const-string v7, "Bluetooth HS/HF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v9}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "). Starting SCO anyway"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2614
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_160

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_160

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_160

    .line 2617
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    if-nez v7, :cond_145

    .line 2618
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2619
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2620
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v7

    if-eqz v7, :cond_121

    const-string v7, "+BCS:2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2621
    :cond_121
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2622
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "+BCS:2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2623
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2624
    .local v2, msg1:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2631
    .end local v2           #msg1:Landroid/os/Message;
    :cond_145
    :goto_145
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-nez v7, :cond_15a

    .line 2632
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v8

    if-ne v10, v8, :cond_174

    :goto_157
    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v7, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;Z)V

    .line 2637
    :cond_15a
    monitor-exit v6

    goto/16 :goto_8

    :catchall_15d
    move-exception v4

    monitor-exit v6
    :try_end_15f
    .catchall {:try_start_aa .. :try_end_15f} :catchall_15d

    throw v4

    .line 2628
    :cond_160
    :try_start_160
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-eqz v7, :cond_145

    .line 2629
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v7

    const-string v8, "bt_samplerate=8000"

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_173
    .catchall {:try_start_160 .. :try_end_173} :catchall_15d

    goto :goto_145

    :cond_174
    move v4, v5

    .line 2632
    goto :goto_157

    .line 2640
    :pswitch_176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2641
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v4, v0}, Lcom/android/phone/BluetoothHandsfree;->access$6200(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v6, 0xb

    if-ne v4, v6, :cond_8

    .line 2642
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v6, 0xa

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v4, v6, v0}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2644
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 2645
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 2646
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v4

    if-eqz v4, :cond_1a6

    const-string v4, "resuming A2DP stream after SCO connection failed"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2647
    :cond_1a6
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2649
    :cond_1b5
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2651
    :cond_1ba
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_8

    .line 2656
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_1c1
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    monitor-enter v5

    .line 2658
    :try_start_1c8
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v6

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v6

    if-ne v6, v4, :cond_1d9

    .line 2662
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2664
    :cond_1d9
    monitor-exit v5

    goto/16 :goto_8

    :catchall_1dc
    move-exception v4

    monitor-exit v5
    :try_end_1de
    .catchall {:try_start_1c8 .. :try_end_1de} :catchall_1dc

    throw v4

    .line 2668
    :pswitch_1df
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    .line 2669
    :try_start_1e2
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_1e7
    .catchall {:try_start_1e2 .. :try_end_1e7} :catchall_200

    move-result v7

    if-eqz v7, :cond_1fd

    .line 2671
    :try_start_1ea
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v8

    if-ne v8, v10, :cond_203

    :goto_1f4
    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v7, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;Z)V

    .line 2672
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_1fd
    .catchall {:try_start_1ea .. :try_end_1fd} :catchall_200
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_1fd} :catch_205

    .line 2677
    :cond_1fd
    :goto_1fd
    :try_start_1fd
    monitor-exit v6

    goto/16 :goto_8

    :catchall_200
    move-exception v4

    monitor-exit v6
    :try_end_202
    .catchall {:try_start_1fd .. :try_end_202} :catchall_200

    throw v4

    :cond_203
    move v4, v5

    .line 2671
    goto :goto_1f4

    .line 2673
    :catch_205
    move-exception v1

    .line 2674
    .local v1, e:Ljava/lang/Exception;
    :try_start_206
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->fallbackNb()V
    :try_end_20b
    .catchall {:try_start_206 .. :try_end_20b} :catchall_200

    goto :goto_1fd

    .line 2680
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_20c
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v5, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2683
    :pswitch_21b
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V
    invoke-static {v5, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2686
    :pswitch_22a
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v4

    if-eqz v4, :cond_235

    const-string v4, "DELAYED_SCO_FOR_JCI"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2687
    :cond_235
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 2688
    :try_start_238
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2689
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2690
    monitor-exit v5

    goto/16 :goto_8

    :catchall_246
    move-exception v4

    monitor-exit v5
    :try_end_248
    .catchall {:try_start_238 .. :try_end_248} :catchall_246

    throw v4

    .line 2694
    :pswitch_249
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2695
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0768

    const/16 v6, 0x7d0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 2696
    .local v3, t:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 2560
    nop

    :pswitch_data_266
    .packed-switch 0x3
        :pswitch_9
        :pswitch_49
        :pswitch_82
        :pswitch_a7
        :pswitch_176
        :pswitch_1c1
        :pswitch_20c
        :pswitch_21b
        :pswitch_1df
        :pswitch_8
        :pswitch_22a
        :pswitch_249
    .end packed-switch
.end method
