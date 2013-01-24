.class public Lcom/android/phone/VE_ContentManager;
.super Ljava/lang/Object;
.source "VE_ContentManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static DOWNLOAD_PATH:Ljava/lang/String;

.field private static MAX_MEMORY:J

.field private static _VE_ContentManager:Lcom/android/phone/VE_ContentManager;


# instance fields
.field private final CONTENT_HEIGHT:I

.field private final CONTENT_WIDTH:I

.field private ExitProgram:Z

.field private PROVIDE_MEMORY:J

.field private buffering_Thread:Ljava/lang/Runnable;

.field private download_Content_Runnable:Ljava/lang/Runnable;

.field private getDownloadContentSize_Runnable:Ljava/lang/Runnable;

.field private isBufferingThread_Run:Z

.field private isDownloadThread_Run:Z

.field private isEndBufferingThread_Run:Z

.field private isEndPlayThread_Run:Z

.field private isFileExists:Z

.field private isIncallscreenReady:Z

.field private isOnPause:Z

.field private isPlayThread_Run:Z

.field private isStopPlayContent:Z

.field private mAMF_Player:Lcom/android/phone/AMF_Player;

.field private mAmf_Viewer:Landroid/widget/ImageView;

.field private mAudioMgr:Landroid/media/AudioManager;

.field public mBitmapData:Landroid/graphics/Bitmap;

.field private mBuffering_lop_i:I

.field private mClass_State:I

.field private mContentFormat:Ljava/lang/String;

.field private mDownloadFile_Size:I

.field private mDownloadUrl:Ljava/lang/String;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHttpcon:Ljava/net/HttpURLConnection;

.field private mIsPlayerCompleted:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhoneAppContext:Landroid/content/Context;

.field private mPhoneAppHandler:Landroid/os/Handler;

.field private mPlay_lop_i:I

.field private mSaveFileName:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUsed_Memory:J

.field private mVideoView:Landroid/widget/VideoView;

.field private playing_Thread:Ljava/lang/Runnable;

.field private ve_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    const-string v0, "/data/ve/"

    sput-object v0, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 99
    const-wide/32 v0, 0x4e2000

    sput-wide v0, Lcom/android/phone/VE_ContentManager;->MAX_MEMORY:J

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/phone/VE_ContentManager;->CONTENT_WIDTH:I

    .line 87
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/phone/VE_ContentManager;->CONTENT_HEIGHT:I

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    .line 153
    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    .line 199
    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    .line 201
    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    .line 205
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 316
    new-instance v0, Lcom/android/phone/VE_ContentManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$1;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    .line 585
    new-instance v0, Lcom/android/phone/VE_ContentManager$2;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$2;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->getDownloadContentSize_Runnable:Ljava/lang/Runnable;

    .line 694
    new-instance v0, Lcom/android/phone/VE_ContentManager$3;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$3;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->download_Content_Runnable:Ljava/lang/Runnable;

    .line 882
    new-instance v0, Lcom/android/phone/VE_ContentManager$4;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$4;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->buffering_Thread:Ljava/lang/Runnable;

    .line 896
    new-instance v0, Lcom/android/phone/VE_ContentManager$5;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$5;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->playing_Thread:Ljava/lang/Runnable;

    .line 268
    const-string v0, "VE:"

    invoke-static {v2, v0}, Lcom/android/phone/VE_Log;->set_LogEnable(ZLjava/lang/String;)V

    .line 269
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "VE_ContentManager()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VE_ContentManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->getDownloadContentSize_Runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->initBuffer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->removeUnusualContent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenMediaError()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->start_Play_SKM()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->start_Play_AM3()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->start_Play_JPG()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->ExitProgram:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/VE_ContentManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/VE_ContentManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/VE_ContentManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/VE_ContentManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/VE_ContentManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/VE_ContentManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/VE_ContentManager;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->check_FreeMemory()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/VE_ContentManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isOnPause:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isOnPause:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->doCheck()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/VE_ContentManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->getDownloadContentSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/phone/VE_ContentManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isFileExists:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->download_Content()V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/phone/VE_ContentManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/VE_ContentManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/VE_ContentManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->sleep(I)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/phone/VE_ContentManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->download_Content_Runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/phone/VE_ContentManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/phone/VE_ContentManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    return p1
.end method

