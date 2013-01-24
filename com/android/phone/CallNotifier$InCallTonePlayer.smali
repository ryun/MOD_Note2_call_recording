.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 4
    .parameter
    .parameter "toneId"

    .prologue
    .line 3078
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 3079
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3080
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 3081
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3082
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer.run(toneId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3088
    const/4 v14, 0x0

    .line 3093
    .local v14, toneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 3098
    .local v6, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneApp;->acquirePartialWakeLock()V

    .line 3100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_45c

    .line 3209
    :pswitch_53
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad toneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3102
    :pswitch_72
    const/16 v14, 0x16

    .line 3103
    const/16 v15, 0x50

    .line 3105
    .local v15, toneVolume:I
    const-string v17, "dcm_callwait_tone_long_feature"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_274

    .line 3109
    const/16 v12, 0x5208

    .line 3217
    .local v12, toneLengthMillis:I
    :goto_80
    :try_start_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    if-eqz v17, :cond_35d

    .line 3218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_348

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v17

    if-eqz v17, :cond_344

    const/4 v10, 0x6

    .line 3232
    .local v10, stream:I
    :goto_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer: stream :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3234
    new-instance v11, Landroid/media/ToneGenerator;

    invoke-direct {v11, v10, v15}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_d6
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_d6} :catch_378

    .line 3256
    .end local v10           #stream:I
    .local v11, toneGenerator:Landroid/media/ToneGenerator;
    :goto_d6
    const/4 v4, 0x1

    .line 3257
    .local v4, needToStopTone:Z
    const/4 v5, 0x0

    .line 3259
    .local v5, okToPlayTone:Z
    if-eqz v11, :cond_215

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    .line 3261
    .local v8, ringerMode:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_413

    .line 3262
    const/16 v17, 0x5d

    move/from16 v0, v17

    if-ne v14, v0, :cond_398

    .line 3263
    if-eqz v8, :cond_11c

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_11c

    .line 3265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- InCallTonePlayer: start playing call tone="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3266
    const/4 v5, 0x1

    .line 3267
    const/4 v4, 0x0

    .line 3294
    :cond_11c
    :goto_11c
    const-string v17, "custom_waiting_tone"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a2

    .line 3295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "volume_waiting_tone"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3296
    .local v7, rate:I
    const/high16 v16, 0x3f80

    .line 3297
    .local v16, volFloat:F
    const-wide/high16 v17, 0x4000

    add-int/lit8 v19, v7, -0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 3298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a2

    .line 3300
    :cond_16a
    :try_start_16a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x32

    move/from16 v0, v17

    if-ne v15, v0, :cond_416

    const-string v17, "situation=15"

    :goto_177
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";device=0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3302
    .local v13, toneSituation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    mul-float v9, v17, v16

    .line 3303
    .local v9, situationVolume:F
    invoke-virtual {v11, v9}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1a2} :catch_41a

    .line 3310
    .end local v7           #rate:I
    .end local v9           #situationVolume:F
    .end local v13           #toneSituation:Ljava/lang/String;
    .end local v16           #volFloat:F
    :cond_1a2
    :goto_1a2
    const-string v17, "kor_cs_vt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1da

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_1d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_1da

    .line 3312
    :cond_1d2
    const v17, 0x3d4ccccd

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 3316
    :cond_1da
    monitor-enter p0

    .line 3317
    if-eqz v5, :cond_209

    :try_start_1dd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_209

    .line 3318
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3319
    invoke-virtual {v11, v14}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1f6
    .catchall {:try_start_1dd .. :try_end_1f6} :catchall_458

    .line 3321
    add-int/lit8 v17, v12, 0x14

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :try_start_1fd
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_204
    .catchall {:try_start_1fd .. :try_end_204} :catchall_458
    .catch Ljava/lang/InterruptedException; {:try_start_1fd .. :try_end_204} :catch_439

    .line 3334
    :goto_204
    if-eqz v4, :cond_209

    .line 3335
    :try_start_206
    invoke-virtual {v11}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3339
    :cond_209
    invoke-virtual {v11}, Landroid/media/ToneGenerator;->release()V

    .line 3340
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3341
    monitor-exit p0
    :try_end_215
    .catchall {:try_start_206 .. :try_end_215} :catchall_458

    .line 3347
    .end local v8           #ringerMode:I
    :cond_215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneApp;->releasePartialWakeLock()V

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_273

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_273

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 3366
    :cond_273
    return-void

    .line 3112
    .end local v4           #needToStopTone:Z
    .end local v5           #okToPlayTone:Z
    .end local v11           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v12           #toneLengthMillis:I
    :cond_274
    const/16 v12, 0x1db0

    .line 3114
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3116
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_278
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_286

    .line 3117
    const/16 v14, 0x60

    .line 3118
    const/16 v15, 0x32

    .line 3119
    .restart local v15       #toneVolume:I
    const/16 v12, 0x3e8

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3120
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_286
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_292

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_29a

    .line 3122
    :cond_292
    const/16 v14, 0x11

    .line 3123
    const/16 v15, 0x50

    .line 3124
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1194

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3126
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_29a
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected phone type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3130
    :pswitch_2b5
    const/16 v14, 0x12

    .line 3131
    const/16 v15, 0x50

    .line 3132
    .restart local v15       #toneVolume:I
    const/16 v12, 0xfa0

    .line 3133
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3136
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_2bd
    const/16 v14, 0x1b

    .line 3137
    const/16 v15, 0x50

    .line 3138
    .restart local v15       #toneVolume:I
    const/16 v12, 0xc8

    .line 3139
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3141
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2eb

    .line 3143
    const/16 v14, 0x5d

    .line 3144
    const/16 v15, 0x50

    .line 3145
    .restart local v15       #toneVolume:I
    const/16 v12, 0x2ee

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3147
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_2eb
    const/16 v14, 0x1b

    .line 3148
    const/16 v15, 0x50

    .line 3149
    .restart local v15       #toneVolume:I
    const/16 v12, 0xc8

    .line 3151
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3153
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_2f3
    const/16 v14, 0x56

    .line 3154
    const/16 v15, 0x50

    .line 3155
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1388

    .line 3156
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3158
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_2fb
    const/16 v14, 0x26

    .line 3159
    const/16 v15, 0x50

    .line 3160
    .restart local v15       #toneVolume:I
    const/16 v12, 0xfa0

    .line 3161
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3163
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_303
    const/16 v14, 0x25

    .line 3164
    const/16 v15, 0x32

    .line 3165
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1f4

    .line 3166
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3169
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_30b
    const/16 v14, 0x5f

    .line 3170
    const/16 v15, 0x32

    .line 3171
    .restart local v15       #toneVolume:I
    const/16 v12, 0x177

    .line 3172
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3174
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_313
    const/16 v14, 0x57

    .line 3175
    const/16 v15, 0x32

    .line 3176
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1388

    .line 3177
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3182
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_31b
    const/16 v14, 0x17

    .line 3184
    const/16 v15, 0x50

    .line 3186
    .restart local v15       #toneVolume:I
    const v12, 0x7fffffeb

    .line 3187
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3189
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_324
    const/16 v14, 0x15

    .line 3190
    const/16 v15, 0x50

    .line 3191
    .restart local v15       #toneVolume:I
    const/16 v12, 0xfa0

    .line 3192
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3194
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_32c
    const/16 v14, 0x19

    .line 3195
    const/16 v15, 0x32

    .line 3196
    .restart local v15       #toneVolume:I
    const/16 v12, 0x3e8

    .line 3197
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3199
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_334
    const/16 v14, 0x63

    .line 3200
    const/16 v15, 0x50

    .line 3201
    .restart local v15       #toneVolume:I
    const/16 v12, 0x258

    .line 3202
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3204
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :pswitch_33c
    const/16 v14, 0x64

    .line 3205
    const/16 v15, 0x32

    .line 3206
    .restart local v15       #toneVolume:I
    const/16 v12, 0x154

    .line 3207
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_80

    .line 3219
    :cond_344
    const/16 v10, 0xb

    goto/16 :goto_b1

    .line 3222
    :cond_348
    :try_start_348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v17

    if-eqz v17, :cond_35b

    const/4 v10, 0x6

    .restart local v10       #stream:I
    :goto_359
    goto/16 :goto_b1

    .end local v10           #stream:I
    :cond_35b
    const/4 v10, 0x0

    goto :goto_359

    .line 3226
    :cond_35d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z
    :try_end_36e
    .catch Ljava/lang/RuntimeException; {:try_start_348 .. :try_end_36e} :catch_378

    move-result v17

    if-eqz v17, :cond_375

    .line 3227
    const/16 v10, 0xb

    .restart local v10       #stream:I
    goto/16 :goto_b1

    .line 3229
    .end local v10           #stream:I
    :cond_375
    const/4 v10, 0x0

    .restart local v10       #stream:I
    goto/16 :goto_b1

    .line 3236
    .end local v10           #stream:I
    :catch_378
    move-exception v3

    .line 3237
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v17, "CallNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3239
    const/4 v11, 0x0

    .restart local v11       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_d6

    .line 3269
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v4       #needToStopTone:Z
    .restart local v5       #okToPlayTone:Z
    .restart local v8       #ringerMode:I
    :cond_398
    const/16 v17, 0x60

    move/from16 v0, v17

    if-eq v14, v0, :cond_3b6

    const/16 v17, 0x26

    move/from16 v0, v17

    if-eq v14, v0, :cond_3b6

    const/16 v17, 0x27

    move/from16 v0, v17

    if-eq v14, v0, :cond_3b6

    const/16 v17, 0x25

    move/from16 v0, v17

    if-eq v14, v0, :cond_3b6

    const/16 v17, 0x5f

    move/from16 v0, v17

    if-ne v14, v0, :cond_3da

    .line 3274
    :cond_3b6
    if-eqz v8, :cond_11c

    .line 3275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3276
    const/4 v5, 0x1

    .line 3277
    const/4 v4, 0x0

    goto/16 :goto_11c

    .line 3279
    :cond_3da
    const/16 v17, 0x57

    move/from16 v0, v17

    if-eq v14, v0, :cond_3e6

    const/16 v17, 0x56

    move/from16 v0, v17

    if-ne v14, v0, :cond_410

    .line 3281
    :cond_3e6
    if-eqz v8, :cond_11c

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_11c

    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3284
    const/4 v5, 0x1

    .line 3285
    const/4 v4, 0x0

    goto/16 :goto_11c

    .line 3288
    :cond_410
    const/4 v5, 0x1

    goto/16 :goto_11c

    .line 3291
    :cond_413
    const/4 v5, 0x1

    goto/16 :goto_11c

    .line 3300
    .restart local v7       #rate:I
    .restart local v16       #volFloat:F
    :cond_416
    :try_start_416
    const-string v17, "situation=16"
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_418} :catch_41a

    goto/16 :goto_177

    .line 3304
    :catch_41a
    move-exception v3

    .line 3305
    .local v3, e:Ljava/lang/Exception;
    const-string v17, "CallNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CUSTOM_WAITING_TONE: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1a2

    .line 3322
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #rate:I
    .end local v16           #volFloat:F
    :catch_439
    move-exception v3

    .line 3323
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_43a
    const-string v17, "CallNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer stopped: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_204

    .line 3341
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_458
    move-exception v17

    monitor-exit p0
    :try_end_45a
    .catchall {:try_start_43a .. :try_end_45a} :catchall_458

    throw v17

    .line 3100
    nop

    :pswitch_data_45c
    .packed-switch 0x1
        :pswitch_72
        :pswitch_278
        :pswitch_2b5
        :pswitch_2bd
        :pswitch_2f3
        :pswitch_2fb
        :pswitch_303
        :pswitch_30b
        :pswitch_30b
        :pswitch_313
        :pswitch_2c5
        :pswitch_31b
        :pswitch_324
        :pswitch_32c
        :pswitch_53
        :pswitch_334
        :pswitch_33c
    .end packed-switch
.end method

.method public stopTone()V
    .registers 3

    .prologue
    .line 3369
    monitor-enter p0

    .line 3370
    :try_start_1
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 3371
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3373
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3374
    monitor-exit p0

    .line 3375
    return-void

    .line 3374
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
