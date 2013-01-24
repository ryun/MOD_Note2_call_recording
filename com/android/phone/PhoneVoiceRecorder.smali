.class public Lcom/android/phone/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static final PHONE_PATH:Ljava/lang/String;

.field public static mIsPreparing:Z

.field public static mIsRecording:Z

.field public static mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field callerName:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field public mCallCard:Lcom/android/phone/CallCard;

.field private mHandler:Landroid/os/Handler;

.field private mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

.field private mStartRecordTime:J

.field mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 52
    sput-boolean v1, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 53
    sput-boolean v1, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "PhoneVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    .line 50
    iput-wide v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 61
    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->callerName:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    .line 74
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 65
    const-string v0, "PhoneVoiceRecorder Create"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 66
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    .line 67
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 68
    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 69
    sput-boolean v3, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 70
    sput-boolean v3, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 71
    iput-wide v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneVoiceRecorder;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneVoiceRecorder;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method public static canStartRecording()Z
    .registers 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private checkAvailableStorage()Z
    .registers 7

    .prologue
    .line 203
    const-wide/32 v2, 0xa00000

    .line 204
    .local v2, LOW_STORAGE_THRESHOLD:J
    const-wide/32 v0, 0x10000000

    .line 206
    .local v0, HIGH_STORAGE_THRESHOLD:J
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_10

    const/4 v4, 0x1

    .line 207
    :goto_f
    return v4

    :cond_10
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_10

    .line 544
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 551
    :goto_f
    return-void

    .line 547
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    .line 548
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/16 v2, -0x1a

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 549
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method private getAvailableStorage()J
    .registers 7

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, storageDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 213
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static isVoiceRecording()Z
    .registers 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 554
    const-string v0, "PhoneVoiceRecorder"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 558
    const-string v0, "PhoneVoiceRecorder"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 559
    return-void
.end method


# virtual methods
.method public StopRecodingIcon()V
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_10

    .line 528
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 530
    :cond_10
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_19

    .line 531
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 533
    :cond_19
    return-void
.end method

.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 173
    const-string v0, "checkMediaScannerRunning()"

    invoke-direct {p0, v0, v10}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 174
    const/4 v8, 0x0

    .line 175
    .local v8, result:Z
    if-nez p1, :cond_c

    move v0, v8

    .line 191
    :goto_b
    return v0

    .line 178
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 181
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_39

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_36

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 186
    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_39} :catch_3b

    :cond_39
    move v0, v8

    .line 191
    goto :goto_b

    .line 188
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_3b
    move-exception v7

    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    move v0, v9

    .line 189
    goto :goto_b
.end method

.method public checkSDCardMount()Z
    .registers 4

    .prologue
    .line 195
    const-string v1, "checkMediaScannerRunning()"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, result:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    return v0
.end method

.method public getStartRecordTime()J
    .registers 3

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide v0
.end method

.method public startRecord()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 116
    const-string v0, "startRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 117
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-nez v0, :cond_72

    .line 119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 120
    const-string v0, "checkMediaScannerRunning failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 121
    const v0, 0x7f0e039a

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 147
    :cond_23
    :goto_23
    return-void

    .line 124
    :cond_24
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkSDCardMount()Z

    move-result v0

    if-nez v0, :cond_36

    .line 125
    const-string v0, "checkSDCardMount failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 126
    const v0, 0x7f0e039c

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    goto :goto_23

    .line 129
    :cond_36
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_48

    .line 130
    const-string v0, "checkAvailableStorage failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 131
    const v0, 0x7f0e0397

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    goto :goto_23

    .line 134
    :cond_48
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    if-eqz v0, :cond_52

    .line 135
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_23

    .line 138
    :cond_52
    sput-boolean v1, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 139
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 140
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->start()V

    .line 141
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 142
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->callerName:Ljava/lang/String;

    goto :goto_23

    .line 145
    :cond_72
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_23
.end method

.method public stopRecord()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 150
    const-string v1, "stopRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 151
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v1, :cond_35

    .line 152
    const-string v1, "stopRecording"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 153
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 154
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0393

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    :goto_33
    iput-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 165
    .end local v0           #msg:Landroid/os/Message;
    :cond_35
    sput-boolean v4, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 166
    sput-boolean v4, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 167
    iput-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->callerName:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void

    .line 158
    :cond_43
    const-string v1, "stopRecording failed"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 159
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0394

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 161
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_33
.end method

.method public updateRecodingIcon()V
    .registers 3

    .prologue
    .line 536
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 537
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    :cond_f
    return-void
.end method
