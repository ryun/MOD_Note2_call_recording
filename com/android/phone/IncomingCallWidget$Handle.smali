.class public Lcom/android/phone/IncomingCallWidget$Handle;
.super Ljava/lang/Object;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;,
        Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
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

.field private mIncomingCircleDescription:Landroid/widget/TextView;

.field private mParent:Landroid/view/ViewGroup;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

.field private mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/phone/IncomingCallWidget;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/16 v2, 0x384

    const/16 v1, 0xc8

    .line 376
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->FIRST_WAVE_DELAY:I

    .line 340
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->SECOND_WAVE_DELAY:I

    .line 342
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->START_WAVE:I

    .line 344
    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_STATE:I

    .line 346
    iput v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_ANI_DURATION:I

    .line 358
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_COUNT:I

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    .line 568
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallWidget$Handle$2;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    .line 750
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->MAKE_TARGET_DURATION:I

    .line 752
    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_DURATION:I

    .line 377
    iput-object p2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    .line 378
    iput-object p3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    .line 379
    iput p4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    .line 380
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->init()V

    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideArrow()V
    .registers 7

    .prologue
    .line 561
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_11
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 564
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 566
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1b
    return-void
.end method

.method private init()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v7, -0x2

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 384
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v6, " Handle ; init!"

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 386
    iput v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 389
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$1;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/phone/IncomingCallWidget$Handle$1;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 404
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 406
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5b

    div-int/lit16 v1, v5, 0x80

    .line 408
    .local v1, diameter:I
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 409
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x56

    div-int/lit16 v1, v5, 0x80

    .line 412
    :cond_41
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 417
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v2, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 421
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    .line 422
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v8, :cond_13f

    .line 425
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmergencyCallbackMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 427
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0202f5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    :goto_85
    const v5, -0x9e5eeb

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    .line 440
    :cond_8a
    :goto_8a
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_172

    .line 441
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x8

    div-int/lit8 v7, v7, 0x32

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    .line 446
    :goto_a0
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v5, v11}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 447
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 451
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    .line 452
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 453
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    const-string v5, "incoming_call_widget_description_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_182

    .line 462
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    mul-int/lit8 v5, v1, 0x3c

    div-int/lit8 v5, v5, 0x64

    invoke-direct {v3, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 465
    .restart local v3       #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_f6
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 467
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    .line 468
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    const v6, 0x7f0e06f5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 469
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 470
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 474
    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_11d
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v8, :cond_18d

    .line 476
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0209

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 483
    :cond_134
    :goto_134
    return-void

    .line 429
    :cond_135
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0202f1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_85

    .line 431
    :cond_13f
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v9, :cond_8a

    .line 432
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 433
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmergencyCallbackMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 434
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0202f2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 437
    :goto_162
    const v5, -0x57e5f1

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    goto/16 :goto_8a

    .line 436
    :cond_169
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0202f4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_162

    .line 443
    :cond_172
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x11

    div-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    goto/16 :goto_a0

    .line 464
    .restart local v3       #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_182
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    mul-int/lit8 v5, v1, 0x48

    div-int/lit8 v5, v5, 0x64

    invoke-direct {v3, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v3       #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_f6

    .line 478
    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_18d
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v9, :cond_134

    .line 480
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v7, 0x7f0e020a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_134
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .registers 4

    .prologue
    .line 615
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 616
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 618
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 621
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .registers 15
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 486
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 488
    const/high16 v0, 0x41a0

    .line 490
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 491
    const/4 v2, 0x0

    .line 492
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 494
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x3

    div-int/lit8 v8, v8, 0x50

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x50

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 497
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    const/4 v8, 0x3

    if-ge v3, v8, :cond_a0

    .line 498
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 499
    const/4 v1, 0x0

    .line 501
    .local v1, alpha:I
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_74

    .line 502
    const v2, 0x7f020026

    .line 503
    const/16 v4, 0x15

    .line 504
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

    .line 507
    if-eqz v3, :cond_5a

    .line 508
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    :cond_5a
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    :cond_63
    :goto_63
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 512
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

    .line 513
    const v2, 0x7f020028

    .line 514
    const/16 v4, 0x13

    .line 516
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    const/4 v8, 0x2

    if-eq v3, v8, :cond_63

    .line 520
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_63

    .line 527
    .end local v1           #alpha:I
    :cond_a0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 530
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 534
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "move_incomingcallwidget_touch_area"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 535
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_cd

    .line 536
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 547
    :goto_c7
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    return-void

    .line 538
    :cond_cd
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_c7

    .line 541
    :cond_d4
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e0

    .line 542
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_c7

    .line 544
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

    .line 783
    if-eqz p1, :cond_6e

    .line 784
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 786
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 788
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 790
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 791
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 793
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 794
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 796
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    .line 797
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    .end local v0           #scaleAni:Landroid/view/animation/ScaleAnimation;
    .end local v7           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v8           #aniSet:Landroid/view/animation/AnimationSet;
    :goto_4d
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 804
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    .line 805
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 806
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    .line 807
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 809
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 810
    return-void

    .line 799
    :cond_6e
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    goto :goto_4d
.end method

.method private setDisable()V
    .registers 4

    .prologue
    .line 816
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 817
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 819
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 820
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 821
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    .line 822
    return-void
.end method

.method private setEnable()V
    .registers 4

    .prologue
    .line 828
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 829
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 830
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 831
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 832
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 833
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 834
    return-void
.end method

.method private showArrow()V
    .registers 4

    .prologue
    const/16 v2, 0x64

    .line 551
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 552
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 555
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    :cond_1d
    return-void
.end method

.method private showTarget()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    .line 759
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 761
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 763
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 765
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 766
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 768
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 769
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 771
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 773
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 774
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 775
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 776
    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    .prologue
    .line 747
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 942
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    .line 944
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 946
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    if-ltz v0, :cond_4c

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 948
    :cond_4c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    .line 951
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .registers 11

    .prologue
    .line 629
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 632
    const/4 v2, 0x0

    .line 633
    .local v2, marginX:I
    const/4 v3, 0x0

    .line 634
    .local v3, marginY:I
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x24

    div-int/lit16 v2, v6, 0x80

    .line 635
    const-string v6, "move_incomingcallwidget_touch_area"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 636
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v6, v6, 0x11

    div-int/lit16 v6, v6, 0xa0

    sub-int/2addr v2, v6

    .line 637
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit16 v3, v6, 0xa0

    .line 640
    :cond_42
    iget v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_94

    .line 641
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    sub-int v0, v6, v2

    .line 642
    .local v0, leftHandleLeft:I
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    add-int v1, v6, v7

    .line 643
    .local v1, leftHandleTop:I
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    sub-int v7, v1, v3

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v1

    sub-int/2addr v9, v3

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 652
    .end local v0           #leftHandleLeft:I
    .end local v1           #leftHandleTop:I
    :cond_75
    :goto_75
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDisplayMetrics "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 653
    return-void

    .line 645
    :cond_94
    iget v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_75

    .line 646
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    add-int v4, v6, v2

    .line 647
    .local v4, rightHandleLeft:I
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    add-int v5, v6, v7

    .line 648
    .local v5, rightHandleTop:I
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    sub-int v7, v5, v3

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v9, v3

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_75
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "motion"

    .prologue
    const/4 v8, 0x0

    .line 842
    iget v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 844
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 846
    .local v3, y:F
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 847
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 849
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    .line 850
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    .line 851
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 852
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    .line 853
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 854
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    .line 855
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v4, v8}, Lcom/android/phone/IncomingCallWidget;->access$802(Lcom/android/phone/IncomingCallWidget;Z)Z

    .line 856
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;I)V

    .line 857
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #calls: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v4, v8}, Lcom/android/phone/IncomingCallWidget;->access$1000(Lcom/android/phone/IncomingCallWidget;I)V

    .line 872
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_50
    :goto_50
    return-void

    .line 859
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_51
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 860
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 865
    :goto_5c
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 866
    .local v0, ratio:D
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 867
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 868
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    .line 869
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    goto :goto_50

    .line 862
    .end local v0           #ratio:D
    :cond_89
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_5c
.end method