.method static synthetic access$4008(Lcom/android/phone/VE_ContentManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/VE_ContentManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->removeContent(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/VE_ContentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->initAmfPlayer()V

    return-void
.end method

.method private check_FreeMemory()V
    .registers 5

    .prologue
    .line 712
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "check_FreeMemory()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    iget v2, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7d000

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 715
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 718
    :goto_1f
    return-void

    .line 717
    :cond_20
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f
.end method

.method private deleteContentFile(Ljava/lang/String;)Z
    .registers 8
    .parameter "filepath"

    .prologue
    .line 842
    const/4 v2, 0x3

    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteContentFile("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 845
    :try_start_1f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_29

    move-result v2

    .line 851
    .end local v1           #fp:Ljava/io/File;
    :goto_28
    return v2

    .line 847
    :catch_29
    move-exception v0

    .line 848
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 851
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private doCheck()V
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/16 v5, 0x63

    const/4 v4, 0x5

    .line 274
    const-string v1, "VE_ContentManager"

    const-string v2, "doCheck()"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    .line 278
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 279
    const-string v1, "VE_ContentManager"

    const-string v2, "download url is null"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_1b
    return-void

    .line 282
    :cond_1c
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 283
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, format:Ljava/lang/String;
    const-string v1, "amf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "am3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "skm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 285
    :cond_5c
    const-string v1, "VE_ContentManager"

    const-string v2, "supported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/VE_ContentManager;->ExitProgram:Z

    .line 309
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->isContentExist(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_bc

    .line 310
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b

    .line 287
    :cond_77
    const-string v1, "VE_ContentManager"

    const-string v2, "unsupported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_1b

    .line 291
    .end local v0           #format:Ljava/lang/String;
    :cond_82
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 292
    const-string v0, "amf"

    .line 293
    .restart local v0       #format:Ljava/lang/String;
    const-string v1, "amf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "am3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 294
    :cond_9c
    const-string v1, "VE_ContentManager"

    const-string v2, "supported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 296
    :cond_a4
    const-string v1, "VE_ContentManager"

    const-string v2, "unsupported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto/16 :goto_1b

    .line 301
    .end local v0           #format:Ljava/lang/String;
    :cond_b0
    const-string v1, "VE_ContentManager"

    const-string v2, "unknown feature"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto/16 :goto_1b

    .line 312
    .restart local v0       #format:Ljava/lang/String;
    :cond_bc
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b
.end method

.method private download_Content()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v9, 0x3

    const-string v10, "VE_ContentManager"

    const-string v11, "download_Content()"

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 616
    const/16 v9, 0x1f4

    invoke-direct {p0, v9}, Lcom/android/phone/VE_ContentManager;->sleep(I)V

    .line 618
    const/4 v3, 0x0

    .line 619
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 620
    .local v6, os:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, savename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 624
    .local v0, TotalReadLen:I
    :try_start_25
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 625
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_168
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_35} :catch_b5
    .catch Ljava/net/SocketTimeoutException; {:try_start_25 .. :try_end_35} :catch_d8
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_35} :catch_fc
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_35} :catch_120
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_144

    .line 627
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v7, os:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 628
    .local v4, nReadLen:I
    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 630
    .local v5, navailable:I
    if-lez v5, :cond_57

    .line 631
    new-array v1, v5, [B

    .line 633
    .local v1, buff:[B
    :goto_3e
    iget-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_57

    .line 634
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 636
    if-lez v4, :cond_4f

    .line 637
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 638
    add-int/2addr v0, v4

    goto :goto_3e

    .line 640
    :cond_4f
    const/4 v9, 0x3

    const-string v10, "VE_ContentManager"

    const-string v11, "End Download"

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_1d2
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_57} :catch_1e5
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_57} :catch_1e1
    .catch Ljava/net/MalformedURLException; {:try_start_36 .. :try_end_57} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_57} :catch_1d9
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_57} :catch_1d5

    .line 657
    .end local v1           #buff:[B
    :cond_57
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v7, :cond_5f

    .line 661
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_5f
    if-eqz v3, :cond_64

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_64} :catch_b0

    .line 668
    :cond_64
    :goto_64
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_1e9

    .line 669
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    move-object v6, v7

    .line 674
    .end local v4           #nReadLen:I
    .end local v5           #navailable:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_71
    :goto_71
    iget-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_191

    .line 675
    iget v9, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    if-ge v0, v9, :cond_188

    .line 676
    const/4 v9, 0x5

    const-string v10, "VE_ContentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TotalReadLen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") < mDownloadFile_Size("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x72

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    :goto_ac
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    .line 692
    :goto_af
    return-void

    .line 664
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v4       #nReadLen:I
    .restart local v5       #navailable:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_b0
    move-exception v2

    .line 665
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 646
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #nReadLen:I
    .end local v5           #navailable:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_b5
    move-exception v2

    .line 647
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_b6
    :try_start_b6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_168

    .line 657
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v6, :cond_c1

    .line 661
    :try_start_be
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_c1
    if-eqz v3, :cond_c6

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c6} :catch_d3

    .line 668
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_c6
    :goto_c6
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_71

    .line 669
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto :goto_71

    .line 664
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_d3
    move-exception v2

    .line 665
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6

    .line 648
    .end local v2           #e:Ljava/io/IOException;
    :catch_d8
    move-exception v2

    .line 649
    .local v2, e:Ljava/net/SocketTimeoutException;
    :goto_d9
    :try_start_d9
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_168

    .line 657
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v6, :cond_e4

    .line 661
    :try_start_e1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_e4
    if-eqz v3, :cond_e9

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e9} :catch_f7

    .line 668
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :cond_e9
    :goto_e9
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_71

    .line 669
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_71

    .line 664
    .restart local v2       #e:Ljava/net/SocketTimeoutException;
    :catch_f7
    move-exception v2

    .line 665
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e9

    .line 650
    .end local v2           #e:Ljava/io/IOException;
    :catch_fc
    move-exception v2

    .line 651
    .local v2, e:Ljava/net/MalformedURLException;
    :goto_fd
    :try_start_fd
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_168

    .line 657
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v6, :cond_108

    .line 661
    :try_start_105
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_108
    if-eqz v3, :cond_10d

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10d} :catch_11b

    .line 668
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_10d
    :goto_10d
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_71

    .line 669
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_71

    .line 664
    .restart local v2       #e:Ljava/net/MalformedURLException;
    :catch_11b
    move-exception v2

    .line 665
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10d

    .line 652
    .end local v2           #e:Ljava/io/IOException;
    :catch_120
    move-exception v2

    .line 653
    .restart local v2       #e:Ljava/io/IOException;
    :goto_121
    :try_start_121
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_168

    .line 657
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v6, :cond_12c

    .line 661
    :try_start_129
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_12c
    if-eqz v3, :cond_131

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_131} :catch_13f

    .line 668
    :cond_131
    :goto_131
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_71

    .line 669
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_71

    .line 664
    :catch_13f
    move-exception v2

    .line 665
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_131

    .line 654
    .end local v2           #e:Ljava/io/IOException;
    :catch_144
    move-exception v2

    .line 655
    .local v2, e:Ljava/lang/Exception;
    :goto_145
    :try_start_145
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_168

    .line 657
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v6, :cond_150

    .line 661
    :try_start_14d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_150
    if-eqz v3, :cond_155

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_155} :catch_163

    .line 668
    .end local v2           #e:Ljava/lang/Exception;
    :cond_155
    :goto_155
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_71

    .line 669
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_71

    .line 664
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_163
    move-exception v2

    .line 665
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_155

    .line 657
    .end local v2           #e:Ljava/io/IOException;
    :catchall_168
    move-exception v9

    :goto_169
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 660
    if-eqz v6, :cond_171

    .line 661
    :try_start_16e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 662
    :cond_171
    if-eqz v3, :cond_176

    .line 663
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_176} :catch_183

    .line 668
    :cond_176
    :goto_176
    iget-object v10, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_182

    .line 669
    iget-object v10, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    :cond_182
    throw v9

    .line 664
    :catch_183
    move-exception v2

    .line 665
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_176

    .line 680
    .end local v2           #e:Ljava/io/IOException;
    :cond_188
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x73

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_ac

    .line 684
    :cond_191
    iget v9, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    if-ge v0, v9, :cond_1c9

    .line 685
    const/4 v9, 0x5

    const-string v10, "VE_ContentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TotalReadLen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") < mDownloadFile_Size("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x6b

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_af

    .line 689
    :cond_1c9
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x6a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_af

    .line 657
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v4       #nReadLen:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catchall_1d2
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto :goto_169

    .line 654
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_1d5
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_145

    .line 652
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_1d9
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_121

    .line 650
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_1dd
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_fd

    .line 648
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_1e1
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_d9

    .line 646
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_1e5
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_b6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #navailable:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :cond_1e9
    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_71
.end method

.method private getDownloadContentSize()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 562
    const/4 v1, 0x3

    const-string v3, "VE_ContentManager"

    const-string v4, "getDownloadContentSize()"

    invoke-static {v1, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    :try_start_9
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    .line 566
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 567
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 569
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3b

    .line 570
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_35
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_35} :catch_37
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_35} :catch_3f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_35} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_35} :catch_49

    move-result v1

    .line 582
    :goto_36
    return v1

    .line 571
    :catch_37
    move-exception v0

    .line 572
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 581
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_3b
    :goto_3b
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    move v1, v2

    .line 582
    goto :goto_36

    .line 573
    :catch_3f
    move-exception v0

    .line 574
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3b

    .line 575
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_44
    move-exception v0

    .line 576
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 577
    .end local v0           #e:Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3b
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 936
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    if-nez v0, :cond_b

    .line 937
    new-instance v0, Lcom/android/phone/VE_ContentManager;

    invoke-direct {v0}, Lcom/android/phone/VE_ContentManager;-><init>()V

    sput-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    .line 940
    :cond_b
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    iget-object v0, v0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/VE_ContentManager;
    .registers 1

    .prologue
    .line 944
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    if-nez v0, :cond_b

    .line 945
    new-instance v0, Lcom/android/phone/VE_ContentManager;

    invoke-direct {v0}, Lcom/android/phone/VE_ContentManager;-><init>()V

    sput-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    .line 948
    :cond_b
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    return-object v0
.end method

