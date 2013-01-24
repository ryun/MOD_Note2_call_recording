.class public Lcom/android/phone/CallReminderWidget$Handle;
.super Ljava/lang/Object;
.source "CallReminderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallReminderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;,
        Lcom/android/phone/CallReminderWidget$Handle$TabCircle;
    }
.end annotation


# instance fields
.field private final ARROW_ANI_DURATION:I

.field final ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final RESET_DURATION:I

.field private final RESET_STATE:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private mArrowContainer:Landroid/widget/LinearLayout;

.field private mArrowImageViews:[Landroid/widget/ImageView;

.field private mCircleColor:I

.field public mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mParent:Landroid/view/ViewGroup;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

.field private mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/phone/CallReminderWidget;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallReminderWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/16 v2, 0x384

    const/16 v1, 0xc8

    .line 374
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput v2, p0, Lcom/android/phone/CallReminderWidget$Handle;->FIRST_WAVE_DELAY:I

    .line 340
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->SECOND_WAVE_DELAY:I

    .line 342
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->START_WAVE:I

    .line 344
    iput v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->RESET_STATE:I

    .line 346
    iput v2, p0, Lcom/android/phone/CallReminderWidget$Handle;->ARROW_ANI_DURATION:I

    .line 358
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->ARROW_COUNT:I

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    .line 552
    new-instance v0, Lcom/android/phone/CallReminderWidget$Handle$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallReminderWidget$Handle$2;-><init>(Lcom/android/phone/CallReminderWidget$Handle;)V

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    .line 737
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->MAKE_TARGET_DURATION:I

    .line 739
    iput v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->RESET_DURATION:I

    .line 375
    iput-object p2, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    .line 376
    iput p4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    .line 377
    iput-object p3, p0, Lcom/android/phone/CallReminderWidget$Handle;->mParent:Landroid/view/ViewGroup;

    .line 378
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->init()V

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallReminderWidget$Handle;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/android/phone/CallReminderWidget$Handle;->reset(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallReminderWidget$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallReminderWidget$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallReminderWidget$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallReminderWidget$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallReminderWidget$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallReminderWidget$Handle;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallReminderWidget$Handle;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideArrow()V
    .registers 7

    .prologue
    .line 545
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_11
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 548
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 550
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1b
    return-void
.end method

.method private init()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 382
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    const-string v5, " Handle ; init!"

    invoke-virtual {v4, v5}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 384
    iput v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    .line 387
    new-instance v4, Lcom/android/phone/CallReminderWidget$Handle$1;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/phone/CallReminderWidget$Handle$1;-><init>(Lcom/android/phone/CallReminderWidget$Handle;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 402
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 404
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5b

    div-int/lit16 v1, v4, 0x80

    .line 406
    .local v1, diameter:I
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 407
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x56

    div-int/lit16 v1, v4, 0x80

    .line 410
    :cond_40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 412
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 415
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 419
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    .line 420
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v4, v7, :cond_db

    .line 423
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f0202f7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 427
    const v4, -0x57e5f1

    iput v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCircleColor:I

    .line 437
    :cond_77
    :goto_77
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 438
    new-instance v4, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x8

    div-int/lit8 v6, v6, 0x32

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;-><init>(Lcom/android/phone/CallReminderWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    .line 443
    :goto_8d
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4, v8}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setVisibility(I)V

    .line 444
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/android/phone/CallReminderWidget$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 448
    new-instance v4, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;-><init>(Lcom/android/phone/CallReminderWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    .line 449
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 450
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 456
    iget v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v4, v7, :cond_101

    .line 458
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0209

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 465
    :cond_da
    :goto_da
    return-void

    .line 429
    :cond_db
    iget v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v4, v9, :cond_77

    .line 430
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 432
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f0202f0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 434
    const v4, -0x9e5eeb

    iput v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCircleColor:I

    goto :goto_77

    .line 440
    :cond_f2
    new-instance v4, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x11

    div-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;-><init>(Lcom/android/phone/CallReminderWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    goto :goto_8d

    .line 460
    :cond_101
    iget v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v4, v9, :cond_da

    .line 462
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    const v6, 0x7f0e020a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_da
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .registers 4

    .prologue
    .line 595
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 596
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 598
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 601
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .registers 15
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 468
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 470
    const/high16 v0, 0x41a0

    .line 472
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 473
    const/4 v2, 0x0

    .line 474
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 476
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x3

    div-int/lit8 v8, v8, 0x50

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x50

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 479
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    const/4 v8, 0x3

    if-ge v3, v8, :cond_a0

    .line 480
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 481
    const/4 v1, 0x0

    .line 483
    .local v1, alpha:I
    iget v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_74

    .line 484
    const v2, 0x7f020029

    .line 485
    const/16 v4, 0x15

    .line 486
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    rsub-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 489
    if-eqz v3, :cond_5a

    .line 490
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    :cond_5a
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    :cond_63
    :goto_63
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 494
    :cond_74
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    int-to-float v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 495
    const v2, 0x7f020027

    .line 496
    const/16 v4, 0x13

    .line 498
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    const/4 v8, 0x2

    if-eq v3, v8, :cond_63

    .line 502
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_63

    .line 509
    .end local v1           #alpha:I
    :cond_a0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 512
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 517
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "move_incomingcallwidget_touch_area"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 518
    iget v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_cd

    .line 519
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 531
    :goto_c7
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-void

    .line 521
    :cond_cd
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_c7

    .line 524
    :cond_d4
    iget v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e0

    .line 525
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_c7

    .line 527
    :cond_e0
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_c7
.end method

.method private reset(Z)V
    .registers 11
    .parameter "animation"

    .prologue
    const v2, 0x3e99999a

    const/high16 v1, 0x3f80

    .line 770
    iget-object v3, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 771
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    const-string v2, "Handles will be reset"

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 802
    :goto_16
    return-void

    .line 775
    :cond_17
    if-eqz p1, :cond_80

    .line 776
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 778
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 780
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 782
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 783
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 785
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 786
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 788
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->clearAnimation()V

    .line 789
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 794
    .end local v0           #scaleAni:Landroid/view/animation/ScaleAnimation;
    .end local v7           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v8           #aniSet:Landroid/view/animation/AnimationSet;
    :goto_5f
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 796
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->clearAnimation()V

    .line 797
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setAlpha(I)V

    .line 798
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->invalidate()V

    .line 799
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setVisibility(I)V

    .line 801
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->showArrow()V

    goto :goto_16

    .line 791
    :cond_80
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->clearAnimation()V

    goto :goto_5f
.end method

.method private setDisable()V
    .registers 4

    .prologue
    .line 808
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 809
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 810
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 811
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 812
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setVisibility(I)V

    .line 813
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->hideArrow()V

    .line 814
    return-void
.end method

.method private setEnable()V
    .registers 4

    .prologue
    .line 820
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 821
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 822
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 823
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 824
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setVisibility(I)V

    .line 825
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->showArrow()V

    .line 826
    return-void
.end method

.method private showArrow()V
    .registers 4

    .prologue
    const/16 v2, 0x64

    .line 535
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 536
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 539
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    :cond_1d
    return-void
.end method

.method private showTarget()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    .line 746
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 748
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 750
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 752
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 753
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 755
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 756
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 758
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 760
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 761
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 762
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 763
    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    .prologue
    .line 734
    iget v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 934
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTopOffset:I

    .line 936
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 938
    iget v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTopOffset:I

    if-ltz v0, :cond_4c

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 940
    :cond_4c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTopOffset:I

    .line 943
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 609
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 612
    const/4 v4, 0x0

    .line 613
    .local v4, marginX:I
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x24

    div-int/lit16 v4, v7, 0x80

    .line 614
    const/4 v1, 0x0

    .line 616
    .local v1, isLandScape:Z
    const-string v7, "move_incomingcallwidget_touch_area"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 617
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v7, v7, 0x11

    div-int/lit16 v7, v7, 0xa0

    sub-int/2addr v4, v7

    .line 619
    :cond_38
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v7}, Lcom/android/phone/CallReminderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 620
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_bc

    .line 621
    const/4 v1, 0x1

    .line 622
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v7, v7, 0x11

    div-int/lit16 v7, v7, 0xa0

    sub-int/2addr v4, v7

    .line 626
    :cond_54
    :goto_54
    iget v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v7, v9, :cond_d3

    .line 627
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    sub-int v2, v7, v4

    .line 629
    .local v2, leftHandleLeft:I
    if-eqz v1, :cond_c2

    .line 630
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    add-int v3, v7, v8

    .line 631
    .local v3, leftHandleTop:I
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "leftHandleTop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 635
    :goto_8a
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 650
    .end local v2           #leftHandleLeft:I
    .end local v3           #leftHandleTop:I
    :cond_9d
    :goto_9d
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDisplayMetrics "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v9}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 651
    return-void

    .line 623
    :cond_bc
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_54

    .line 624
    const/4 v1, 0x0

    goto :goto_54

    .line 633
    .restart local v2       #leftHandleLeft:I
    :cond_c2
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    add-int v3, v7, v8

    .restart local v3       #leftHandleTop:I
    goto :goto_8a

    .line 637
    .end local v2           #leftHandleLeft:I
    .end local v3           #leftHandleTop:I
    :cond_d3
    iget v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v7, v10, :cond_9d

    .line 638
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    add-int v5, v7, v4

    .line 640
    .local v5, rightHandleLeft:I
    if-eqz v1, :cond_11d

    .line 641
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    add-int v6, v7, v8

    .line 642
    .local v6, rightHandleTop:I
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rightHandleTop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 646
    :goto_109
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_9d

    .line 644
    .end local v6           #rightHandleTop:I
    :cond_11d
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    add-int v6, v7, v8

    .restart local v6       #rightHandleTop:I
    goto :goto_109
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "motion"

    .prologue
    const/4 v8, 0x0

    .line 834
    iget v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    .line 835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 836
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 838
    .local v3, y:F
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 839
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 841
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->clearAnimation()V

    .line 842
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->clearAnimation()V

    .line 843
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 844
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->invalidate()V

    .line 845
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4, v8}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setAlpha(I)V

    .line 846
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->invalidate()V

    .line 847
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #setter for: Lcom/android/phone/CallReminderWidget;->mIsTracking:Z
    invoke-static {v4, v8}, Lcom/android/phone/CallReminderWidget;->access$802(Lcom/android/phone/CallReminderWidget;Z)Z

    .line 848
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    iget v5, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/CallReminderWidget;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/android/phone/CallReminderWidget;->access$900(Lcom/android/phone/CallReminderWidget;I)V

    .line 849
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #calls: Lcom/android/phone/CallReminderWidget;->setGrabbedState(I)V
    invoke-static {v4, v8}, Lcom/android/phone/CallReminderWidget;->access$1000(Lcom/android/phone/CallReminderWidget;I)V

    .line 864
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_50
    :goto_50
    return-void

    .line 851
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_51
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 852
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->showArrow()V

    .line 857
    :goto_5c
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 858
    .local v0, ratio:D
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setAlpha(I)V

    .line 859
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 860
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->invalidate()V

    .line 861
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->invalidate()V

    goto :goto_50

    .line 854
    .end local v0           #ratio:D
    :cond_89
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->hideArrow()V

    goto :goto_5c
.end method

.method public setState(I)V
    .registers 5
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    .line 708
    iget v0, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    .line 709
    .local v0, preState:I
    iput p1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    .line 710
    iget v1, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_20

    .line 727
    :cond_a
    :goto_a
    return-void

    .line 712
    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->showTarget()V

    goto :goto_a

    .line 715
    :pswitch_f
    if-ne v0, v2, :cond_15

    .line 716
    invoke-direct {p0, v2}, Lcom/android/phone/CallReminderWidget$Handle;->reset(Z)V

    goto :goto_a

    .line 717
    :cond_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 718
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->setEnable()V

    goto :goto_a

    .line 722
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->setDisable()V

    goto :goto_a

    .line 710
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_1c
    .end packed-switch
.end method

.method public tabletMakeLayout()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 657
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 660
    const/4 v4, 0x0

    .line 661
    .local v4, marginX:I
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x22

    div-int/lit16 v4, v7, 0x80

    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, isLandScape:Z
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v7}, Lcom/android/phone/CallReminderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 667
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_84

    .line 668
    const/4 v1, 0x1

    .line 673
    :cond_32
    :goto_32
    iget v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v7, v9, :cond_9d

    .line 674
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    sub-int v2, v7, v4

    .line 676
    .local v2, leftHandleLeft:I
    if-eqz v1, :cond_8a

    .line 677
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x12

    add-int v3, v7, v8

    .line 682
    .local v3, leftHandleTop:I
    :goto_52
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 698
    .end local v2           #leftHandleLeft:I
    .end local v3           #leftHandleTop:I
    :cond_65
    :goto_65
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDisplayMetrics "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #getter for: Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v9}, Lcom/android/phone/CallReminderWidget;->access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 699
    return-void

    .line 669
    :cond_84
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_32

    .line 670
    const/4 v1, 0x0

    goto :goto_32

    .line 679
    .restart local v2       #leftHandleLeft:I
    :cond_8a
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x7

    sub-int v3, v7, v8

    .restart local v3       #leftHandleTop:I
    goto :goto_52

    .line 684
    .end local v2           #leftHandleLeft:I
    .end local v3           #leftHandleTop:I
    :cond_9d
    iget v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    if-ne v7, v10, :cond_65

    .line 685
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    add-int v5, v7, v4

    .line 688
    .local v5, rightHandleLeft:I
    if-eqz v1, :cond_d1

    .line 689
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x12

    add-int v6, v7, v8

    .line 694
    .local v6, rightHandleTop:I
    :goto_bd
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_65

    .line 691
    .end local v6           #rightHandleTop:I
    :cond_d1
    iget-object v7, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x7

    sub-int v6, v7, v8

    .restart local v6       #rightHandleTop:I
    goto :goto_bd
.end method

.method public tabletProcessMoveEvent(Landroid/view/MotionEvent;)V
    .registers 15
    .parameter "motion"

    .prologue
    const-wide/16 v11, 0x1f4

    const/4 v10, 0x0

    .line 874
    iget v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mCurrentState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_59

    .line 875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 876
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 878
    .local v7, y:F
    const-wide v2, 0x3fee666666666666L

    .line 879
    .local v2, lowBound:D
    const-wide/high16 v4, 0x4004

    .line 880
    .local v4, upperBound:D
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 882
    .local v0, currentRatio:D
    cmpg-double v8, v0, v2

    if-gez v8, :cond_5e

    .line 883
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    const-string v9, "Not reach the target circle, set Circle\'s alpha value"

    invoke-virtual {v8, v9}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 885
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 886
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->showArrow()V

    .line 891
    :goto_33
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v9, v0

    double-to-int v9, v9

    rsub-int v9, v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setAlpha(I)V

    .line 892
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const-wide v9, 0x4063c00000000000L

    mul-double/2addr v9, v0

    double-to-int v9, v9

    add-int/lit8 v9, v9, 0x61

    invoke-virtual {v8, v9}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 893
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->invalidate()V

    .line 894
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->invalidate()V

    .line 927
    .end local v0           #currentRatio:D
    .end local v2           #lowBound:D
    .end local v4           #upperBound:D
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_59
    :goto_59
    return-void

    .line 888
    .restart local v0       #currentRatio:D
    .restart local v2       #lowBound:D
    .restart local v4       #upperBound:D
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_5a
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget$Handle;->hideArrow()V

    goto :goto_33

    .line 896
    :cond_5e
    cmpl-double v8, v0, v2

    if-ltz v8, :cond_a9

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_a9

    .line 897
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    const-string v9, " Reach the valid region, let\'s call dispatchTriggerEvent()"

    invoke-virtual {v8, v9}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 899
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->clearAnimation()V

    .line 900
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->clearAnimation()V

    .line 901
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 902
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTargetCircle:Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/CallReminderWidget$Handle$TargetCircle;->invalidate()V

    .line 903
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v8, v10}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->setAlpha(I)V

    .line 904
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mTabCircle:Lcom/android/phone/CallReminderWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/CallReminderWidget$Handle$TabCircle;->invalidate()V

    .line 905
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #setter for: Lcom/android/phone/CallReminderWidget;->mIsTracking:Z
    invoke-static {v8, v10}, Lcom/android/phone/CallReminderWidget;->access$802(Lcom/android/phone/CallReminderWidget;Z)Z

    .line 906
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    iget v9, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/CallReminderWidget;->dispatchTriggerEvent(I)V
    invoke-static {v8, v9}, Lcom/android/phone/CallReminderWidget;->access$900(Lcom/android/phone/CallReminderWidget;I)V

    .line 907
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    #calls: Lcom/android/phone/CallReminderWidget;->setGrabbedState(I)V
    invoke-static {v8, v10}, Lcom/android/phone/CallReminderWidget;->access$1000(Lcom/android/phone/CallReminderWidget;I)V

    .line 909
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/CallReminderWidget$Handle$3;

    invoke-direct {v9, p0}, Lcom/android/phone/CallReminderWidget$Handle$3;-><init>(Lcom/android/phone/CallReminderWidget$Handle;)V

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    .line 917
    :cond_a9
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    const-string v9, " Go over the valid region, set the State as Normal"

    invoke-virtual {v8, v9}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 919
    iget-object v8, p0, Lcom/android/phone/CallReminderWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/CallReminderWidget$Handle$4;

    invoke-direct {v9, p0}, Lcom/android/phone/CallReminderWidget$Handle$4;-><init>(Lcom/android/phone/CallReminderWidget$Handle;)V

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59
.end method
