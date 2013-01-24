.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$HeadsetRingtonePlayer;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final RETURN_ORIGIN_VOLUME:I

.field private final VIB_TIME_IN_RING_AFTER_VIB:I

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallMotion:Lcom/android/phone/CallMotion;

.field private mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field mContext:Landroid/content/Context;

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mCustomVibrationUri:Landroid/net/Uri;

.field private mExtraRinger:Lcom/android/phone/ExtraRinger;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

.field private mIsRingEscalating:Z

.field private mIsRingRepeat:Z

.field private mOriginRingtoneVolume:I

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mRingtoneAfterVib:I

.field mVibrator:Landroid/os/SystemVibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/Ringer;->RETURN_ORIGIN_VOLUME:I

    .line 68
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME_DELAY:I

    .line 69
    iput v1, p0, Lcom/android/phone/Ringer;->INIT_VOLUME:I

    .line 72
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 85
    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 86
    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 88
    iput v2, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    .line 90
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    .line 91
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 92
    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 95
    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    .line 96
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/phone/Ringer;->VIB_TIME_IN_RING_AFTER_VIB:I

    .line 122
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 123
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 124
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    .line 127
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 128
    new-instance v0, Lcom/android/phone/ExtraRinger;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/ExtraRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    .line 130
    :cond_5e
    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .registers 11
    .parameter "string"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 481
    if-nez p1, :cond_6

    move-object v2, v4

    .line 502
    :cond_5
    :goto_5
    return-object v2

    .line 484
    :cond_6
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, temp:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringToLongArray, size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 487
    array-length v5, v3

    if-gtz v5, :cond_2d

    .line 488
    const-string v5, "string is null"

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 489
    goto :goto_5

    .line 492
    :cond_2d
    array-length v5, v3

    new-array v2, v5, [J

    .line 494
    .local v2, ret:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    :try_start_31
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 495
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_62} :catch_65

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 498
    :catch_65
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 500
    goto :goto_5
.end method