.method private initAmfPlayer()V
    .registers 13

    .prologue
    const/16 v11, 0x71

    const/16 v10, 0x6e

    const/4 v9, 0x3

    .line 770
    const-string v5, "VE_ContentManager"

    const-string v6, "initAmfPlayer()"

    invoke-static {v9, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    const-string v6, "skm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chmod 666 "

    invoke-static {v5, v6}, Lcom/android/phone/VE_File;->set_FileAuthority(Ljava/lang/String;Ljava/lang/String;)Z

    .line 774
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    :goto_35
    return-void

    .line 775
    :cond_36
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4a

    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 776
    :cond_4a
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v6, 0x75

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 778
    :cond_52
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    if-nez v5, :cond_5d

    .line 779
    new-instance v5, Lcom/android/phone/AMF_Player;

    invoke-direct {v5}, Lcom/android/phone/AMF_Player;-><init>()V

    iput-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    .line 781
    :cond_5d
    const/4 v2, 0x0

    .line 783
    .local v2, error:I
    iget-boolean v5, p0, Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z

    if-eqz v5, :cond_8d

    iget-boolean v5, p0, Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z

    if-eqz v5, :cond_8d

    .line 784
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf0

    const/16 v8, 0xb4

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/phone/AMF_Player;->init_player(Ljava/lang/String;II)I

    move-result v2

    .line 789
    :goto_85
    if-gez v2, :cond_8f

    .line 790
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 787
    :cond_8d
    const/4 v2, -0x1

    goto :goto_85

    .line 792
    :cond_8f
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v5}, Lcom/android/phone/AMF_Player;->get_AmfHandle()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mtelo/amf/AmfCodec;->AMFGetClipHandle(II)I

    move-result v0

    .line 793
    .local v0, clipHandle:I
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v5}, Lcom/android/phone/AMF_Player;->get_AmfHandle()I

    move-result v5

    invoke-static {v5, v0}, Lcom/mtelo/amf/AmfCodec;->AMFGetClipMimeType(II)I

    move-result v3

    .line 795
    .local v3, mimeType:I
    if-ne v3, v9, :cond_103

    .line 796
    sget-object v4, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 797
    .local v4, path:Ljava/lang/String;
    const-string v5, "temp"

    iput-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    .line 798
    const-string v5, "media"

    iput-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    :try_start_c3
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v5}, Lcom/android/phone/AMF_Player;->get_AmfHandle()I

    move-result v5

    const-string v6, "EUC-KR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/mtelo/amf/AmfCodec;->AMFGetClipMedia(II[B)I
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d2} :catch_dc

    move-result v2

    .line 809
    :goto_d3
    if-gez v2, :cond_e2

    .line 810
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_35

    .line 804
    :catch_dc
    move-exception v1

    .line 805
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    const/4 v2, -0x1

    goto :goto_d3

    .line 812
    .end local v1           #e:Ljava/lang/Exception;
    :cond_e2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chmod 666 "

    invoke-static {v5, v6}, Lcom/android/phone/VE_File;->set_FileAuthority(Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_35

    .line 817
    .end local v4           #path:Ljava/lang/String;
    :cond_103
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_35
.end method

.method private initBuffer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 874
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    if-eqz v0, :cond_10

    .line 875
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/AMF_Player;->Put_FrameToBuffer(II)I

    .line 877
    iput v2, p0, Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I

    .line 878
    iput v2, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    .line 880
    :cond_10
    return-void
.end method

.method private insertContentDB(Ljava/lang/String;I)V
    .registers 8
    .parameter "contentname"
    .parameter "contentsize"

    .prologue
    const/4 v4, 0x3

    .line 721
    const-string v0, "VE_ContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContentDB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 724
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_used_memory"

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 726
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 728
    const-string v0, "VE_ContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update used memory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method private isContentExist(Ljava/lang/String;)Z
    .registers 10
    .parameter "downloadurl"

    .prologue
    const/4 v7, 0x3

    .line 513
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isContentExist("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, filesize:I
    const/4 v2, 0x0

    .line 518
    .local v2, isExists:Z
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    .line 520
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 521
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    .line 525
    :goto_49
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 526
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_used_memory"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 528
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mUsed_Memory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    if-lez v0, :cond_e5

    .line 532
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_af

    .line 535
    const/4 v2, 0x1

    .line 558
    .end local v1           #fp:Ljava/io/File;
    :cond_a9
    :goto_a9
    return v2

    .line 523
    :cond_aa
    const-string v3, "amf"

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    goto :goto_49

    .line 539
    .restart local v1       #fp:Ljava/io/File;
    :cond_af
    iget-wide v3, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 541
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_used_memory"

    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 543
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB have data, but file not in the DIR. update mUsed_Memory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 550
    .end local v1           #fp:Ljava/io/File;
    :cond_e5
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    .line 552
    if-eqz v2, :cond_a9

    .line 553
    const/4 v2, 0x0

    .line 554
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isFileExists:Z

    goto :goto_a9
.end method

.method private playRingtone()V
    .registers 5

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    .line 856
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v0}, Lcom/android/phone/AMF_Player;->isHaveBGM()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 857
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "have sound content"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 860
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 861
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v3}, Lcom/android/phone/AMF_Player;->get_BgmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 865
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 871
    :cond_6e
    :goto_6e
    return-void

    .line 867
    :cond_6f
    const/4 v0, 0x5

    const-string v1, "VE_ContentManager"

    const-string v2, "ringer is not ringing"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6e