.method public setState(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 709
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    .line 710
    return-void
.end method

.method public setState(IZ)V
    .registers 7
    .parameter "newState"
    .parameter "animation"

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 714
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v2, "Block setState until reset. Handles will be reset"

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 740
    :goto_11
    return-void

    .line 718
    :cond_12
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 719
    .local v0, preState:I
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 720
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setState preState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 721
    iget v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_68

    goto :goto_11

    .line 726
    :pswitch_4c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 727
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setEnable()V

    goto :goto_11

    .line 723
    :pswitch_53
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget()V

    goto :goto_11

    .line 728
    :cond_57
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    .line 729
    invoke-direct {p0, p2}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(Z)V

    goto :goto_11

    .line 731
    :cond_5e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(Z)V

    goto :goto_11

    .line 735
    :pswitch_63
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setDisable()V

    goto :goto_11

    .line 721
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_53
        :pswitch_63
    .end packed-switch
.end method

.method public tabletMakeLayout()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 659
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 662
    const/4 v4, 0x0

    .line 663
    .local v4, marginX:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x22

    div-int/lit16 v4, v7, 0x80

    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, isLandScape:Z
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v7}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 668
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_84

    .line 669
    const/4 v1, 0x1

    .line 674
    :cond_32
    :goto_32
    iget v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v7, v9, :cond_9d

    .line 675
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    sub-int v2, v7, v4

    .line 677
    .local v2, leftHandleLeft:I
    if-eqz v1, :cond_8a

    .line 678
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x12

    add-int v3, v7, v8

    .line 683
    .local v3, leftHandleTop:I
    :goto_52
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 699
    .end local v2           #leftHandleLeft:I
    .end local v3           #leftHandleTop:I
    :cond_65
    :goto_65
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDisplayMetrics "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v9}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 700
    return-void

    .line 670
    :cond_84
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_32

    .line 671
    const/4 v1, 0x0

    goto :goto_32

    .line 680
    .restart local v2       #leftHandleLeft:I
    :cond_8a
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x7

    sub-int v3, v7, v8

    .restart local v3       #leftHandleTop:I
    goto :goto_52

    .line 685
    .end local v2           #leftHandleLeft:I
    .end local v3           #leftHandleTop:I
    :cond_9d
    iget v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v7, v10, :cond_65

    .line 686
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    add-int v5, v7, v4

    .line 689
    .local v5, rightHandleLeft:I
    if-eqz v1, :cond_d1

    .line 690
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x12

    add-int v6, v7, v8

    .line 695
    .local v6, rightHandleTop:I
    :goto_bd
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_65

    .line 692
    .end local v6           #rightHandleTop:I
    :cond_d1
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

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

    .line 882
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_59

    .line 883
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 884
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 886
    .local v7, y:F
    const-wide v2, 0x3fee666666666666L

    .line 887
    .local v2, lowBound:D
    const-wide/high16 v4, 0x4004

    .line 888
    .local v4, upperBound:D
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 890
    .local v0, currentRatio:D
    cmpg-double v8, v0, v2

    if-gez v8, :cond_5e

    .line 891
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v9, "Not reach the target circle, set Circle\'s alpha value"

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 893
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 894
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 899
    :goto_33
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v9, v0

    double-to-int v9, v9

    rsub-int v9, v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 900
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v9, 0x4063c00000000000L

    mul-double/2addr v9, v0

    double-to-int v9, v9

    add-int/lit8 v9, v9, 0x61

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 901
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    .line 902
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    .line 935
    .end local v0           #currentRatio:D
    .end local v2           #lowBound:D
    .end local v4           #upperBound:D
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_59
    :goto_59
    return-void

    .line 896
    .restart local v0       #currentRatio:D
    .restart local v2       #lowBound:D
    .restart local v4       #upperBound:D
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_5a
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_33

    .line 904
    :cond_5e
    cmpl-double v8, v0, v2

    if-ltz v8, :cond_a9

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_a9

    .line 905
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v9, " Reach the valid region, let\'s call dispatchTriggerEvent()"

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 907
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    .line 908
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    .line 909
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 910
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    .line 911
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8, v10}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 912
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    .line 913
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v8, v10}, Lcom/android/phone/IncomingCallWidget;->access$802(Lcom/android/phone/IncomingCallWidget;Z)Z

    .line 914
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v8, v9}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;I)V

    .line 915
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #calls: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v8, v10}, Lcom/android/phone/IncomingCallWidget;->access$1000(Lcom/android/phone/IncomingCallWidget;I)V

    .line 917
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/IncomingCallWidget$Handle$3;

    invoke-direct {v9, p0}, Lcom/android/phone/IncomingCallWidget$Handle$3;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    .line 925
    :cond_a9
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v9, " Go over the valid region, set the State as Normal"

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 927
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/IncomingCallWidget$Handle$4;

    invoke-direct {v9, p0}, Lcom/android/phone/IncomingCallWidget$Handle$4;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59
.end method
