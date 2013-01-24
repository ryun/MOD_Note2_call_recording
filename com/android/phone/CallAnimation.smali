.class public Lcom/android/phone/CallAnimation;
.super Ljava/lang/Object;
.source "CallAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallAnimation$1;,
        Lcom/android/phone/CallAnimation$AnimationType;
    }
.end annotation


# static fields
.field public static final DBG:I

.field private static mAniType:Lcom/android/phone/CallAnimation$AnimationType;

.field private static sInstance:Lcom/android/phone/CallAnimation;


# instance fields
.field private mBannerAlpha:Landroid/view/animation/AlphaAnimation;

.field private mBannerTrans:Landroid/view/animation/TranslateAnimation;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpad:Landroid/widget/TableLayout;

.field private mDtmfEditText:Landroid/widget/EditText;

.field private mDtmfTrans:Landroid/view/animation/TranslateAnimation;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

.field private mIncomingCallRightWidget:Landroid/widget/FrameLayout;

.field private mInsetPhoto:Landroid/widget/ImageView;

.field private mKeypadTrans:Landroid/view/animation/TranslateAnimation;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryPhoto:Landroid/widget/ImageView;

.field private mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryPhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    sput v0, Lcom/android/phone/CallAnimation;->DBG:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private cleanViewsAnimation()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_9

    .line 416
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->clearAnimation()V

    .line 418
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_12

    .line 419
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->clearAnimation()V

    .line 421
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_1b

    .line 422
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->clearAnimation()V

    .line 424
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_24

    .line 425
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearAnimation()V

    .line 427
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    .line 428
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 430
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    .line 431
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 433
    :cond_36
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    .line 434
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 436
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_48

    .line 437
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 439
    :cond_48
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_51

    .line 440
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 442
    :cond_51
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5a

    .line 443
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 445
    :cond_5a
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_63

    .line 446
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 448
    :cond_63
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_6c

    .line 449
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 451
    :cond_6c
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_75

    .line 452
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 454
    :cond_75
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7e

    .line 455
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 457
    :cond_7e
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_87

    .line 458
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 460
    :cond_87
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_90

    .line 461
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->clearAnimation()V

    .line 463
    :cond_90
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 464
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_a9

    .line 465
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 468
    :cond_a9
    return-void
.end method

.method public static clearAnimation()V
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-eqz v0, :cond_e

    .line 144
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->cleanViewsAnimation()V

    .line 145
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->resetViewHandles()V

    .line 147
    :cond_e
    return-void
.end method

.method private dialpadBannerAlphaAnimation(Z)V
    .registers 5
    .parameter "isOpen"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 282
    if-eqz p1, :cond_b4

    .line 283
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    .line 287
    :goto_c
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_34

    .line 293
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    :cond_34
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_44

    .line 296
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    :cond_44
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_57

    .line 299
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 301
    :cond_57
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6a

    .line 302
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    :cond_6a
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7d

    .line 306
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    :cond_7d
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_90

    .line 309
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    :cond_90
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 313
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b3

    .line 314
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    :cond_b3
    return-void

    .line 285
    :cond_b4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_c
.end method

.method private dialpadBannerAnimation(Z)V
    .registers 11
    .parameter "isOpen"

    .prologue
    .line 218
    const-string v1, "use_alpha_anim_for_banner"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 219
    invoke-direct {p0, p1}, Lcom/android/phone/CallAnimation;->dialpadBannerAlphaAnimation(Z)V

    .line 279
    :cond_b
    :goto_b
    return-void

    .line 223
    :cond_c
    if-eqz p1, :cond_ff

    .line 224
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    .line 229
    :goto_1e
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 230
    if-eqz p1, :cond_111

    .line 231
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x3f40

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    .line 237
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const v3, 0x10a0006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 239
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_60

    .line 242
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 243
    :cond_60
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_70

    .line 245
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    :cond_70
    const/4 v0, 0x0

    .line 248
    .local v0, callStateTrans:Landroid/view/animation/TranslateAnimation;
    if-eqz p1, :cond_123

    .line 249
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 253
    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :goto_81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 255
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a9

    .line 259
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    :cond_a9
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ba

    .line 262
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    :cond_ba
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_cb

    .line 267
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    :cond_cb
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 271
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v1, :cond_ec

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ec

    .line 272
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    :cond_ec
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 277
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_b

    .line 226
    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :cond_ff
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1e

    .line 233
    :cond_111
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3f40

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_38

    .line 251
    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :cond_123
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_81
.end method

.method private dialpadDtmfEditTextAnimation(Z)V
    .registers 11
    .parameter "isOpen"

    .prologue
    .line 203
    if-eqz p1, :cond_40

    .line 204
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    .line 208
    :goto_12
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 211
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3a

    .line 213
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    return-void

    .line 206
    :cond_40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    goto :goto_12
.end method

