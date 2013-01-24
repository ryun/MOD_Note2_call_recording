.class public Lcom/android/phone/FrameAnimationForVT;
.super Ljava/lang/Object;
.source "FrameAnimationForVT.java"


# instance fields
.field private mAnimationFrames:[I

.field private mDelay:I

.field private mFrameIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsRunning:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mShouldRun:Z

.field private mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[II)V
    .registers 6
    .parameter "imageView"
    .parameter "frames"
    .parameter "fps"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/android/phone/FrameAnimationForVT;->mAnimationFrames:[I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    .line 42
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    .line 43
    iput-boolean v1, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    .line 45
    const/16 v0, 0x3e8

    div-int/2addr v0, p3

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mDelay:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/FrameAnimationForVT;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/FrameAnimationForVT;)Ljava/lang/ref/SoftReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FrameAnimationForVT;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/FrameAnimationForVT;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/FrameAnimationForVT;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/FrameAnimationForVT;->getNext()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/FrameAnimationForVT;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/phone/FrameAnimationForVT;->mDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/FrameAnimationForVT;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNext()I
    .registers 3

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    .line 50
    iget v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mAnimationFrames:[I

    array-length v1, v1

    if-lt v0, v1, :cond_10

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    .line 53
    :cond_10
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mAnimationFrames:[I

    iget v1, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized start()V
    .registers 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    .line 68
    iget-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    if-eqz v0, :cond_3e

    .line 69
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_4d

    .line 91
    :goto_3c
    monitor-exit p0

    return-void

    .line 73
    :cond_3e
    :try_start_3e
    new-instance v0, Lcom/android/phone/FrameAnimationForVT$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FrameAnimationForVT$1;-><init>(Lcom/android/phone/FrameAnimationForVT;)V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mRunnable:Ljava/lang/Runnable;

    .line 90
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_4d

    goto :goto_3c

    .line 66
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    .line 96
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2c

    .line 97
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    .line 100
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    .line 101
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 104
    monitor-exit p0

    return-void

    .line 94
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
