.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c6

    .line 653
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 562
    :pswitch_c
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingHandler: msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 563
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_6a

    invoke-virtual {p0, v7}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 570
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 571
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 572
    const/4 v1, 0x3

    :try_start_5f
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_69

    .line 573
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 575
    :cond_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_f5

    .line 577
    :cond_6a
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 578
    if-eqz v0, :cond_b

    invoke-virtual {p0, v7}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_b

    .line 579
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 581
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9e

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 583
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 584
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v8, v1, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 585
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    .line 588
    :cond_9e
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v4, :cond_f8

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mIsRingRepeat:Z
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 589
    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->setRepeat(Z)V

    .line 597
    :goto_ad
    const-string v1, "ringtone_escalating"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mIsRingEscalating:Z
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 598
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    #setter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$702(Lcom/android/phone/Ringer;I)I

    .line 600
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x7

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/Ringer$1;->sendEmptyMessageDelayed(IJ)Z

    .line 607
    :cond_d4
    :goto_d4
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 608
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 609
    :try_start_da
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_ef

    .line 610
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1, v3, v4}, Lcom/android/phone/Ringer;->access$902(Lcom/android/phone/Ringer;J)J

    .line 612
    :cond_ef
    monitor-exit v2

    goto/16 :goto_b

    :catchall_f2
    move-exception v1

    monitor-exit v2
    :try_end_f4
    .catchall {:try_start_da .. :try_end_f4} :catchall_f2

    throw v1

    .line 575
    :catchall_f5
    move-exception v1

    :try_start_f6
    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v1

    .line 592
    :cond_f8
    invoke-virtual {v0, v5}, Landroid/media/Ringtone;->setRepeat(Z)V

    goto :goto_ad

    .line 603
    :cond_fc
    const-string v1, "extra_ringer"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 604
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/ExtraRinger;->startExtraRinger()V

    goto :goto_d4

    .line 618
    :pswitch_10e
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const-string v2, "mRingHandler: PLAY_TTS..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 620
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$1002(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 621
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1100(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 622
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1100(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_b

    .line 627
    :pswitch_136
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const-string v2, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 628
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 629
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_171

    .line 631
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_165

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->IsSpeakingTts()Z

    move-result v1

    if-eqz v1, :cond_165

    .line 632
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 633
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v8}, Lcom/android/phone/Ringer;->access$1002(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 635
    :cond_165
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 639
    :goto_168
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_b

    .line 637
    :cond_171
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    goto :goto_168

    .line 643
    :pswitch_18a
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETURN_ORIGIN_VOLUME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 644
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)I

    move-result v2

    const-string v1, "extra_ringer"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 646
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/ExtraRinger;->startExtraRinger()V

    goto/16 :goto_b

    .line 558
    nop

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_136
        :pswitch_c
        :pswitch_10e
        :pswitch_b
        :pswitch_18a
    .end packed-switch
.end method