.method private dialpadKeypadAnimation(Z)V
    .registers 11
    .parameter "isOpen"

    .prologue
    .line 188
    if-eqz p1, :cond_40

    .line 189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    .line 193
    :goto_12
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_3a

    .line 198
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 200
    return-void

    .line 191
    :cond_40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    goto :goto_12
.end method

.method private dialpadPhotoAnimation(Z)V
    .registers 7
    .parameter "isOpen"

    .prologue
    const-wide/16 v3, 0xc8

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, photoAlpha:Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_46

    .line 322
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 323
    .restart local v0       #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 329
    :goto_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 331
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2b

    .line 334
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 335
    :cond_2b
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_34

    .line 336
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 337
    :cond_34
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_45

    .line 338
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    :cond_45
    return-void

    .line 325
    :cond_46
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 326
    .restart local v0       #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_10
.end method

.method private incomingCallAnimation()V
    .registers 13

    .prologue
    .line 342
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3e4ccccd

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 343
    .local v0, mPhotoTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3e4ccccd

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 344
    .local v1, mRejectMsgTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const v4, -0x41b33333

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 345
    .local v2, mAcceptTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const v5, 0x3e4ccccd

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 347
    .local v3, mRejectTrans:Landroid/view/animation/TranslateAnimation;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 349
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 350
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_58

    .line 351
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    :cond_58
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_61

    .line 354
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    :cond_61
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_72

    .line 356
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    :cond_72
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 361
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v4, :cond_8e

    .line 362
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4, v1}, Landroid/widget/SlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    :cond_8e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 366
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 367
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_aa

    .line 368
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 370
    :cond_aa
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 372
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 373
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_c6

    .line 374
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    :cond_c6
    invoke-virtual {v3, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    .line 378
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 95
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 96
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_ee

    .line 97
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 99
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EndCallButtonsView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 101
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    .line 102
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    .line 103
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 104
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 110
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 111
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    .line 112
    const-string v1, "period_mark_animation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 113
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    .line 119
    :cond_ab
    :goto_ab
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 120
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 123
    :cond_c8
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    .line 125
    .local v0, incomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    if-eqz v0, :cond_e1

    .line 126
    iget-object v1, v0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, v1, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    .line 127
    iget-object v1, v0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, v1, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    .line 129
    :cond_e1
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0901e2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 132
    .end local v0           #incomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    :cond_ee
    return-void

    .line 116
    :cond_ef
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    goto :goto_ab
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 544
    const-string v0, "CallAnimation"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method private resetViewHandles()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 472
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 473
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 474
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    .line 475
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    .line 476
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 477
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 478
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    .line 479
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 480
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 481
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    .line 482
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    .line 483
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 484
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    .line 485
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    .line 486
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 487
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 488
    return-void
.end method

.method private start(Lcom/android/phone/CallAnimation$AnimationType;)Z
    .registers 6
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    sget-object v2, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    invoke-virtual {p1}, Lcom/android/phone/CallAnimation$AnimationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_52

    .line 179
    :cond_d
    :goto_d
    :pswitch_d
    sput-object p1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    move v0, v1

    .line 180
    :cond_10
    return v0

    .line 152
    :pswitch_11
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadKeypadAnimation(Z)V

    .line 153
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 154
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    .line 155
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadPhotoAnimation(Z)V

    goto :goto_d

    .line 157
    :cond_23
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    goto :goto_d

    .line 161
    :pswitch_27
    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 164
    :cond_3b
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadKeypadAnimation(Z)V

    .line 165
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    .line 166
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 167
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadPhotoAnimation(Z)V

    goto :goto_d

    .line 174
    :pswitch_4d
    invoke-direct {p0}, Lcom/android/phone/CallAnimation;->incomingCallAnimation()V

    goto :goto_d

    .line 150
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_11
        :pswitch_27
        :pswitch_d
        :pswitch_4d
    .end packed-switch
.end method

.method public static startAnimation(Lcom/android/phone/CallAnimation$AnimationType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-nez v0, :cond_21

    .line 137
    new-instance v0, Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;-><init>()V

    sput-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    .line 138
    :cond_21
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->init()V

    .line 139
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0, p0}, Lcom/android/phone/CallAnimation;->start(Lcom/android/phone/CallAnimation$AnimationType;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    sget-object v1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/android/phone/CallAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 541
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 516
    :pswitch_26
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    if-eq p1, v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    if-ne p1, v0, :cond_25

    .line 517
    :cond_2e
    invoke-direct {p0, v3}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    goto :goto_25

    .line 521
    :pswitch_32
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_42

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 523
    invoke-direct {p0, v2}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    goto :goto_25

    .line 524
    :cond_42
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_25

    .line 525
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_51

    .line 526
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 528
    :cond_51
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 529
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_25

    .line 531
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->onDialerClose(Z)V

    goto :goto_25

    .line 514
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_26
        :pswitch_32
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 509
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    sget-object v1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/android/phone/CallAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 505
    :pswitch_23
    return-void

    .line 493
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method