.method static synthetic access$1000(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/Ringer;Ljava/lang/String;)[J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/Ringer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/Ringer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/Ringer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/phone/Ringer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method private getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 721
    if-nez p1, :cond_6

    .line 740
    :cond_5
    :goto_5
    return-object v3

    .line 722
    :cond_6
    move-object v1, p1

    .line 723
    .local v1, actualUri:Landroid/net/Uri;
    const-string v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 724
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 726
    :cond_1d
    if-eqz v1, :cond_5

    .line 727
    const/4 v6, 0x0

    .line 728
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 729
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 732
    :cond_3e
    if-eqz v6, :cond_51

    :try_start_40
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 733
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_57

    move-result-object v3

    .line 738
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_51
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 735
    :catch_57
    move-exception v7

    .line 736
    .local v7, e:Ljava/lang/Exception;
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_75

    .line 738
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_75
    move-exception v0

    if-eqz v6, :cond_7b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .registers 5
    .parameter

    .prologue
    .line 110
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 111
    :try_start_3
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_12

    .line 112
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 116
    :goto_e
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 114
    :cond_12
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 117
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private isRingtonePlaying()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 178
    monitor-enter p0

    .line 179
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_e
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_24
    :goto_24
    monitor-exit p0

    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_24

    .line 182
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 744
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "message"
    .parameter "always"

    .prologue
    .line 748
    const-string v0, "Ringer"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 749
    return-void
.end method

.method private makeLooper()V
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_1a

    .line 553
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 554
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 656
    :cond_1a
    return-void
.end method


# virtual methods
.method initRingerContextForIMS(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 146
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method

.method isRinging()Z
    .registers 2

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 169
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method isTTSenabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, driveModeForIncoming:Z
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_21

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_21

    move v0, v1

    .line 339
    :goto_20
    return v0

    :cond_21
    move v0, v2

    .line 335
    goto :goto_20
.end method

.method isValidRingtoneURI(Landroid/net/Uri;)Z
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 659
    const/4 v7, 0x0

    .line 660
    .local v7, returnValue:Z
    if-eqz p1, :cond_51

    .line 661
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 662
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1e

    .line 663
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v7, 0x1

    .line 664
    :cond_1b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 666
    :cond_1e
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 667
    const/4 v7, 0x1

    .line 668
    :cond_2b
    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / uri.getScheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v6           #c:Landroid/database/Cursor;
    :cond_51
    if-nez v7, :cond_6b

    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidRingtoneURI : Invalid URI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_6b
    return v7
.end method

.method isVibrating()Z
    .registers 2

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 193
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method resetRingerContextFromIMS(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 151
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method ring()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 200
    const-string v4, "ring()..."

    invoke-direct {p0, v4, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 202
    monitor-enter p0

    .line 203
    :try_start_b
    const-string v4, "voip_interworking"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 204
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v4

    if-eqz v4, :cond_1b

    monitor-exit p0

    .line 330
    :goto_1a
    return-void

    .line 207
    :cond_1b
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_incoming_notification"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 210
    .local v2, ledNotification:I
    if-lez v2, :cond_41

    .line 211
    const-string v4, "setAttentionLight!"

    invoke-static {v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_de

    .line 213
    :try_start_2f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 214
    iget-object v4, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x1

    const/16 v6, 0xff

    invoke-interface {v4, v5, v6}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_de
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_41} :catch_ec

    .line 223
    :cond_41
    :goto_41
    :try_start_41
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_overturn"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_ef

    .line 225
    .local v1, isEnable:Z
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRingHandler: MOTION_OVERTURN is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 226
    if-eqz v1, :cond_7d

    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-nez v3, :cond_7d

    .line 228
    new-instance v3, Lcom/android/phone/CallMotion;

    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 229
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v3}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    .line 233
    :cond_7d
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 261
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v3

    if-eqz v3, :cond_a4

    iget-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v3, :cond_a4

    .line 263
    new-instance v3, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 264
    const-string v3, "- starting vibrator..."

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 265
    iget-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v3}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 267
    :cond_a4
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_b1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v3, v7, :cond_f2

    .line 274
    :cond_b1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 275
    const-string v3, "skipping ring because volume is zero"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 276
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_db

    iget-object v3, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v3, :cond_db

    .line 277
    const-string v3, "Play Headset ringtone.."

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 278
    new-instance v3, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v3, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 279
    iget-object v3, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->start()V

    .line 281
    :cond_db
    monitor-exit p0

    goto/16 :goto_1a

    .line 329
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isEnable:Z
    .end local v2           #ledNotification:I
    :catchall_de
    move-exception v3

    monitor-exit p0
    :try_end_e0
    .catchall {:try_start_41 .. :try_end_e0} :catchall_de

    throw v3

    .line 216
    .restart local v2       #ledNotification:I
    :cond_e1
    :try_start_e1
    iget-object v4, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x1

    const v6, 0xffffff

    invoke-interface {v4, v5, v6}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_de
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_ea} :catch_ec

    goto/16 :goto_41

    .line 218
    :catch_ec
    move-exception v4

    goto/16 :goto_41

    :cond_ef
    move v1, v3

    .line 223
    goto/16 :goto_50

    .line 283
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #isEnable:Z
    :cond_f2
    const/4 v3, 0x1

    :try_start_f3
    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 284
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 285
    const-string v3, "check_ringtone_repeat"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 286
    const-string v3, "/system/media/audio/ringtones/Beep_once.ogg"

    iget-object v4, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/android/phone/Ringer;->getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 287
    const-string v3, "Ringtone does not repeat"

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 289
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 292
    :cond_119
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 293
    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_14c

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 298
    iget v3, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v3, :cond_145

    .line 299
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v5, 0x1770

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    :goto_134
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isTTSenabled()Z

    move-result v3

    if-eqz v3, :cond_142

    .line 307
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 329
    :cond_142
    :goto_142
    monitor-exit p0

    goto/16 :goto_1a

    .line 301
    :cond_145
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_134

    .line 314
    :cond_14c
    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_179

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delaying ring by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v7, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_142

    .line 326
    :cond_179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_17f
    .catchall {:try_start_f3 .. :try_end_17f} :catchall_de

    goto :goto_142
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 546
    if-eqz p1, :cond_4

    .line 547
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 549
    :cond_4
    return-void
.end method

.method public setCustomVibrationUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 466
    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_35

    .line 467
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    .line 469
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 470
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 471
    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 472
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 473
    new-instance v0, Lcom/android/phone/Ringer$VibratorThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 474
    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 478
    :cond_35
    return-void
.end method

.method shouldVibrate()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 343
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 345
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone_after_vibration"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    .line 347
    iget v4, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v4, :cond_1f

    .line 355
    :cond_1e
    :goto_1e
    return v2

    .line 351
    :cond_1f
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 352
    .local v1, ringerMode:I
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 353
    if-nez v1, :cond_1e

    move v2, v3

    goto :goto_1e

    .line 355
    :cond_2f
    if-eq v1, v2, :cond_1e

    move v2, v3

    goto :goto_1e
.end method

.method stopRing()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 364
    monitor-enter p0

    .line 365
    :try_start_2
    const-string v1, "stopRing()..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a7

    .line 368
    :try_start_8
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_a7
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_aa

    .line 374
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v1, :cond_21

    .line 375
    const-string v1, "- stopRing: cleaning up headsetRingtone thread..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 376
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 377
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 380
    :cond_21
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_95

    .line 382
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 383
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 387
    :cond_37
    const-string v1, "extra_ringer"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 388
    iget-object v1, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    invoke-virtual {v1}, Lcom/android/phone/ExtraRinger;->stopExtraRinger()V

    .line 391
    :cond_44
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 399
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 400
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 410
    .end local v0           #msg:Landroid/os/Message;
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 411
    const-string v1, "- stopRing: cleaning up vibrator thread..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 413
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 418
    :cond_82
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    .line 420
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-eqz v1, :cond_93

    .line 421
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 424
    :cond_93
    monitor-exit p0

    .line 425
    return-void

    .line 402
    :cond_95
    const-string v1, "- stopRing: null mRingHandler!"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 403
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_6e

    .line 406
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_6e

    .line 424
    :catchall_a7
    move-exception v1

    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_f .. :try_end_a9} :catchall_a7

    throw v1

    .line 369
    :catch_aa
    move-exception v1

    goto/16 :goto_f
.end method

.method updateHeadsetRingtoneState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 703
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_10

    .line 718
    :cond_f
    :goto_f
    return-void

    .line 706
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 707
    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v0, :cond_f

    .line 709
    new-instance v0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 710
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->start()V

    goto :goto_f

    .line 713
    :cond_34
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v0, :cond_f

    .line 714
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 715
    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    goto :goto_f
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 140
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method