.end method

.method private removeContent(I)V
    .registers 11
    .parameter "needsize"

    .prologue
    const/4 v8, 0x3

    .line 732
    const-string v5, "VE_ContentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeContent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v3, 0x0

    .local v3, nremoved_size:I
    const/4 v2, 0x0

    .line 736
    .local v2, nfilesize:I
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 738
    .local v4, ve_map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_af

    .line 739
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    .local v0, filename:Ljava/lang/String;
    const-string v5, "key_used_memory"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 741
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "0"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 743
    if-lez v2, :cond_35

    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 745
    const-string v5, "VE_ContentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file delete faild "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 747
    :cond_89
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    add-int/2addr v3, v2

    .line 750
    if-le v3, p1, :cond_35

    .line 760
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_91
    :goto_91
    if-lez v3, :cond_a2

    .line 761
    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v7, v3

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 762
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_used_memory"

    iget-wide v7, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 765
    :cond_a2
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 766
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v6, 0x68

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    return-void

    .line 757
    :cond_af
    const-string v5, "VE_ContentManager"

    const-string v6, "ve_map.isEmpty()"

    invoke-static {v8, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_91
.end method

.method private removeUnusualContent()V
    .registers 6

    .prologue
    const/4 v2, 0x5

    .line 1021
    const-string v0, "VE_ContentManager"

    const-string v1, "removeUnusualContent()"

    invoke-static {v2, v0, v1}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1025
    :try_start_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1026
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1029
    iget-wide v1, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v3, v0

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 1030
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1031
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_used_memory"

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1032
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1042
    :goto_6d
    return-void

    .line 1034
    :cond_6e
    const/4 v0, 0x5

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8f} :catch_90

    goto :goto_6d

    .line 1039
    :catch_90
    move-exception v0

    .line 1040
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6d

    .line 1037
    :cond_95
    const/4 v0, 0x5

    :try_start_96
    const-string v1, "VE_ContentManager"

    const-string v2, "there is no file to delete"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_90

    goto :goto_6d
