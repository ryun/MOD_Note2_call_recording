.class public Lcom/android/phone/CallReminderPlayer;
.super Ljava/lang/Object;
.source "CallReminderPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallReminderPlayer$TTSHandler;
    }
.end annotation


# static fields
.field public static final PLAYMOD:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static final vibPattern:[J


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallState:Lcom/android/internal/telephony/Phone$State;

.field private mContext:Landroid/content/Context;

.field private mDefautSoundUri:Landroid/net/Uri;

.field private mEndAlertOnVoice:Z

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mHandler:Lcom/android/phone/CallReminderPlayer$TTSHandler;

.field private mIsFinishing:Z

.field mIsMute:Z

.field private mIsTTSStream:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mOriginTtsVolume:I

.field private mOriginVoiceCallVolume:I

.field private mPause:Z

.field private mPhoneApp:Lcom/android/phone/PhoneApp;

.field private mPlayMode:I

.field private mSoundPlayer:Landroid/media/MediaPlayer;

.field private mSoundUri:Landroid/net/Uri;

.field private mTtsString:Ljava/lang/String;

.field private mVibPlayer:Landroid/os/SystemVibrator;

.field private mVoicePlayer:Landroid/speech/tts/TextToSpeech;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallReminderPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 101
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/phone/CallReminderPlayer;->PLAYMOD:[I

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/phone/CallReminderPlayer;->vibPattern:[J

    return-void

    .line 101
    nop

    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x11t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 110
    :array_2c
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    .line 47
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 51
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mCallState:Lcom/android/internal/telephony/Phone$State;

    .line 53
    new-instance v0, Lcom/android/phone/CallReminderPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallReminderPlayer$1;-><init>(Lcom/android/phone/CallReminderPlayer;)V

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->map:Ljava/util/HashMap;

    .line 148
    new-instance v0, Lcom/android/phone/CallReminderPlayer$TTSHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallReminderPlayer$TTSHandler;-><init>(Lcom/android/phone/CallReminderPlayer;Lcom/android/phone/CallReminderPlayer$1;)V

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mHandler:Lcom/android/phone/CallReminderPlayer$TTSHandler;

    .line 888
    new-instance v0, Lcom/android/phone/CallReminderPlayer$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallReminderPlayer$6;-><init>(Lcom/android/phone/CallReminderPlayer;)V

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 159
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    .line 160
    iput v2, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    .line 161
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 162
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    .line 163
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 164
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mTtsString:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundUri:Landroid/net/Uri;

    .line 167
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mDefautSoundUri:Landroid/net/Uri;

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mDefautSoundUri:Landroid/net/Uri;

    if-nez v0, :cond_4b

    .line 170
    const-string v0, "/system/media/audio/alarms/Good_Morning.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mDefautSoundUri:Landroid/net/Uri;

    .line 172
    :cond_4b
    iput-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    .line 173
    iput-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mEndAlertOnVoice:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    .line 175
    iput v3, p0, Lcom/android/phone/CallReminderPlayer;->mOriginTtsVolume:I

    .line 176
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 177
    iput v3, p0, Lcom/android/phone/CallReminderPlayer;->mOriginVoiceCallVolume:I

    .line 178
    iput-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mIsTTSStream:Z

    .line 179
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 184
    const-string v0, "CallReminderPlayer"

    const-string v1, "CallReminderPlayer constructor call."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method private SoundPlay()V
    .registers 8

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 396
    const-string v2, "CallReminderPlayer"

    const-string v3, "SoundPlay"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_d0

    iget-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    if-nez v2, :cond_d0

    .line 399
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 401
    :try_start_19
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/phone/CallReminderPlayer$3;

    invoke-direct {v3, p0}, Lcom/android/phone/CallReminderPlayer$3;-><init>(Lcom/android/phone/CallReminderPlayer;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 413
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/CallReminderPlayer;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 414
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 415
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 416
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 418
    iget-boolean v2, p0, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    if-nez v2, :cond_9b

    .line 419
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 424
    :goto_4a
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 426
    .local v1, result:I
    const-string v2, "CallReminderPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result audio focus  :::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-ne v1, v6, :cond_73

    .line 428
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 430
    :cond_73
    const-string v3, "CallReminderPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "melody stream volume current : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1           #result:I
    :cond_9a
    :goto_9a
    return-void

    .line 421
    :cond_9b
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_a2} :catch_a3

    goto :goto_4a

    .line 435
    :catch_a3
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CallReminderPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to play track"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 438
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 440
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 442
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mDefautSoundUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_9a

    .line 445
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d0
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 457
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 459
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 461
    .restart local v1       #result:I
    const-string v2, "CallReminderPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "else result audio focus  :::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-ne v1, v6, :cond_9a

    .line 463
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_9a
.end method

.method private SoundStop()V
    .registers 5

    .prologue
    .line 704
    const-string v1, "CallReminderPlayer"

    const-string v2, "SoundStop"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2b

    .line 708
    :try_start_b
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 709
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 710
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 711
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_2c

    .line 715
    :goto_21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 717
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 719
    :cond_2b
    return-void

    .line 712
    :catch_2c
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private VibratePlay()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 469
    const-string v0, "CallReminderPlayer"

    const-string v1, "VibratePlay"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    if-nez v0, :cond_46

    .line 472
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    .line 475
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/android/phone/CallReminderPlayer;->vibPattern:[J

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 477
    const-string v0, "CallReminderPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibratePlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_45
    :goto_45
    return-void

    .line 479
    :cond_46
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_45

    .line 482
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/android/phone/CallReminderPlayer;->vibPattern:[J

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_45
.end method

.method private VibrateStop()V
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_9

    .line 723
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 724
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVibPlayer:Landroid/os/SystemVibrator;

    .line 725
    return-void
.end method

.method private VoiceStop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 729
    const-string v1, "CallReminderPlayer"

    const-string v2, "VoiceStop"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1f

    .line 733
    :try_start_c
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 735
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 736
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 737
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_1f} :catch_2d

    .line 744
    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    if-ne v1, v3, :cond_25

    .line 745
    iput-boolean v3, p0, Lcom/android/phone/CallReminderPlayer;->mEndAlertOnVoice:Z

    .line 748
    :cond_25
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 749
    return-void

    .line 738
    :catch_2d
    move-exception v0

    .line 739
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CallReminderPlayer"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method static synthetic access$100(Lcom/android/phone/CallReminderPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CallReminderPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallReminderPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallReminderPlayer;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private beepSoundPlay()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 359
    const-string v1, "CallReminderPlayer"

    const-string v2, "beepSoundPlay"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_91

    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    if-nez v1, :cond_91

    .line 362
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 364
    :try_start_17
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/phone/CallReminderPlayer$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallReminderPlayer$2;-><init>(Lcom/android/phone/CallReminderPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 373
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    const-string v3, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 374
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 375
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 376
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const v2, 0x3f19999a

    const v3, 0x3f19999a

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 378
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 379
    const-string v2, "CallReminderPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep stream volume current : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_76} :catch_77

    .line 393
    :cond_76
    :goto_76
    return-void

    .line 384
    :catch_77
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CallReminderPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 388
    .end local v0           #e:Ljava/lang/Exception;
    :cond_91
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_76

    .line 389
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 390
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_76
.end method


# virtual methods
.method public Pause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    .line 321
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_25

    .line 322
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 323
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 324
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mCallState:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mCallState:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_25

    .line 325
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 327
    :cond_25
    invoke-virtual {p0}, Lcom/android/phone/CallReminderPlayer;->Stop()V

    .line 328
    return-void
.end method

.method public Play(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    if-ne v1, v4, :cond_10

    .line 223
    const-string v1, "CallReminderPlayer"

    const-string v2, "Play() - mIsMute is TRUE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/CallReminderPlayer;->Stop()V

    .line 283
    :cond_f
    :goto_f
    return-void

    .line 234
    :cond_10
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mCallState:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_42

    .line 235
    const-string v1, "CallReminderPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallReminderPlayer;->mCallState:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, mAlertMode:I
    if-eq v0, v4, :cond_42

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/CallReminderPlayer;->Stop()V

    goto :goto_f

    .line 250
    .end local v0           #mAlertMode:I
    :cond_42
    const-string v1, "CallReminderPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallReminderPlayer - PlayerMode = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v1, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    if-eqz v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    if-eqz v1, :cond_aa

    .line 252
    :cond_6c
    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    if-eqz v1, :cond_8a

    .line 253
    const-string v1, "CallReminderPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_8a
    iget-boolean v1, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    if-eqz v1, :cond_f

    .line 255
    const-string v1, "CallReminderPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsFinishing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 258
    :cond_aa
    iget v1, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_bf

    .line 259
    const-string v1, "CallReminderPlayer"

    const-string v2, "CallReminderPlayer - SoundPlayer"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v1, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_ce

    .line 262
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->beepSoundPlay()V

    .line 275
    :cond_bf
    :goto_bf
    iget v1, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_f

    .line 276
    rem-int/lit8 v1, p1, 0x4

    if-ne v1, v4, :cond_f

    .line 277
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->VibratePlay()V

    goto/16 :goto_f

    .line 264
    :cond_ce
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->SoundPlay()V

    goto :goto_bf
.end method

.method public Resume(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    .line 332
    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/phone/CallReminderPlayer;->Play(I)V

    .line 334
    :cond_9
    return-void
.end method

.method public Stop()V
    .registers 3

    .prologue
    .line 286
    const-string v0, "CallReminderPlayer"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    if-eqz v0, :cond_1b

    :cond_11
    iget v0, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mPause:Z

    if-nez v0, :cond_1e

    .line 289
    :cond_1b
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->SoundStop()V

    .line 301
    :cond_1e
    iget v0, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_27

    .line 302
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->VibrateStop()V

    .line 305
    :cond_27
    iget v0, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_30

    .line 306
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->VoiceStop()V

    .line 314
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_37

    .line 315
    invoke-direct {p0}, Lcom/android/phone/CallReminderPlayer;->VoiceStop()V

    .line 317
    :cond_37
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/phone/CallReminderPlayer;->registerMotionListener()V

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    .line 790
    return-void
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 71
    sget-object v0, Lcom/android/phone/CallReminderPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/phone/CallReminderPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 74
    :cond_10
    sget-object v0, Lcom/android/phone/CallReminderPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 75
    return-void
.end method

.method public setCallState(Lcom/android/internal/telephony/Phone$State;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 339
    const-string v0, "CallReminderPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer;->mCallState:Lcom/android/internal/telephony/Phone$State;

    .line 341
    return-void
.end method

.method public setIsFinishing()V
    .registers 2

    .prologue
    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallReminderPlayer;->mIsFinishing:Z

    .line 773
    return-void
.end method

.method public setPlayMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 188
    sget-object v0, Lcom/android/phone/CallReminderPlayer;->PLAYMOD:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/android/phone/CallReminderPlayer;->mPlayMode:I

    .line 189
    return-void
.end method

.method public setPlayResource(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .parameter "uri"
    .parameter "tts"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer;->mSoundUri:Landroid/net/Uri;

    .line 193
    iput-object p2, p0, Lcom/android/phone/CallReminderPlayer;->mTtsString:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setVolume(F)V
    .registers 5
    .parameter "nVol"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 198
    const-string v0, "CallReminderPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 202
    :cond_29
    return-void
.end method
