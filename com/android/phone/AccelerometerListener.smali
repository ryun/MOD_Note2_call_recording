.class public final Lcom/android/phone/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AccelerometerListener$OrientationListener;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/android/phone/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AccelerometerListener$1;-><init>(Lcom/android/phone/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 144
    new-instance v0, Lcom/android/phone/AccelerometerListener$2;

    invoke-direct {v0, p0}, Lcom/android/phone/AccelerometerListener$2;-><init>(Lcom/android/phone/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p2, p0, Lcom/android/phone/AccelerometerListener;->mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;

    .line 69
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AccelerometerListener;DDD)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/android/phone/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/AccelerometerListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/AccelerometerListener;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/AccelerometerListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/AccelerometerListener;)Lcom/android/phone/AccelerometerListener$OrientationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method private onSensorEvent(DDD)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const-wide/16 v6, 0x0

    .line 121
    cmpl-double v5, p1, v6

    if-eqz v5, :cond_e

    cmpl-double v5, p3, v6

    if-eqz v5, :cond_e

    cmpl-double v5, p5, v6

    if-nez v5, :cond_f

    .line 132
    :cond_e
    :goto_e
    return-void

    .line 124
    :cond_f
    mul-double v5, p1, p1

    mul-double v7, p3, p3

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 126
    .local v3, xy:D
    invoke-static {v3, v4, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 128
    .local v0, angle:D
    const-wide v5, 0x4066800000000000L

    mul-double/2addr v5, v0

    const-wide v7, 0x400921fb54442d18L

    div-double v0, v5, v7

    .line 129
    const-wide/high16 v5, 0x4049

    cmpl-double v5, v0, v5

    if-lez v5, :cond_34

    const/4 v2, 0x1

    .line 131
    .local v2, orientation:I
    :goto_30
    invoke-direct {p0, v2}, Lcom/android/phone/AccelerometerListener;->setOrientation(I)V

    goto :goto_e

    .line 129
    .end local v2           #orientation:I
    :cond_34
    const/4 v2, 0x2

    goto :goto_30
.end method

.method private setOrientation(I)V
    .registers 7
    .parameter "orientation"

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget v2, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    if-ne v2, p1, :cond_7

    .line 92
    monitor-exit p0

    .line 114
    :goto_6
    return-void

    .line 98
    :cond_7
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget v2, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    if-eq v2, p1, :cond_2f

    .line 103
    iput p1, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    .line 104
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 106
    .local v1, m:Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2c

    const/16 v0, 0x64

    .line 108
    .local v0, delay:I
    :goto_21
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    .end local v0           #delay:I
    .end local v1           #m:Landroid/os/Message;
    :goto_27
    monitor-exit p0

    goto :goto_6

    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v2

    .line 106
    .restart local v1       #m:Landroid/os/Message;
    :cond_2c
    const/16 v0, 0x1f4

    goto :goto_21

    .line 111
    .end local v1           #m:Landroid/os/Message;
    :cond_2f
    const/4 v2, 0x0

    :try_start_30
    iput v2, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_29

    goto :goto_27
.end method