.end method

.method private sendMsgToIncallscreenMediaError()V
    .registers 4

    .prologue
    .line 837
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "sendMsgToIncallscreenMediaError()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppHandler:Landroid/os/Handler;

    const/16 v1, 0x11f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 839
    return-void
.end method

.method private sendMsgToIncallscreenReadyToPlay()V
    .registers 4

    .prologue
    .line 824
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "sendMsgToIncallscreenReadyToPlay()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->ExitProgram:Z

    if-nez v0, :cond_14

    .line 827
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppHandler:Landroid/os/Handler;

    const/16 v1, 0x11ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    :goto_13
    return-void

    .line 829
    :cond_14
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1d

    .line 830
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 832
    :cond_1d
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_13
.end method

.method private set_Class_State(I)V
    .registers 2
    .parameter "s"

    .prologue
    .line 956
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mClass_State:I

    .line 957
    return-void
.end method

.method private sleep(I)V
    .registers 5
    .parameter "ms"

    .prologue
    .line 929
    int-to-long v1, p1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    .line 933
    :goto_4
    return-void

    .line 930
    :catch_5
    move-exception v0

    .line 931
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method private start_Play_AM3()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 976
    const-string v1, "VE_ContentManager"

    const-string v2, "start_Play_AM3()"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->getVisualExpressionView()Landroid/view/View;

    move-result-object v0

    .line 978
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_24

    .line 979
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    .line 980
    :cond_24
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    if-eqz v1, :cond_57

    .line 981
    const-string v1, "VE_ContentManager"

    const-string v2, "AMF_Viewer is Finish Inflate"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 983
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 985
    iput-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    .line 986
    iput-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    .line 987
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->playing_Thread:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 988
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->buffering_Thread:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 989
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->playRingtone()V

    .line 994
    :goto_56
    return-void

    .line 991
    :cond_57
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "AMF_Viewer is Not Finish Inflate"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 992
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_56
.end method

