.class public Lcom/android/phone/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTextToSpeech$1;,
        Lcom/android/phone/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field public static final TTS_DEFAULT_VOL:I

.field private static mInstance:Lcom/android/phone/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

.field private final INVALID_VOLUME_LEVEL:I

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mOriginNotiVolume:I

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 80
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    sput v0, Lcom/android/phone/CallTextToSpeech;->TTS_DEFAULT_VOL:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "TtsId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 51
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 53
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 59
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 62
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->INVALID_VOLUME_LEVEL:I

    .line 64
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 66
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 68
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    .line 72
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 97
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    .line 105
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 108
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    .line 110
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    .line 114
    iput-boolean v2, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 116
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 120
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 121
    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 122
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 124
    iput p2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 125
    new-instance v1, Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 126
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 128
    iget-boolean v1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    .line 129
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    .line 130
    :cond_65
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallTextToSpeech;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/CallTextToSpeech;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallTextToSpeech;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    return-void
.end method

.method private formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "number"

    .prologue
    .line 456
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 457
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 459
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v3, :cond_29

    .line 460
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 461
    .local v0, c:C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 462
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_26

    const/16 v4, 0x30

    if-lt v0, v4, :cond_26

    const/16 v4, 0x39

    if-gt v0, v4, :cond_26

    .line 463
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 459
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 465
    .end local v0           #c:C
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;
    .registers 4
    .parameter "context"
    .parameter "TtsId"

    .prologue
    .line 191
    const-class v1, Lcom/android/phone/CallTextToSpeech;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    if-eqz v0, :cond_c

    .line 192
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 194
    :cond_c
    new-instance v0, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 195
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTtsLocalString(I)Ljava/lang/String;
    .registers 9
    .parameter "resId"

    .prologue
    .line 578
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 579
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, currentLang:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, strings:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    array-length v4, v3

    if-ge v1, v4, :cond_5a

    .line 586
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 587
    aget-object v4, v3, v1

    .line 593
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_3b
    return-object v4

    .line 585
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 591
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_3f
    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 593
    :cond_5a
    const/4 v4, 0x0

    goto :goto_3b
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .registers 9
    .parameter "currentEngine"

    .prologue
    .line 562
    if-eqz p1, :cond_31

    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_31

    .line 563
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 565
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 569
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 571
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 575
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_31
    return-void
.end method

.method private resetVolumeForTts(I)V
    .registers 7
    .parameter "TtsId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 524
    packed-switch p1, :pswitch_data_4e

    .line 551
    :cond_5
    :goto_5
    return-void

    .line 527
    :pswitch_6
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    if-eq v0, v3, :cond_15

    .line 528
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 529
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 532
    :cond_15
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    if-eq v0, v3, :cond_5

    .line 533
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 534
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    goto :goto_5

    .line 540
    :pswitch_24
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    if-eq v0, v3, :cond_5

    .line 541
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 542
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 544
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    goto :goto_5

    .line 524
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private setVolumeForTts(I)V
    .registers 9
    .parameter "TtsId"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    const/16 v0, 0xf

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 478
    packed-switch p1, :pswitch_data_9a

    .line 520
    :cond_a
    :goto_a
    return-void

    .line 481
    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 482
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 485
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_52

    .line 486
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    if-le v1, v0, :cond_4b

    .line 488
    .local v0, ttsVolume:I
    :goto_29
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-ge v1, v2, :cond_33

    .line 489
    const/16 v0, 0x8

    .line 491
    :cond_33
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 500
    .end local v0           #ttsVolume:I
    :goto_38
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_58

    .line 501
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_a

    .line 486
    :cond_4b
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    goto :goto_29

    .line 493
    :cond_52
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_38

    .line 503
    :cond_58
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_a

    .line 505
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_a

    .line 512
    :pswitch_6f
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    .line 513
    const-string v1, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeForTts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 514
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v5, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_a

    .line 478
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method

