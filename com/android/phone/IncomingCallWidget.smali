.class public Lcom/android/phone/IncomingCallWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle;,
        Lcom/android/phone/IncomingCallWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsTracking:Z

.field public mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

.field private mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

.field public mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 54
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 56
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 74
    const-string v0, "EmergencyCallbackMode"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 54
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 56
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 74
    const-string v0, "EmergencyCallbackMode"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 54
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 56
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 74
    const-string v0, "EmergencyCallbackMode"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/IncomingCallWidget;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallWidget;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/IncomingCallWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/IncomingCallWidget;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4
    .parameter "whichHandle"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 192
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallWidget;->vibrate(J)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_24

    .line 194
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 196
    :cond_24
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 95
    const-string v0, "init"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 97
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallWidget$Handle;-><init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 101
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallWidget$Handle;-><init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 102
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1128
    const-string v0, "IncomingCallWidget"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1129
    return-void
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 203
    iget v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    .line 204
    iput p1, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 205
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_11

    .line 206
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 209
    :cond_11
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 312
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    .line 316
    :cond_13
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 317
    monitor-exit p0

    return-void

    .line 312
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 1124
    const-string v0, "IncomingCallWidget"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 232
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 233
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 236
    .local v4, y:F
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v3, v4}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 239
    .local v1, leftHit:Z
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v3, v4}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v2

    .line 241
    .local v2, rightHit:Z
    iget-boolean v6, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-nez v6, :cond_24

    if-nez v1, :cond_24

    if-nez v2, :cond_24

    .line 242
    const/4 v5, 0x0

    .line 264
    :cond_23
    :goto_23
    return v5

    .line 245
    :cond_24
    packed-switch v0, :pswitch_data_50

    goto :goto_23

    .line 247
    :pswitch_28
    const-wide/16 v6, 0x1e

    invoke-direct {p0, v6, v7}, Lcom/android/phone/IncomingCallWidget;->vibrate(J)V

    .line 248
    iput-boolean v5, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    .line 249
    if-eqz v1, :cond_3f

    .line 250
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 251
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 252
    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    goto :goto_23

    .line 253
    :cond_3f
    if-eqz v2, :cond_23

    .line 254
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 255
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 256
    invoke-direct {p0, v8}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    goto :goto_23

    .line 245
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 213
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 214
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 215
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletMakeLayout()V

    .line 216
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletMakeLayout()V

    .line 221
    :goto_15
    return-void

    .line 218
    :cond_16
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeLayout()V

    .line 219
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeLayout()V

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    iget-boolean v3, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-eqz v3, :cond_d

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 276
    .local v0, action:I
    packed-switch v0, :pswitch_data_62

    .line 305
    .end local v0           #action:I
    :cond_d
    :pswitch_d
    iget-boolean v3, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-nez v3, :cond_17

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    move v1, v2

    :cond_18
    move v2, v1

    :cond_19
    :goto_19
    return v2

    .line 278
    .restart local v0       #action:I
    :pswitch_1a
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_36

    .line 279
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 280
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 282
    :cond_30
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 284
    :cond_36
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 285
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 286
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 288
    :cond_4c
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 296
    :pswitch_52
    iput-boolean v1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    .line 297
    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 298
    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 299
    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    goto :goto_19

    .line 276
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_d
        :pswitch_d
        :pswitch_52
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    if-eqz v0, :cond_a

    .line 170
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    if-eqz v0, :cond_13

    .line 174
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    .line 176
    :cond_13
    return-void
.end method

.method public setLeftHintText(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 159
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    .line 184
    return-void
.end method

.method public setRightHintText(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 163
    return-void
.end method