.method private start_Play_JPG()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 960
    const-string v1, "VE_ContentManager"

    const-string v2, "start_Play_JPG()"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->getVisualExpressionView()Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_23

    .line 963
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    .line 964
    :cond_23
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    if-eqz v1, :cond_59

    .line 965
    const-string v1, "VE_ContentManager"

    const-string v2, "JPG_Viewer is Finish Inflate"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 967
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 973
    :goto_58
    return-void

    .line 970
    :cond_59
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "JPG_Viewer is Not Finish Inflate"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 971
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_58
.end method

.method private start_Play_SKM()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 997
    const/4 v1, 0x4

    const-string v2, "VE_ContentManager"

    const-string v3, "start_Play_SKM()"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->getVisualExpressionView()Landroid/view/View;

    move-result-object v0

    .line 999
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_87

    .line 1000
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    if-nez v1, :cond_5d

    .line 1001
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    .line 1002
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1003
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1005
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1012
    :goto_51
    iput-boolean v4, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 1013
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v2, 0x12c

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1018
    :goto_5c
    return-void

    .line 1007
    :cond_5d
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1009
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1010
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_51

    .line 1015
    :cond_87
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "parentView is null"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1016
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_5c
.end method


# virtual methods
.method public get_Class_State()I
    .registers 2

    .prologue
    .line 952
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mClass_State:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "msghandle"
    .parameter "downloadurl"

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/VE_ContentManager;->get_Class_State()I

    move-result v2

    .line 213
    .local v2, nState:I
    const/16 v3, 0x66

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x72

    if-eq v2, v3, :cond_2a

    if-eq v2, v8, :cond_2a

    const/16 v3, 0x74

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x75

    if-eq v2, v3, :cond_2a

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_c5

    .line 228
    :cond_2a
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    if-nez v3, :cond_108

    .line 231
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppContext:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppHandler:Landroid/os/Handler;

    .line 233
    iput-object p3, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    .line 235
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 236
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    .line 237
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    .line 238
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isOnPause:Z

    .line 239
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z

    .line 240
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isFileExists:Z

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/android/phone/VE_File;->get_InternalFreeMemory()J

    move-result-wide v0

    .line 246
    .local v0, InternalFreeMemory:J
    sget-wide v3, Lcom/android/phone/VE_ContentManager;->MAX_MEMORY:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_103

    .line 247
    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    .line 252
    :goto_9d
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppContext:Landroid/content/Context;

    const-string v4, "ve_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 254
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 256
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v3, :cond_bd

    .line 257
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    .line 259
    :cond_bd
    iget-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z

    if-eqz v3, :cond_c4

    .line 260
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->doCheck()V

    .line 265
    .end local v0           #InternalFreeMemory:J
    :cond_c4
    :goto_c4
    return-void

    .line 224
    :cond_c5
    const/4 v3, 0x3

    const-string v4, "VE_ContentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - it is duplicate function call - return!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    .line 249
    .restart local v0       #InternalFreeMemory:J
    :cond_103
    sget-wide v3, Lcom/android/phone/VE_ContentManager;->MAX_MEMORY:J

    iput-wide v3, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    goto :goto_9d

    .line 262
    .end local v0           #InternalFreeMemory:J
    :cond_108
    const-string v3, "VE_ContentManager"

    const-string v4, "befor content download was not done !!! return "

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, v8}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_c4
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter

    .prologue
    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 1058
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    const/4 v0, 0x4

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCompletion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_32

    .line 1061
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1062
    :cond_32
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1065
    const/4 v0, 0x6

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1067
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1045
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 1046
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1047
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1048
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1051
    const/4 v0, 0x4

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPrepared("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_41

    .line 1053
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1054
    :cond_41
    return-void
.end method