.method private speakTts(I)V
    .registers 14
    .parameter "TtsId"

    .prologue
    .line 216
    const-string v9, "CallTextToSpeech"

    const-string v10, "Getting into speak TTS"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 218
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v9, :cond_18

    iget-boolean v9, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v9, :cond_18

    .line 219
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 453
    :cond_18
    :goto_18
    return-void

    .line 224
    :cond_19
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    const-string v9, "feature_hktw"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 225
    :cond_29
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, currentEngine:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 228
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    .line 230
    :cond_3b
    new-instance v9, Landroid/speech/tts/TtsEngines;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 231
    invoke-direct {p0, v2}, Lcom/android/phone/CallTextToSpeech;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 232
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v3

    .line 234
    .local v3, currentLocale:Ljava/util/Locale;
    if-nez v3, :cond_76

    .line 235
    const-string v9, "CallTextToSpeech"

    const-string v10, "mTts.getLanguage() returns null"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 237
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v4

    .line 238
    .local v4, languageResult:I
    const/4 v9, -0x2

    if-eq v4, v9, :cond_67

    const/4 v9, -0x1

    if-ne v4, v9, :cond_76

    .line 240
    :cond_67
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 241
    const-string v9, "CallTextToSpeech"

    const-string v10, "TTS cannot use system language, using Locale.US instead"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 246
    .end local v2           #currentEngine:Ljava/lang/String;
    .end local v3           #currentLocale:Ljava/util/Locale;
    .end local v4           #languageResult:I
    :cond_76
    const/4 v1, 0x0

    .line 247
    .local v1, TtsCallerInfo:Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v5, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_3d2

    goto :goto_18

    .line 252
    :pswitch_80
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_18

    .line 254
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 259
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 260
    if-nez v1, :cond_c2

    .line 261
    const-string v9, "CallTextToSpeech"

    const-string v10, "TTS_IDLE : callerinfo is null"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_18

    .line 267
    :cond_c2
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 268
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_ce
    :goto_ce
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 281
    .local v8, values:[Ljava/lang/String;
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e4

    const-string v9, "feature_hktw"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_127

    .line 282
    :cond_e4
    const v9, 0x7f080053

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, retString:Ljava/lang/String;
    if-eqz v6, :cond_117

    .line 284
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .end local v6           #retString:Ljava/lang/String;
    .local v0, TTSCombinedString:Ljava/lang/CharSequence;
    :goto_f7
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 295
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 273
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v8           #values:[Ljava/lang/String;
    :cond_10a
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ce

    .line 274
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 286
    .restart local v6       #retString:Ljava/lang/String;
    .restart local v8       #values:[Ljava/lang/String;
    :cond_117
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v10, 0x7f0e03ca

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    goto :goto_f7

    .line 290
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v6           #retString:Ljava/lang/String;
    :cond_127
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v10, 0x7f0e03ca

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    goto :goto_f7

    .line 302
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v8           #values:[Ljava/lang/String;
    :pswitch_137
    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 303
    iget v9, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 305
    const/4 v0, 0x0

    .line 306
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 312
    if-nez v1, :cond_17a

    .line 313
    const-string v9, "CallTextToSpeech"

    const-string v10, "TTS_DURING_CALL : callerinfo is null"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_18

    .line 318
    :cond_17a
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v9

    iget v9, v9, Lcom/android/phone/RcsShare$SessionState;->mType:I

    invoke-static {v9}, Lcom/android/phone/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/phone/RcsTransferConstants$SessionType;

    move-result-object v7

    .line 319
    .local v7, sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v1, v7}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 320
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 321
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 325
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v7           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :pswitch_1a3
    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 326
    iget v9, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 328
    const/4 v0, 0x0

    .line 329
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    sget-object v11, Lcom/android/phone/RcsTransferConstants$SessionType;->IM:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v9, v10, v11}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 335
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 336
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 340
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    :pswitch_1f3
    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 341
    iget v9, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 343
    const/4 v0, 0x0

    .line 344
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    sget-object v11, Lcom/android/phone/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v9, v10, v11}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 350
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 351
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 355
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    :pswitch_243
    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 356
    iget v9, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 358
    const/4 v0, 0x0

    .line 359
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    sget-object v11, Lcom/android/phone/RcsTransferConstants$SessionType;->IM_GROUP:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v9, v10, v11}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 365
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 366
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 374
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    :pswitch_293
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_18

    .line 375
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 377
    const/4 v0, 0x0

    .line 378
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 384
    if-nez v1, :cond_2da

    .line 385
    const-string v9, "CallTextToSpeech"

    const-string v10, "TTS_DURING_CALL : callerinfo is null"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_18

    .line 391
    :cond_2da
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_322

    .line 392
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    :cond_2e6
    :goto_2e6
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 405
    .restart local v8       #values:[Ljava/lang/String;
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2fc

    const-string v9, "feature_hktw"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33f

    .line 406
    :cond_2fc
    const v9, 0x7f080053

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v6

    .line 407
    .restart local v6       #retString:Ljava/lang/String;
    if-eqz v6, :cond_32f

    .line 408
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .end local v6           #retString:Ljava/lang/String;
    :goto_30f
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 419
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 397
    .end local v8           #values:[Ljava/lang/String;
    :cond_322
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2e6

    .line 398
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e6

    .line 410
    .restart local v6       #retString:Ljava/lang/String;
    .restart local v8       #values:[Ljava/lang/String;
    :cond_32f
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v10, 0x7f0e03ca

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_30f

    .line 414
    .end local v6           #retString:Ljava/lang/String;
    :cond_33f
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v10, 0x7f0e03ca

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_30f

    .line 425
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v8           #values:[Ljava/lang/String;
    :pswitch_34f
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_3b2

    .line 426
    iget v9, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 428
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :goto_365
    const-string v9, "utteranceId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS ended : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_38f

    const-string v9, "feature_hktw"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c6

    .line 436
    :cond_38f
    const v9, 0x7f080054

    invoke-direct {p0, v9}, Lcom/android/phone/CallTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v6

    .line 437
    .restart local v6       #retString:Ljava/lang/String;
    if-eqz v6, :cond_3ba

    .line 438
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 445
    .end local v6           #retString:Ljava/lang/String;
    :goto_3a1
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 446
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v9, v10}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_18

    .line 431
    :cond_3b2
    const-string v9, "streamType"

    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_365

    .line 440
    .restart local v6       #retString:Ljava/lang/String;
    :cond_3ba
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v10, 0x7f0e01a3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    goto :goto_3a1

    .line 443
    .end local v6           #retString:Ljava/lang/String;
    :cond_3c6
    iget-object v9, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v10, 0x7f0e01a3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    goto :goto_3a1

    .line 249
    :pswitch_data_3d2
    .packed-switch 0x1
        :pswitch_80
        :pswitch_293
        :pswitch_34f
        :pswitch_137
        :pswitch_1a3
        :pswitch_243
        :pswitch_1f3
    .end packed-switch
.end method


# virtual methods
.method public IsSpeakingTts()Z
    .registers 3

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, IsSpeakingTts:Z
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_e

    .line 207
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 208
    const/4 v0, 0x1

    .line 211
    :cond_e
    return v0
.end method

.method protected destroy()V
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_f

    .line 555
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 557
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 559
    :cond_f
    return-void
.end method

.method public stopTts()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_11

    .line 470
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 471
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    .line 472
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->destroy()V

    .line 474
    :cond_11
    return-void
.end method
