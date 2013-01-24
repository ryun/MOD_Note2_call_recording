.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$5;,
        Lcom/android/phone/CallCard$QueryHandler;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static SDN_Number:Ljava/lang/String;

.field private static mQueryFinish:Z

.field private static mSDNCount:I

.field private static mSDNName:[Ljava/lang/String;

.field private static mSDNNumber:[Ljava/lang/String;


# instance fields
.field private FDN_Number:Ljava/lang/String;

.field private bgDuration:J

.field private fgDuration:J

.field private isDialingInLand:Z

.field private mAnimationList:[[I

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallEndTimeBlinkCount:I

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field private mCallTypeIndicator:Landroid/widget/TextView;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mConnectionIcon:Landroid/widget/ImageView;

.field private mCurrentAnimationIndex:I

.field private mCurrentAnimationType:I

.field private mCurrentPeriodMarkIndex:I

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeTitle:Landroid/widget/TextView;

.field private mEndCallString:Ljava/lang/String;

.field private mEndCallTime:J

.field private mEriInfoLabel:Landroid/widget/TextView;

.field private mExtraVol:Landroid/widget/ImageButton;

.field public mGeoDescription:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mInfoRecordingPopup:Landroid/view/ViewGroup;

.field private mIsReset:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mNetworkIcon:Landroid/widget/ImageView;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPeriodMarkList:[I

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPnlInfo:Ljava/lang/String;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mQueryHandler:Lcom/android/phone/CallCard$QueryHandler;

.field private mRecInfo:Landroid/view/View;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSocialStatus:Lcom/android/phone/SocialStatus;

.field private mTextColorCallTypeSip:I

.field mToast:Landroid/widget/Toast;

.field private mToggleRecInfo:Z

.field private mTotalCallTime:J

.field public mTotalCallTimeHandler:Landroid/os/Handler;

.field private mVisualExpression:Landroid/view/View;

.field private mVoipInUseMsg:Landroid/widget/TextView;

.field mhFDNQueryHanlder:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 106
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_8
    sput-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    .line 253
    sput-object v3, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    .line 254
    sput-object v3, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    .line 257
    sput-boolean v1, Lcom/android/phone/CallCard;->mQueryFinish:Z

    .line 258
    sput v1, Lcom/android/phone/CallCard;->mSDNCount:I

    .line 259
    sput-object v3, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    return-void

    :cond_15
    move v0, v1

    .line 106
    goto :goto_8
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    iput-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 192
    iput-object v1, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    .line 194
    iput-object v1, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 223
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 228
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    .line 230
    iput-object v1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    .line 235
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 243
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    .line 250
    iput-boolean v4, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    .line 274
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 275
    iput v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 276
    const/4 v1, 0x2

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_e2

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_f6

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    .line 287
    iput v3, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    .line 288
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_10a

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPeriodMarkList:[I

    .line 298
    new-instance v1, Lcom/android/phone/CallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 3591
    new-instance v1, Lcom/android/phone/CallCard$3;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$3;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mTotalCallTimeHandler:Landroid/os/Handler;

    .line 3649
    new-instance v1, Lcom/android/phone/CallCard$4;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$4;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    .line 395
    const-string v1, "CallCard constructor..."

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 402
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 403
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 404
    const v1, 0x7f040056

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 415
    :goto_a8
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 418
    new-instance v1, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 420
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 422
    return-void

    .line 409
    :cond_db
    const v1, 0x7f040013

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_a8

    .line 276
    :array_e2
    .array-data 0x4
        0x87t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
        0x8ct 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
    .end array-data

    :array_f6
    .array-data 0x4
        0x7ft 0x1t 0x2t 0x7ft
        0x80t 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x82t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x85t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
    .end array-data

    .line 288
    :array_10a
    .array-data 0x4
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private CallEndTimeBlink()V
    .registers 10

    .prologue
    const/16 v8, 0x64

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_b

    .line 377
    :goto_a
    return-void

    .line 348
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    if-nez v0, :cond_29

    .line 349
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 350
    iput-wide v6, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 351
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    goto :goto_a

    .line 357
    :cond_29
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 358
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 363
    :goto_33
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_73

    iget-wide v4, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_73

    .line 364
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_68

    move v4, v2

    .line 365
    :goto_45
    if-eqz v4, :cond_6a

    const-string v1, ""

    :goto_49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    if-nez v4, :cond_71

    move v0, v2

    :goto_4f
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 367
    iget v0, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 368
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 360
    :cond_65
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    goto :goto_33

    :cond_68
    move v4, v3

    .line 364
    goto :goto_45

    .line 365
    :cond_6a
    iget-wide v5, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_71
    move v0, v3

    .line 366
    goto :goto_4f

    .line 371
    :cond_73
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 374
    iput-wide v6, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 375
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    goto :goto_a
.end method

.method private GetTotalCallTime()V
    .registers 6

    .prologue
    .line 3557
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3559
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3560
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3564
    const/16 v3, 0xb

    :try_start_12
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3565
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3566
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3567
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_32

    .line 3575
    :goto_22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 3577
    iget-object v2, p0, Lcom/android/phone/CallCard;->mTotalCallTimeHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 3578
    return-void

    .line 3570
    :catch_32
    move-exception v2

    .line 3572
    const-string v2, "CallCard"

    const-string v3, "IOException in getServMQueryData!!!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_22
.end method

.method private RecInfoBlink()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x6e

    .line 380
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_10
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 382
    iget-boolean v1, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    if-eqz v1, :cond_34

    invoke-direct {p0}, Lcom/android/phone/CallCard;->showRecInfo()V

    .line 384
    :goto_25
    iget-boolean v1, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    if-nez v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    .line 385
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    :goto_33
    return-void

    .line 383
    :cond_34
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    goto :goto_25

    .line 387
    :cond_38
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    .line 388
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    goto :goto_33
.end method

.method private SetTotalCallTime()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0xff

    .line 3521
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3523
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3524
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3526
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 3528
    iget-wide v4, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 3529
    iget-wide v4, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v9

    .line 3530
    iget-wide v4, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v10

    .line 3531
    iget-wide v4, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    .line 3535
    const/16 v4, 0xb

    :try_start_40
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3536
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3539
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3540
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3542
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3543
    const/4 v4, 0x1

    aget-byte v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3544
    const/4 v4, 0x2

    aget-byte v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3545
    const/4 v4, 0x3

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_69} :catch_79

    .line 3552
    :goto_69
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mTotalCallTimeHandler:Landroid/os/Handler;

    const/16 v3, 0x3f3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 3553
    return-void

    .line 3547
    :catch_79
    move-exception v2

    .line 3549
    const-string v2, "CallCard"

    const-string v3, "IOException in getServMQueryData!!!"

    invoke-static {v2, v3, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_69
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/CallCard;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/CallCard;->RecInfoBlink()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ImageView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallCard;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/phone/CallCard;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    return-wide p1
.end method

.method static synthetic access$1314(Lcom/android/phone/CallCard;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/phone/CallCard;->mTotalCallTime:J

    return-wide v0
.end method

.method static synthetic access$1400([BI)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->byteArrayToInt([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallCard;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/phone/CallCard;->fgDuration:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CallCard;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/phone/CallCard;->bgDuration:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/phone/CallCard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/CallCard;->SetTotalCallTime()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/CallCard;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/CallCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    sput-boolean p0, Lcom/android/phone/CallCard;->mQueryFinish:Z

    return p0
.end method

.method static synthetic access$2100()I
    .registers 1

    .prologue
    .line 101
    sget v0, Lcom/android/phone/CallCard;->mSDNCount:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    sput p0, Lcom/android/phone/CallCard;->mSDNCount:I

    return p0
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    sput-object p0, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    sput-object p0, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallCard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/CallCard;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/phone/CallCard;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallContactPhoto;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCard;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/CallCard;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/phone/CallCard;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCard;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMarkList:[I

    return-object v0
.end method

.method private static byteArrayToInt([BI)J
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3582
    const-wide/16 v0, 0x0

    .line 3583
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3584
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3585
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3586
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3588
    return-wide v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 3496
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 3497
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3498
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3500
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 3501
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3503
    :cond_15
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 24
    .parameter
    .parameter

    .prologue
    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus(call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 1040
    if-nez p2, :cond_2d

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1381
    :goto_2c
    return-void

    .line 1045
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - call.state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1050
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1051
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_6f

    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_6f

    .line 1052
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 1053
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 1057
    :cond_6f
    sget-object v2, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50a

    .line 1128
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1132
    :cond_95
    :goto_95
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateTabletCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 1138
    :goto_a4
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1139
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1140
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c8

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_cd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallCard;->isBlockResetTime(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1142
    :cond_c8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 1146
    :cond_cd
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    const-string v2, "support_lgt_multi_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a2

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 1354
    :goto_e2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_11e

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    :cond_11e
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 1374
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    .line 1378
    :cond_12d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateExtraVolBtn(Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_2c

    .line 1071
    :pswitch_136
    const-string v2, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto/16 :goto_95

    .line 1089
    :pswitch_160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    goto/16 :goto_95

    .line 1097
    :pswitch_170
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 1098
    const-string v2, "GATE"

    const-string v3, "<GATE-M>CALL_MO_ALERT_IND</GATE-M>"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_17d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_95

    .line 1108
    :pswitch_186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_95

    .line 1117
    :pswitch_18f
    const-string v2, "CallCard"

    const-string v3, "displayMainCallStatus: IDLE call in the main call card!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_95

    .line 1135
    :cond_199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_a4

    .line 1152
    :cond_1a2
    const/4 v8, 0x0

    .line 1153
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1154
    const/4 v2, 0x2

    if-ne v6, v2, :cond_1fb

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1f6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_1f6

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f6

    const-string v2, "support_lgt_multi_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 1161
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 1173
    :goto_1d6
    if-nez v8, :cond_220

    .line 1174
    const-string v2, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 1181
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_e2

    .line 1163
    :cond_1f6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_1d6

    .line 1165
    :cond_1fb
    const/4 v2, 0x1

    if-eq v6, v2, :cond_201

    const/4 v2, 0x3

    if-ne v6, v2, :cond_206

    .line 1167
    :cond_201
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_1d6

    .line 1170
    :cond_206
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1d6

    .line 1183
    :cond_220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - CONN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 1186
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v5

    .line 1191
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 1192
    instance-of v2, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_3a6

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v9

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v3, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    .line 1201
    :goto_263
    const/4 v2, 0x2

    if-ne v6, v2, :cond_507

    .line 1202
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 1203
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1204
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v10

    .line 1205
    const/4 v2, 0x0

    .line 1206
    instance-of v6, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v6, :cond_3b0

    move-object v2, v9

    .line 1207
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1212
    :cond_27c
    :goto_27c
    const-string v6, "usa_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_296

    .line 1213
    if-eqz v7, :cond_296

    .line 1214
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v6

    .line 1215
    if-eqz v2, :cond_296

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v6, v11, :cond_294

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v6, v11, :cond_296

    .line 1217
    :cond_294
    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1222
    :cond_296
    if-eqz v2, :cond_507

    .line 1223
    if-eqz v7, :cond_2a3

    iget-object v6, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a3

    .line 1226
    const/4 v3, 0x1

    .line 1228
    :cond_2a3
    if-eqz v10, :cond_504

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_504

    .line 1231
    const/4 v2, 0x1

    .line 1242
    :goto_2ae
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 1243
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 1246
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "com.cequint.ecid.testRoaming"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1248
    const/4 v10, 0x1

    if-ne v7, v10, :cond_2cd

    .line 1249
    const/4 v3, 0x1

    .line 1253
    :cond_2cd
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v6

    .line 1255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bIsRoaming = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " bDataRoamingEnabled = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1258
    if-eqz v2, :cond_3bd

    .line 1259
    const-string v2, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v8, v0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 1266
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    .line 1267
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 1268
    if-eqz v2, :cond_331

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_331

    .line 1270
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1274
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    iput v9, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1275
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v9

    iput v9, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1279
    :cond_331
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 1280
    const-string v9, "updated_calling_name_presentation"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35b

    if-eqz v2, :cond_35b

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35b

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35b

    .line 1284
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1286
    :cond_35b
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_383

    .line 1287
    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v13

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v6, :cond_3b9

    const/4 v2, 0x1

    :goto_376
    and-int v16, v3, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    move-object/from16 v11, p0

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Lcom/android/phone/EcidClient;->sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z

    .line 1292
    :cond_383
    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_396

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    invoke-static {v2, v7, v3}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    .line 1295
    :cond_396
    iget-object v3, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_3bb

    const/4 v6, 0x1

    :goto_39d
    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_e2

    .line 1196
    :cond_3a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    goto/16 :goto_263

    .line 1208
    :cond_3b0
    instance-of v6, v9, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_27c

    move-object v2, v9

    .line 1209
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_27c

    .line 1287
    :cond_3b9
    const/4 v2, 0x0

    goto :goto_376

    .line 1295
    :cond_3bb
    const/4 v6, 0x0

    goto :goto_39d

    .line 1298
    :cond_3bd
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e3

    .line 1300
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v13

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v6, :cond_47e

    const/4 v2, 0x1

    :goto_3d6
    and-int v16, v3, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    move-object/from16 v11, p0

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Lcom/android/phone/EcidClient;->sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z

    .line 1306
    :cond_3e3
    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f6

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    invoke-static {v2, v9, v3}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    .line 1312
    :cond_3f6
    const-string v2, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1313
    instance-of v2, v9, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_481

    move-object v3, v9

    .line 1314
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    .line 1316
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1318
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 1319
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41e

    .line 1320
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 1322
    :cond_41e
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1323
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- displayMainCallStatus: CNAP data from Connection: , CNAP name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", CDNIP number="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Number/Name Presentation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1329
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_e2

    .line 1300
    :cond_47e
    const/4 v2, 0x0

    goto/16 :goto_3d6

    .line 1330
    :cond_481
    instance-of v2, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_4e9

    .line 1331
    check-cast v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", CDNIP number="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Number Presentation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Name Presentation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1338
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_e2

    .line 1340
    :cond_4e9
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_e2

    :cond_504
    move v2, v3

    goto/16 :goto_2ae

    :cond_507
    move v2, v3

    goto/16 :goto_2ae

    .line 1057
    :pswitch_data_50a
    .packed-switch 0x1
        :pswitch_136
        :pswitch_136
        :pswitch_136
        :pswitch_160
        :pswitch_170
        :pswitch_170
        :pswitch_186
        :pswitch_186
        :pswitch_18f
    .end packed-switch
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v8, 0x7f020191

    const/16 v7, 0x8

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displaySecondaryCallStatus(call ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2008
    if-eqz p2, :cond_30

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2009
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2168
    :cond_35
    :goto_35
    return-void

    .line 2012
    :cond_36
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2013
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_35

    .line 2016
    :cond_44
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2017
    sget-object v3, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1d4

    .line 2153
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2159
    :goto_58
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2160
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    .line 2162
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_35

    .line 2163
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2164
    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_35

    .line 2025
    :pswitch_83
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 2027
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2028
    const-string v0, "==> conference call."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2030
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_58

    .line 2035
    :cond_aa
    const-string v0, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v0, p2, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2038
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2048
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_d4

    .line 2049
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_58

    .line 2051
    :cond_d4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_58

    .line 2062
    :pswitch_db
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_1c3

    .line 2063
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 2064
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_154

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 2067
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 2068
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2073
    :goto_108
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v3, v0, p0, v4}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 2076
    iget-object v0, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2079
    iget-object v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_135

    iget-object v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_135

    .line 2081
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 2086
    :cond_135
    if-nez v2, :cond_14e

    iget-boolean v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_14e

    .line 2087
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    .line 2091
    :goto_142
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_58

    .line 2070
    :cond_149
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_108

    .line 2089
    :cond_14e
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_142

    .line 2093
    :cond_154
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 2094
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_17d

    .line 2099
    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_176

    .line 2100
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e019a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2103
    :cond_176
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_58

    .line 2107
    :cond_17d
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2108
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v3, v0, p0, v4}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 2114
    iget-object v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2116
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2118
    if-eqz v4, :cond_1d1

    iget v5, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_1d1

    .line 2120
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 2124
    :goto_1aa
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    if-nez v0, :cond_1bc

    iget-boolean v0, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_1bc

    .line 2133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_58

    .line 2135
    :cond_1bc
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_58

    .line 2142
    :cond_1c3
    const-string v0, "CallCard"

    const-string v2, "displaySecondaryCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2143
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_58

    :cond_1d1
    move-object v1, v0

    move v0, v2

    goto :goto_1aa

    .line 2017
    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_db
        :pswitch_83
    .end packed-switch
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 3803
    iget-object v0, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1b

    .line 3805
    iget-object v0, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3806
    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3807
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setToastGravity()V

    .line 3809
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3819
    :goto_1a
    return-void

    .line 3811
    :cond_1b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    .line 3812
    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3813
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setToastGravity()V

    .line 3817
    :goto_30
    iget-object v0, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 3815
    :cond_36
    iget-object v0, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/16 v2, -0x1a

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_30
.end method

.method private getAssistedDialingNumber()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3962
    :try_start_1
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "isAssistedDialingNumber"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3963
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAssisted.getBoolean"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_46

    move-result v0

    .line 3970
    :goto_2b
    return v0

    .line 3965
    :catch_2c
    move-exception v1

    .line 3966
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchFieldException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 3968
    :catch_46
    move-exception v1

    .line 3969
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const v0, 0x7f0e0197

    .line 2202
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2205
    if-nez v1, :cond_17

    .line 2206
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2290
    :goto_e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 2212
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 2215
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2216
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getCallFailedStringLTN(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v1

    .line 2217
    if-eqz v1, :cond_2f

    move-object v0, v1

    .line 2218
    goto :goto_16

    .line 2226
    :cond_2f
    sget-object v1, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_74

    goto :goto_e

    .line 2228
    :pswitch_3b
    const v0, 0x7f0e000a

    .line 2229
    goto :goto_e

    .line 2232
    :pswitch_3f
    const v0, 0x7f0e000b

    .line 2233
    goto :goto_e

    .line 2236
    :pswitch_43
    const v0, 0x7f0e000c

    .line 2237
    goto :goto_e

    .line 2240
    :pswitch_47
    const v0, 0x7f0e000d

    .line 2241
    goto :goto_e

    .line 2244
    :pswitch_4b
    const v0, 0x7f0e000e

    .line 2245
    goto :goto_e

    .line 2248
    :pswitch_4f
    const v0, 0x7f0e000f

    .line 2249
    goto :goto_e

    .line 2252
    :pswitch_53
    const v0, 0x7f0e0011

    .line 2253
    goto :goto_e

    .line 2256
    :pswitch_57
    const v0, 0x7f0e0010

    .line 2257
    goto :goto_e

    .line 2261
    :pswitch_5b
    const v0, 0x7f0e0012

    .line 2262
    goto :goto_e

    .line 2265
    :pswitch_5f
    const v0, 0x7f0e0013

    .line 2266
    goto :goto_e

    .line 2269
    :pswitch_63
    const v0, 0x7f0e0014

    .line 2270
    goto :goto_e

    .line 2273
    :pswitch_67
    const v0, 0x7f0e0015

    .line 2274
    goto :goto_e

    .line 2277
    :pswitch_6b
    const v0, 0x7f0e0016

    .line 2278
    goto :goto_e

    .line 2282
    :pswitch_6f
    const v0, 0x7f0e0025

    .line 2283
    goto :goto_e

    .line 2226
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
        :pswitch_57
        :pswitch_5b
        :pswitch_5b
        :pswitch_5f
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method

.method private getCallFailedStringLTN(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2295
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_280

    .line 2395
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 2297
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0652

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2299
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0653

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2301
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0654

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2303
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0655

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2305
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0656

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2307
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0657

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2309
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0658

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2311
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0659

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2313
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e065a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2315
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e065b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2317
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e065c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2319
    :pswitch_92
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2321
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e065e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2323
    :pswitch_ac
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2325
    :pswitch_b9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0660

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2327
    :pswitch_c6
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0661

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2329
    :pswitch_d3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0662

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2331
    :pswitch_e0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0663

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2333
    :pswitch_ed
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0664

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2335
    :pswitch_fa
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0665

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2337
    :pswitch_107
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0666

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2339
    :pswitch_114
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0667

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2341
    :pswitch_121
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0668

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2343
    :pswitch_12e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0669

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2345
    :pswitch_13b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e066a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2347
    :pswitch_148
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e066b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2349
    :pswitch_155
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e066c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2351
    :pswitch_162
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e066d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2353
    :pswitch_16f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e066e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2355
    :pswitch_17c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e066f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2357
    :pswitch_189
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0670

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2359
    :pswitch_196
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0671

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2361
    :pswitch_1a3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0672

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2363
    :pswitch_1b0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0673

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2365
    :pswitch_1bd
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0674

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2367
    :pswitch_1ca
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0675

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2369
    :pswitch_1d7
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0676

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2371
    :pswitch_1e4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0677

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2373
    :pswitch_1f1
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0678

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2375
    :pswitch_1fe
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0679

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2377
    :pswitch_20b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e067a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2379
    :pswitch_218
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e067b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2381
    :pswitch_225
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e067c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2383
    :pswitch_232
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e067d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2385
    :pswitch_23f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e067e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2387
    :pswitch_24c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e067f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2389
    :pswitch_259
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0680

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2391
    :pswitch_266
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0681

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2393
    :pswitch_273
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0682

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2295
    :pswitch_data_280
    .packed-switch 0x1
        :pswitch_49
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_19
        :pswitch_25
        :pswitch_31
        :pswitch_3d
        :pswitch_55
        :pswitch_61
        :pswitch_6d
        :pswitch_79
        :pswitch_85
        :pswitch_92
        :pswitch_9f
        :pswitch_ac
        :pswitch_b9
        :pswitch_c6
        :pswitch_d3
        :pswitch_e0
        :pswitch_ed
        :pswitch_fa
        :pswitch_107
        :pswitch_114
        :pswitch_121
        :pswitch_12e
        :pswitch_13b
        :pswitch_148
        :pswitch_155
        :pswitch_162
        :pswitch_16f
        :pswitch_17c
        :pswitch_189
        :pswitch_196
        :pswitch_1a3
        :pswitch_1b0
        :pswitch_1bd
        :pswitch_1ca
        :pswitch_1d7
        :pswitch_1e4
        :pswitch_1f1
        :pswitch_1fe
        :pswitch_20b
        :pswitch_218
        :pswitch_225
        :pswitch_232
        :pswitch_23f
        :pswitch_24c
        :pswitch_259
        :pswitch_266
        :pswitch_273
    .end packed-switch
.end method

.method private getDefaultImageResource(Lcom/android/internal/telephony/Call;)I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3280
    .line 3282
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3295
    :cond_8
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 3307
    const v0, 0x7f020191

    .line 3308
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 3311
    :goto_1d
    return v0

    .line 3298
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    aget-object v0, v0, v3

    aget v0, v0, v2

    .line 3299
    iput v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    goto :goto_1d

    .line 3303
    :pswitch_27
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    .line 3304
    iput v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    goto :goto_1d

    .line 3295
    :pswitch_data_30
    .packed-switch 0x5
        :pswitch_27
        :pswitch_27
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3362
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 3364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 3365
    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3373
    :goto_12
    const v1, 0x7f0e019b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3374
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3368
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 3371
    :cond_29
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 3703
    const/4 v0, 0x0

    .line 3706
    if-eqz p1, :cond_47

    .line 3707
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3708
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 3709
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3711
    :goto_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_4c

    move-result-object v0

    .line 3716
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneNumberLocator original number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " city :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3718
    :cond_47
    if-nez v0, :cond_4b

    .line 3719
    const-string v0, ""

    .line 3721
    :cond_4b
    return-object v0

    .line 3713
    :catch_4c
    move-exception v0

    .line 3714
    const-string v0, ""

    goto :goto_1d

    :cond_50
    move-object v1, v0

    goto :goto_15
.end method

.method private getSdnQuery()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3869
    const-string v0, "CallCard"

    const-string v3, "getSdnQuery() :: starting an async query"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v6, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_41

    .line 3873
    :cond_1e
    const-string v0, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdnQuery() ::: SIM is not available, SimState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    sput v1, Lcom/android/phone/CallCard;->mSDNCount:I

    .line 3879
    :goto_40
    return-void

    .line 3878
    :cond_41
    iget-object v0, p0, Lcom/android/phone/CallCard;->mQueryHandler:Lcom/android/phone/CallCard$QueryHandler;

    const-string v3, "content://icc/sdn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v1

    const-string v5, "number"

    aput-object v5, v4, v6

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/CallCard$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method private hideRecInfo()V
    .registers 3

    .prologue
    .line 3696
    const-string v0, "hideRecInfo"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3697
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3698
    :cond_10
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 3640
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3644
    const-string v0, "CallCard"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3645
    return-void
.end method

.method private resetAssistedDialingNumber()V
    .registers 5

    .prologue
    .line 3975
    const-string v0, "CallCard"

    const-string v1, "resetAssistedDialingNumber"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    :try_start_7
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "isAssistedDialingNumber"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3978
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_2f

    .line 3984
    :goto_14
    return-void

    .line 3979
    :catch_15
    move-exception v0

    .line 3980
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchFieldException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3981
    :catch_2f
    move-exception v0

    .line 3982
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private setElapsedTimeTitle(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1986
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1987
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1988
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e04a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1989
    const-string v2, ""

    .line 1990
    iget-boolean v2, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 1994
    :goto_25
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_35

    const/4 v0, 0x0

    :goto_2f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1997
    :cond_32
    return-void

    :cond_33
    move-object v0, v1

    .line 1993
    goto :goto_25

    .line 1995
    :cond_35
    const/4 v0, 0x4

    goto :goto_2f
.end method

.method private setToastGravity()V
    .registers 6

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 3822
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3823
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 3824
    iget-object v1, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x50

    invoke-virtual {v1, v4, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3828
    :goto_17
    return-void

    .line 3826
    :cond_18
    iget-object v1, p0, Lcom/android/phone/CallCard;->mToast:Landroid/widget/Toast;

    const/16 v2, -0x1a

    invoke-virtual {v1, v4, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_17
.end method

.method private showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .registers 9
    .parameter "call"
    .parameter "view"
    .parameter "ci"

    .prologue
    const/16 v4, 0x82

    .line 3255
    if-eqz p3, :cond_2e

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2e

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2e

    .line 3256
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 3258
    .local v0, resource:I
    iget v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    .line 3259
    invoke-static {p2, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3261
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3262
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3265
    :cond_25
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3266
    const/4 v1, 0x1

    .line 3269
    .end local v0           #resource:I
    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3321
    if-eqz p1, :cond_18

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_18

    .line 3322
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 3323
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 3327
    :goto_f
    const/4 v0, 0x1

    .line 3329
    :goto_10
    return v0

    .line 3325
    :cond_11
    const v0, 0x7f020191

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_f

    .line 3329
    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 3334
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 3335
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 3338
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 3339
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 3343
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3344
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 3346
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1a

    .line 3348
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3349
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 3350
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3355
    :goto_19
    return-void

    .line 3352
    :cond_1a
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3353
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19
.end method

.method private showRecInfo()V
    .registers 3

    .prologue
    .line 3692
    const-string v0, "showRecInfo"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3693
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3694
    :cond_f
    return-void
.end method

.method private showSecondaryCallInfo()V
    .registers 3

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2173
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 2174
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 2176
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_24

    .line 2177
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 2185
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 2186
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1004
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1007
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1008
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1015
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 1016
    return-void
.end method

.method private updateCallInfoLandscapeLayout(Lcom/android/internal/telephony/Phone$State;)V
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 767
    const-string v0, "updateCallInfoLandscapeLayout"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 769
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_103

    move v1, v2

    .line 770
    :goto_e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    .line 771
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_106

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v4, :cond_106

    move v4, v2

    .line 774
    :goto_34
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0054

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 776
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0056

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 779
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 782
    if-eqz v1, :cond_109

    move v5, v6

    :goto_57
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 783
    if-eqz v1, :cond_10c

    const/4 v5, 0x0

    :goto_5c
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 784
    if-eqz v1, :cond_110

    div-int/lit8 v5, v7, 0x2

    :goto_62
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 786
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 791
    if-nez v1, :cond_77

    if-nez v8, :cond_77

    if-eqz v4, :cond_113

    :cond_77
    move v5, v6

    :goto_78
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 792
    if-nez v1, :cond_80

    if-nez v8, :cond_80

    if-eqz v4, :cond_116

    :cond_80
    move v5, v3

    :goto_81
    invoke-virtual {v0, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 793
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 798
    const/4 v9, 0x3

    if-nez v1, :cond_98

    if-nez v8, :cond_98

    if-eqz v4, :cond_119

    :cond_98
    const v5, 0x7f090035

    :goto_9b
    invoke-virtual {v0, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 799
    const/16 v9, 0x9

    if-nez v1, :cond_a6

    if-nez v8, :cond_a6

    if-eqz v4, :cond_11b

    :cond_a6
    move v5, v3

    :goto_a7
    invoke-virtual {v0, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 800
    iget-object v5, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c7

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c7

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 806
    :cond_c7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 807
    if-nez v1, :cond_d5

    if-nez v8, :cond_d5

    if-eqz v4, :cond_11d

    :cond_d5
    :goto_d5
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 808
    if-nez v1, :cond_dd

    if-nez v8, :cond_dd

    if-eqz v4, :cond_de

    :cond_dd
    move v2, v3

    :cond_de
    invoke-virtual {v0, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 809
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    :cond_e6
    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 813
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 814
    if-nez v8, :cond_fa

    if-eqz v4, :cond_fb

    :cond_fa
    move v7, v3

    :cond_fb
    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 815
    iget-object v1, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    :cond_102
    return-void

    :cond_103
    move v1, v3

    .line 769
    goto/16 :goto_e

    :cond_106
    move v4, v3

    .line 771
    goto/16 :goto_34

    :cond_109
    move v5, v3

    .line 782
    goto/16 :goto_57

    .line 783
    :cond_10c
    const/high16 v5, 0x3f80

    goto/16 :goto_5c

    :cond_110
    move v5, v3

    .line 784
    goto/16 :goto_62

    :cond_113
    move v5, v7

    .line 791
    goto/16 :goto_78

    :cond_116
    move v5, v2

    .line 792
    goto/16 :goto_81

    :cond_119
    move v5, v3

    .line 798
    goto :goto_9b

    :cond_11b
    move v5, v2

    .line 799
    goto :goto_a7

    :cond_11d
    move v6, v7

    .line 807
    goto :goto_d5
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 721
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_8e

    move v0, v1

    .line 722
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallInfoLayout()...  ringing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_95

    .line 738
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v2, :cond_36

    const-string v2, "hardkeyboardhidden_no"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_95

    .line 740
    :cond_36
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 743
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallInfoLayout : orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 745
    if-ne v0, v1, :cond_91

    .line 746
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 747
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 749
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> callInfoLp.bottomMargin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 754
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v0, :cond_8d

    .line 757
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual {v0}, Lcom/android/phone/SocialStatus;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 759
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 764
    :cond_8d
    :goto_8d
    return-void

    .line 721
    :cond_8e
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 762
    :cond_91
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallInfoLandscapeLayout(Lcom/android/internal/telephony/Phone$State;)V

    goto :goto_8d

    :cond_95
    move v0, v1

    goto :goto_38
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter

    .prologue
    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallStateWidgets(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 1490
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1491
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 1492
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1494
    const/4 v0, 0x0

    .line 1495
    const/4 v1, 0x0

    .line 1497
    iget-object v2, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x8c

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1498
    iget-object v2, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x8c

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1500
    :cond_49
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    .line 1502
    :cond_4c
    sget-object v2, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_3f8

    .line 1582
    const-string v2, "CallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1585
    :cond_70
    :goto_70
    :pswitch_70
    const-string v2, "display_alerting_title"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1586
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v2, :cond_83

    const v0, 0x7f0e0192

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1591
    :cond_83
    const/4 v2, 0x2

    if-ne v3, v2, :cond_2dc

    .line 1592
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v2, :cond_2af

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v2

    if-eqz v2, :cond_2af

    .line 1596
    const v0, 0x7f0e0191

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1601
    :goto_9c
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1602
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v0, :cond_ac

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v0, :cond_2d3

    .line 1604
    :cond_ac
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    .line 1605
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ca

    .line 1606
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1607
    const-string v3, "CallCard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "erinfoLP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mGeoDescription : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1608
    if-eqz v0, :cond_fc

    iget-object v3, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v3, :cond_fc

    .line 1609
    const/4 v8, 0x3

    iget-object v3, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2c5

    const v3, 0x7f090045

    :goto_f9
    invoke-virtual {v0, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1611
    :cond_fc
    iget-object v3, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1613
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    :cond_10c
    :goto_10c
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_11e

    const-string v0, "usa_cdma_emergency_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 1635
    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 1638
    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> callStateLabel: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\', bluetoothIconId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_313

    .line 1664
    :cond_144
    :goto_144
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40e

    .line 1674
    :pswitch_14f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1676
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_173

    .line 1677
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1684
    :cond_173
    :goto_173
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_41a

    .line 1721
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 1733
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 1738
    :goto_188
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_426

    .line 1748
    :pswitch_193
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1753
    :goto_1a3
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 1754
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v0, :cond_3d0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v0

    if-eqz v0, :cond_3d0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->canUseHoldInVoIP()Z

    move-result v0

    if-nez v0, :cond_3d0

    .line 1756
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1762
    :cond_1c1
    :goto_1c1
    const-string v0, "period_mark_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 1764
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_432

    .line 1773
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1e6

    .line 1774
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1779
    :cond_1e6
    :goto_1e6
    return-void

    .line 1508
    :pswitch_1e7
    const-string v2, "usa_cdma_emergency_concept"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20f

    const/4 v2, 0x2

    if-ne v3, v2, :cond_20f

    .line 1509
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 1510
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 1511
    if-eqz v2, :cond_21c

    .line 1512
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1513
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    :cond_20f
    :goto_20f
    const-string v2, "assisted_dialing_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1519
    invoke-direct {p0}, Lcom/android/phone/CallCard;->resetAssistedDialingNumber()V

    goto/16 :goto_70

    .line 1515
    :cond_21c
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20f

    .line 1526
    :pswitch_224
    const v0, 0x7f0e0198

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 1531
    :pswitch_22d
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_275

    .line 1532
    const/4 v0, 0x0

    .line 1533
    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23f

    .line 1534
    const/4 v0, 0x1

    .line 1536
    :cond_23f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "assisted_dialing"

    invoke-static {v2, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26d

    invoke-direct {p0}, Lcom/android/phone/CallCard;->getAssistedDialingNumber()Z

    move-result v0

    if-eqz v0, :cond_26d

    .line 1538
    const v0, 0x7f0e0685

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1545
    :goto_25d
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1546
    const/4 v2, 0x2

    if-ne v3, v2, :cond_70

    .line 1547
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    goto/16 :goto_70

    .line 1540
    :cond_26d
    const v0, 0x7f0e0191

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25d

    .line 1543
    :cond_275
    const v0, 0x7f0e0191

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25d

    .line 1552
    :pswitch_27d
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_288

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 1556
    :cond_288
    :pswitch_288
    const v0, 0x7f0e0195

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1561
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    if-eqz v0, :cond_3f5

    .line 1562
    const v0, 0x7f0202ef

    move v1, v0

    move-object v0, v2

    goto/16 :goto_70

    .line 1573
    :pswitch_29e
    const v0, 0x7f0e0199

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 1577
    :pswitch_2a7
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    iput-object v0, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    goto/16 :goto_70

    .line 1597
    :cond_2af
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v2

    if-eqz v2, :cond_3f2

    .line 1598
    const v0, 0x7f0e0193

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_9c

    .line 1609
    :cond_2c5
    const v3, 0x7f090035

    goto/16 :goto_f9

    .line 1615
    :cond_2ca
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10c

    .line 1618
    :cond_2d3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10c

    .line 1621
    :cond_2dc
    const/4 v2, 0x1

    if-eq v3, v2, :cond_2e2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_2f7

    .line 1623
    :cond_2e2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v2

    if-eqz v2, :cond_310

    .line 1624
    const v0, 0x7f0e0193

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10c

    .line 1628
    :cond_2f7
    const-string v2, "CallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v2, v3, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_310
    move-object v2, v0

    goto/16 :goto_10c

    .line 1645
    :cond_313
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32e

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    :cond_32e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_144

    .line 1650
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1651
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0045

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1652
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_144

    .line 1666
    :pswitch_35d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_173

    .line 1670
    :pswitch_36f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_173

    .line 1690
    :pswitch_381
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 1691
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_188

    .line 1702
    :pswitch_38a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 1704
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    .line 1706
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1707
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 1709
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1710
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_188

    .line 1740
    :pswitch_3ac
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_1a3

    .line 1744
    :pswitch_3be
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_1a3

    .line 1758
    :cond_3d0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1c1

    .line 1767
    :pswitch_3d9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1e6

    .line 1768
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPeriodMarkList:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1769
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1e6

    :cond_3f2
    move-object v2, v0

    goto/16 :goto_9c

    :cond_3f5
    move-object v0, v2

    goto/16 :goto_70

    .line 1502
    :pswitch_data_3f8
    .packed-switch 0x1
        :pswitch_1e7
        :pswitch_224
        :pswitch_29e
        :pswitch_2a7
        :pswitch_22d
        :pswitch_22d
        :pswitch_27d
        :pswitch_288
        :pswitch_70
    .end packed-switch

    .line 1664
    :pswitch_data_40e
    .packed-switch 0x1
        :pswitch_36f
        :pswitch_14f
        :pswitch_14f
        :pswitch_35d
    .end packed-switch

    .line 1684
    :pswitch_data_41a
    .packed-switch 0x1
        :pswitch_381
        :pswitch_381
        :pswitch_381
        :pswitch_38a
    .end packed-switch

    .line 1738
    :pswitch_data_426
    .packed-switch 0x1
        :pswitch_3ac
        :pswitch_193
        :pswitch_193
        :pswitch_3be
    .end packed-switch

    .line 1764
    :pswitch_data_432
    .packed-switch 0x5
        :pswitch_3d9
        :pswitch_3d9
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3388
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3389
    :goto_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2f

    .line 3390
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3391
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3392
    const/high16 v2, 0x41c8

    iget v3, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 3393
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3395
    :cond_27
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3407
    :goto_2c
    return-void

    :cond_2d
    move v0, v1

    .line 3388
    goto :goto_b

    .line 3404
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2c
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .registers 10
    .parameter

    .prologue
    const v4, 0x7f0e0194

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x8

    .line 3000
    const-string v0, "updateDisplayForConference()..."

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 3002
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3003
    if-ne v2, v7, :cond_91

    .line 3012
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f0203c8

    invoke-static {v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3013
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3027
    :goto_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3036
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3037
    if-eqz v0, :cond_ca

    .line 3038
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3040
    :goto_33
    const-string v3, "%d"

    .line 3042
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0521

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3046
    if-eqz v0, :cond_c4

    .line 3047
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3059
    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    if-ne v2, v7, :cond_be

    .line 3061
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3070
    :goto_5e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3073
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 3086
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3091
    :cond_7e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_87

    .line 3092
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3093
    :cond_87
    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_90

    .line 3094
    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3097
    :cond_90
    return-void

    .line 3014
    :cond_91
    if-eq v2, v5, :cond_96

    const/4 v0, 0x3

    if-ne v2, v0, :cond_a4

    .line 3020
    :cond_96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02018f

    invoke-static {v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3021
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_24

    .line 3024
    :cond_a4
    const-string v0, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_24

    .line 3063
    :cond_be
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e

    .line 3067
    :cond_c4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e

    :cond_ca
    move v0, v1

    goto/16 :goto_33
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayForPerson("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\nnumberPresentation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " namePresentation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isTemporary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2416
    if-nez p5, :cond_40

    .line 2417
    const-string v1, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2990
    :cond_3f
    :goto_3f
    return-void

    .line 2421
    :cond_40
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2422
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2426
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 2427
    const/4 v10, 0x0

    .line 2428
    const/4 v11, 0x0

    .line 2429
    const/4 v2, 0x0

    .line 2430
    const/4 v3, 0x0

    .line 2433
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "country_detector"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/location/CountryDetector;

    .line 2435
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    .line 2436
    if-eqz p1, :cond_7b5

    .line 2459
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2461
    const-string v3, "usa_gsm_update_2nd_number"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 2462
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_99

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-nez v3, :cond_99

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p2, v3, :cond_99

    .line 2465
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-eq v3, v5, :cond_99

    .line 2466
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2467
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2472
    :cond_99
    if-eqz v1, :cond_a8

    const-string v3, "sip:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 2473
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2484
    :cond_a8
    const-string v3, "cnap_supplementary_service"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 2485
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c7

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_c7

    .line 2486
    const-string v3, "updateDisplayForPerson : exist invalid cnapName in the CallerInfo"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2487
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2491
    :cond_c7
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_952

    .line 2492
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_952

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_952

    .line 2493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson : Roaming area number = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2494
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c6

    .line 2496
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_107

    .line 2497
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallCardNumber()Ljava/lang/String;

    move-result-object v1

    .line 2501
    :cond_107
    :goto_107
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d2

    .line 2502
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v9, v1

    .line 2510
    :goto_11a
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_698

    .line 2516
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e1

    .line 2519
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 2520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> no name *or* number! displayName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v1, v2

    .line 2698
    :goto_147
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- got personUri: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', based on info.person_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 2710
    :goto_174
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2714
    const-string v3, "feature_ltn_sdnname_display"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 2715
    if-eqz p1, :cond_1b0

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b0

    .line 2719
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    sput-object v3, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    .line 2720
    sget-object v3, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallCard;->getSdnName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2722
    if-eqz v3, :cond_1b0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    .line 2724
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2725
    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2731
    :cond_1b0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2743
    if-eqz p4, :cond_7c0

    if-eqz p1, :cond_1be

    iget-boolean v3, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v3, :cond_7c0

    .line 2744
    :cond_1be
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 2745
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 2795
    :cond_1ca
    :goto_1ca
    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 2796
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_1ee

    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1ee

    .line 2797
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2801
    :cond_1ee
    if-eqz v10, :cond_86d

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_1fe

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86d

    .line 2803
    :cond_1fe
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2804
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2809
    :goto_209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- call.isGeneric(): \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " geoDescription: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2811
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_242

    .line 2813
    if-eqz v10, :cond_242

    .line 2814
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2815
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2818
    :cond_242
    const-string v1, "usa_geo_description_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25a

    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25a

    const-string v1, "cityid_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_279

    .line 2821
    :cond_25a
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v1, :cond_87f

    if-eqz v11, :cond_87f

    .line 2822
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-nez v1, :cond_876

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_876

    .line 2823
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2824
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2834
    :cond_279
    :goto_279
    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 2835
    if-eqz p1, :cond_888

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_888

    .line 2836
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    .line 2841
    :goto_28f
    sget-object v1, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_956

    .line 2863
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2869
    :cond_2a5
    :goto_2a5
    if-eqz v2, :cond_8e8

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-nez v1, :cond_8e8

    const-string v1, "feature_call_type"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e8

    .line 2870
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2871
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2877
    :goto_2c0
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2880
    const-string v1, "display_additional_caller_info"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_338

    .line 2881
    if-eqz p1, :cond_8f1

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_8f1

    if-eqz p5, :cond_8f1

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_2e1

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_8f1

    :cond_2e1
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-nez v1, :cond_8f1

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_8f1

    .line 2884
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-nez v1, :cond_314

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_314

    .line 2885
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 2886
    if-eqz v1, :cond_307

    .line 2887
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2888
    :cond_307
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SocialStatus;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    .line 2890
    :cond_314
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v1, :cond_338

    .line 2891
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    .line 2892
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V

    .line 2897
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_338

    .line 2898
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    iget-boolean v2, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/SocialStatus;->updateSocialStatusLayout(Z)V

    .line 2907
    :cond_338
    :goto_338
    const-string v1, "fdn_contact_search"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_361

    .line 2908
    if-eqz p5, :cond_361

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-nez v1, :cond_361

    if-eqz p1, :cond_361

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_361

    .line 2909
    iget-object v1, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2910
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 2914
    :cond_361
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3aa

    .line 2920
    const/4 v1, 0x0

    .line 2921
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2922
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8fe

    .line 2923
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2930
    :goto_37d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> connection  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2931
    if-eqz v1, :cond_3aa

    .line 2932
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v6, :cond_922

    const/4 v6, 0x1

    :goto_3a6
    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/phone/EcidClient;->setEcidDisplay(JLcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 2937
    :cond_3aa
    const-string v1, "cityid_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b7

    .line 2938
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/android/phone/CityIdInfo;->setCityIdDisplay(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)V

    .line 2941
    :cond_3b7
    const-string v1, "cdnip_supplementary_service"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43e

    .line 2942
    if-eqz p1, :cond_93c

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93c

    .line 2943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdnipNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2944
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_3ff

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_92f

    .line 2945
    :cond_3ff
    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_925

    .line 2946
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2950
    :goto_40b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0520

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2952
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_43e

    .line 2953
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2954
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2965
    :cond_43e
    :goto_43e
    const-string v1, "visual_expression"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_468

    .line 2966
    if-eqz p1, :cond_468

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_468

    .line 2967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update VE_ContentManager - info.sktVEUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2971
    :cond_468
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_497

    .line 2972
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_497

    .line 2973
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2974
    iget-object v1, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    const v2, 0x7f02054a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2975
    iget-object v1, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2979
    :cond_497
    const-string v1, "abbreviated_dialing_codes_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2980
    if-eqz p1, :cond_3f

    .line 2981
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2982
    invoke-static {v1}, Lcom/android/phone/SprintPhoneExtension;->isAbbreviatedDialingCodes(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2983
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/phone/SprintPhoneExtension;->getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2984
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2985
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2986
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3f

    .line 2498
    :cond_4c6
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_107

    .line 2499
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_107

    .line 2503
    :cond_4d2
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_952

    .line 2505
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto/16 :goto_11a

    .line 2521
    :cond_4e1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_506

    .line 2525
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_147

    .line 2527
    :cond_506
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_571

    .line 2529
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2530
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2531
    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_546

    .line 2544
    :goto_51c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> cnapName available: displayName \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', displayNumber \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v1, v2

    move-object v10, v9

    goto/16 :goto_147

    .line 2534
    :cond_546
    const-string v1, "number_format_with_country_iso"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56c

    .line 2535
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_55a

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_55f

    .line 2536
    :cond_55a
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_51c

    .line 2538
    :cond_55f
    invoke-virtual {v8}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_51c

    .line 2541
    :cond_56c
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_51c

    .line 2546
    :cond_571
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b7

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v1

    if-nez v1, :cond_5b7

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_5b7

    .line 2550
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LGT special case displayName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_147

    .line 2560
    :cond_5b7
    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5cd

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_666

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-eqz v1, :cond_666

    :cond_5cd
    move-object v7, v9

    .line 2577
    :goto_5ce
    if-eqz p6, :cond_94f

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_5de

    const-string v1, "usa_geo_description_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94f

    :cond_5de
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94f

    const-string v1, "cityid_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94f

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94f

    .line 2585
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2587
    :goto_5f8
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_611

    .line 2589
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v3, :cond_611

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v3, :cond_611

    .line 2590
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_694

    .line 2592
    const/4 v1, 0x0

    .line 2598
    :cond_611
    :goto_611
    const-string v3, "enable_display_vmtelnum_duringcall"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63c

    .line 2600
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63c

    if-nez v1, :cond_63c

    .line 2602
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set displayNumber of Voicemail displayNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2606
    :cond_63c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', displayNumber \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v10, v1

    move-object v1, v2

    goto/16 :goto_147

    .line 2564
    :cond_666
    const-string v1, "number_format_with_country_iso"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68e

    .line 2565
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_67a

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_680

    .line 2566
    :cond_67a
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5ce

    .line 2568
    :cond_680
    invoke-virtual {v8}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5ce

    .line 2571
    :cond_68e
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5ce

    .line 2594
    :cond_694
    const-string v1, ""

    goto/16 :goto_611

    .line 2612
    :cond_698
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_6bd

    .line 2616
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 2617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_147

    .line 2620
    :cond_6bd
    const-string v1, "cnap_supplementary_service"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_775

    .line 2621
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_766

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_766

    .line 2622
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75e

    .line 2623
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2624
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 2629
    :goto_6df
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v1, :cond_6e7

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v1, :cond_705

    .line 2630
    :cond_6e7
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_6f3

    .line 2631
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 2632
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 2634
    :cond_6f3
    new-instance v1, Lcom/android/phone/CallCard$2;

    const-wide/32 v3, 0x493e0

    const-wide/16 v5, 0x3e8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;JJLjava/lang/String;)V

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 2648
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2664
    :cond_705
    :goto_705
    const-string v1, "feature_ltn_auto_csp"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_778

    .line 2665
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_71b

    .line 2666
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getLastDialedNumber()Ljava/lang/String;

    move-result-object v10

    .line 2668
    :cond_71b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94c

    .line 2669
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2691
    :cond_723
    :goto_723
    const-string v1, "usa_geo_description_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_949

    .line 2692
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2693
    :goto_72d
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 2694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==>  name is present in CallerInfo: info.geoDescription \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', info.phoneLabel \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v11, v1

    move-object v10, v9

    move-object v1, v2

    goto/16 :goto_147

    .line 2626
    :cond_75e
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2627
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    goto/16 :goto_6df

    .line 2653
    :cond_766
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_772

    .line 2654
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 2655
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 2657
    :cond_772
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_705

    .line 2660
    :cond_775
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_705

    .line 2672
    :cond_778
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_723

    .line 2675
    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_723

    .line 2678
    const-string v1, "number_format_with_country_iso"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7af

    .line 2679
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_79c

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_7a1

    .line 2680
    :cond_79c
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_723

    .line 2682
    :cond_7a1
    invoke-virtual {v8}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_723

    .line 2685
    :cond_7af
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_723

    .line 2702
    :cond_7b5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v3

    goto/16 :goto_174

    .line 2746
    :cond_7c0
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1ca

    .line 2749
    if-eqz p1, :cond_7d7

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v3, :cond_7d7

    .line 2750
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v1, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1ca

    .line 2751
    :cond_7d7
    if-eqz p1, :cond_7ee

    iget-boolean v3, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_7ee

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7ee

    .line 2752
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1ca

    .line 2753
    :cond_7ee
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v3, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    if-nez v3, :cond_1ca

    .line 2754
    if-nez v1, :cond_80c

    .line 2755
    const-string v1, "CallCard"

    const-string v3, "personPri is null. Just use Unknown picture."

    invoke-static {v1, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1ca

    .line 2757
    :cond_80c
    iget-object v3, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83c

    .line 2758
    sget-boolean v3, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v3, :cond_1ca

    .line 2759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested Uri ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is being loaded already."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Ignoret the duplicate load request."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_1ca

    .line 2766
    :cond_83c
    iput-object v1, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2769
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 2771
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 2774
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {v5, v6, p1, v0}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v3, v4, v1, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 2779
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2780
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1ca

    .line 2806
    :cond_86d
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_209

    .line 2826
    :cond_876
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_279

    .line 2829
    :cond_87f
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_279

    .line 2838
    :cond_888
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    goto/16 :goto_28f

    .line 2846
    :pswitch_88e
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d9

    .line 2847
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8a5

    .line 2848
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2850
    :cond_8a5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 2851
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2852
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2857
    :goto_8b6
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a5

    .line 2859
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x32

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2a5

    .line 2854
    :cond_8d9
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2855
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b6

    .line 2873
    :cond_8e8
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2c0

    .line 2902
    :cond_8f1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v1, :cond_338

    .line 2903
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    goto/16 :goto_338

    .line 2924
    :cond_8fe
    const/4 v3, 0x1

    if-ne v2, v3, :cond_907

    .line 2925
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto/16 :goto_37d

    .line 2928
    :cond_907
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_37d

    .line 2932
    :cond_922
    const/4 v6, 0x0

    goto/16 :goto_3a6

    .line 2948
    :cond_925
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    goto/16 :goto_40b

    .line 2958
    :cond_92f
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_43e

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_43e

    .line 2962
    :cond_93c
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_43e

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_43e

    :cond_949
    move-object v1, v11

    goto/16 :goto_72d

    :cond_94c
    move-object v9, v10

    goto/16 :goto_723

    :cond_94f
    move-object v1, v10

    goto/16 :goto_5f8

    :cond_952
    move-object v9, v1

    goto/16 :goto_11a

    .line 2841
    nop

    :pswitch_data_956
    .packed-switch 0x5
        :pswitch_88e
        :pswitch_88e
        :pswitch_88e
        :pswitch_88e
    .end packed-switch
.end method

.method private updateElapsedTimeWidget(J)V
    .registers 8
    .parameter

    .prologue
    .line 1937
    .line 1938
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1939
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v1, v0

    .line 1943
    :goto_b
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_5d

    .line 1944
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1952
    :goto_16
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_26
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_58

    .line 1955
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_58

    .line 1956
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1957
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1958
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1961
    :cond_58
    return-void

    .line 1941
    :cond_59
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_b

    .line 1946
    :cond_5d
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1947
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWithTitle(J)V

    goto :goto_16

    .line 1949
    :cond_69
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method private updateElapsedTimeWithTitle(J)V
    .registers 8
    .parameter

    .prologue
    .line 1968
    const-string v0, ""

    .line 1969
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 1970
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1971
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0e04a3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1972
    iget-boolean v3, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 1976
    :goto_21
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1977
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1979
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1983
    :goto_39
    return-void

    :cond_3a
    move-object v0, v1

    .line 1975
    goto :goto_21

    .line 1981
    :cond_3c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 922
    const-string v0, "updateForegroundCall()..."

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 925
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 926
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 928
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1e

    .line 929
    const-string v2, "updateForegroundCall: no active call, show holding call"

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    .line 942
    :cond_1e
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 944
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 946
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 947
    const/4 v4, 0x2

    if-ne v3, v4, :cond_58

    .line 948
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v3, :cond_44

    .line 949
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 950
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 967
    :cond_43
    :goto_43
    return-void

    .line 951
    :cond_44
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_54

    .line 952
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_43

    .line 957
    :cond_54
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_43

    .line 959
    :cond_58
    if-eq v3, v5, :cond_5d

    const/4 v4, 0x3

    if-ne v3, v4, :cond_43

    .line 960
    :cond_5d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_71

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 962
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_43

    .line 964
    :cond_71
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_43
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 1027
    const-string v0, "updateNoCall()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 1029
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 1030
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 1031
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 3110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhotoForCallState("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3113
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3114
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3115
    iput v7, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 3116
    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 3121
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3122
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_17c

    .line 3171
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3172
    const/4 v4, 0x2

    if-ne v0, v4, :cond_e3

    .line 3173
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v4, :cond_de

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 3176
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3188
    :goto_66
    if-eqz v0, :cond_176

    .line 3189
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 3190
    instance-of v4, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_109

    .line 3191
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3198
    :goto_72
    if-eqz v0, :cond_76

    .line 3199
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 3210
    :cond_76
    if-nez v1, :cond_16a

    .line 3211
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/phone/CallCard;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3252
    :cond_96
    :goto_96
    return-void

    .line 3127
    :pswitch_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3130
    if-eqz v0, :cond_d8

    .line 3131
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 3132
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_a9

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_179

    .line 3134
    :cond_a9
    const-string v0, "display_busy_picture"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 3135
    const v0, 0x7f0203c7

    :goto_b4
    move v1, v0

    .line 3246
    :cond_b5
    :goto_b5
    :pswitch_b5
    if-eqz v1, :cond_96

    .line 3247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- overrriding photo image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3248
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3250
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_96

    .line 3139
    :cond_d8
    const-string v0, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_b5

    .line 3178
    :cond_de
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_66

    .line 3180
    :cond_e3
    if-eq v0, v8, :cond_e8

    const/4 v4, 0x3

    if-ne v0, v4, :cond_ee

    .line 3182
    :cond_e8
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_66

    .line 3185
    :cond_ee
    const-string v4, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v8}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v2

    goto/16 :goto_66

    .line 3192
    :cond_109
    instance-of v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_176

    .line 3193
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_72

    .line 3216
    :cond_113
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 3217
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v3, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    if-nez v3, :cond_b5

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v3

    if-ne v3, v9, :cond_b5

    .line 3219
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v3

    .line 3220
    if-nez v3, :cond_147

    .line 3221
    const-string v0, "CallCard"

    const-string v2, "photoUri became null. Show default avatar icon"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f020191

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3234
    :goto_140
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_b5

    .line 3224
    :cond_147
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_150

    .line 3225
    const-string v4, "start asynchronous load inside updatePhotoForCallState()"

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3227
    :cond_150
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 3229
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 3230
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v5, v6, v0, v2}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v8, v4, v3, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_140

    .line 3239
    :cond_16a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3240
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_96

    :cond_176
    move-object v0, v2

    goto/16 :goto_72

    :cond_179
    move v0, v1

    goto/16 :goto_b4

    .line 3122
    :pswitch_data_17c
    .packed-switch 0x3
        :pswitch_b5
        :pswitch_97
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    .line 974
    const-string v1, "updateRingingCall()..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 976
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 979
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 985
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 986
    return-void
.end method

.method private updateTabletCallInfoLayout(Lcom/android/internal/telephony/Phone$State;Lcom/android/internal/telephony/Call;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const v7, 0x7f090034

    const/16 v12, 0xe

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 822
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_4a

    move v3, v4

    .line 823
    :goto_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v9

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallInfoLayout()...  isRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallInfoLayout()...  isDialing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 916
    :goto_49
    return-void

    :cond_4a
    move v3, v5

    .line 822
    goto :goto_d

    .line 833
    :cond_4c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_1c0

    .line 836
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move v6, v0

    .line 838
    :goto_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallInfoLayout : orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 842
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1}, Lcom/android/phone/InCallContactPhoto;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 844
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 847
    if-eqz v3, :cond_f3

    .line 848
    iget-object v10, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    if-eqz v10, :cond_92

    iget-object v10, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    :cond_92
    :goto_92
    if-eq v6, v4, :cond_9e

    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isRCVmode()Z

    move-result v6

    if-eqz v6, :cond_ff

    if-nez v3, :cond_ff

    .line 858
    :cond_9e
    iput-boolean v5, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    .line 859
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d0058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v5, v3, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 861
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 866
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 867
    invoke-virtual {v1, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 868
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 872
    invoke-virtual {v2, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 873
    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 874
    invoke-virtual {v2, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 875
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 879
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_49

    .line 851
    :cond_f3
    iget-object v10, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    if-eqz v10, :cond_92

    iget-object v10, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_92

    .line 881
    :cond_ff
    iput-boolean v9, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    .line 883
    if-eqz v3, :cond_167

    move v6, v5

    .line 885
    :goto_104
    invoke-virtual {v0, v5, v6, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 886
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    if-eqz v3, :cond_176

    move v6, v5

    .line 891
    :goto_10f
    if-eqz v3, :cond_186

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0d009e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 895
    :goto_11f
    invoke-virtual {v1, v6, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 896
    const/16 v6, 0x9

    if-eqz v3, :cond_195

    move v0, v5

    :goto_127
    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 897
    if-eqz v3, :cond_197

    move v0, v4

    :goto_12d
    invoke-virtual {v1, v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 898
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    if-eqz v3, :cond_199

    move v1, v5

    .line 903
    :goto_138
    if-eqz v3, :cond_1a9

    move v0, v5

    .line 906
    :goto_13b
    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 907
    if-eqz v3, :cond_1b8

    move v0, v5

    :goto_141
    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 908
    if-eqz v3, :cond_1ba

    :goto_146
    invoke-virtual {v2, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 909
    if-eqz v3, :cond_14c

    move v5, v4

    :cond_14c
    invoke-virtual {v2, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 910
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1bc

    move v1, v4

    :goto_15b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 914
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    if-eqz v3, :cond_1be

    :goto_162
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_49

    .line 883
    :cond_167
    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0058

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    goto :goto_104

    .line 889
    :cond_176
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0d009d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v6, v0

    goto :goto_10f

    .line 891
    :cond_186
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0d0065

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_11f

    :cond_195
    move v0, v4

    .line 896
    goto :goto_127

    :cond_197
    move v0, v5

    .line 897
    goto :goto_12d

    .line 901
    :cond_199
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_138

    .line 903
    :cond_1a9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0d00a0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_13b

    :cond_1b8
    move v0, v7

    .line 907
    goto :goto_141

    :cond_1ba
    move v7, v5

    .line 908
    goto :goto_146

    :cond_1bc
    move v1, v8

    .line 911
    goto :goto_15b

    :cond_1be
    move v4, v8

    .line 914
    goto :goto_162

    :cond_1c0
    move v6, v4

    goto/16 :goto_59
.end method

.method private updateTabletCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter

    .prologue
    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallStateWidgets(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1801
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1802
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1803
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1805
    const/4 v1, 0x0

    .line 1806
    const/4 v0, 0x0

    .line 1808
    sget-object v6, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1ae

    .line 1854
    :pswitch_39
    const-string v6, "CallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTabletCallStateWidgets: unexpected call state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 1859
    :goto_54
    const/4 v6, 0x2

    if-ne v5, v6, :cond_127

    .line 1860
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_112

    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_112

    .line 1864
    const v0, 0x7f0e0191

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1878
    :cond_6c
    :goto_6c
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string v5, "usa_cdma_emergency_concept"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 1882
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 1885
    :cond_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> callStateLabel: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', bluetoothIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1889
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 1890
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1891
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1892
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 1896
    :cond_b3
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 1898
    sget-object v1, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c4

    .line 1929
    :cond_c2
    :goto_c2
    return-void

    :pswitch_c3
    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 1811
    goto :goto_54

    :pswitch_c7
    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 1816
    goto :goto_54

    .line 1826
    :pswitch_cb
    const v1, 0x7f0e0191

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1827
    const-string v6, "ctc_call_time_duration"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a8

    .line 1828
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1a8

    .line 1829
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    move v9, v0

    move-object v0, v1

    move v1, v9

    goto/16 :goto_54

    .line 1834
    :pswitch_e5
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 1835
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 1838
    :cond_f0
    :pswitch_f0
    const v1, 0x7f0e0195

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1843
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v6

    if-eqz v6, :cond_1a8

    .line 1844
    const v0, 0x7f0202ef

    move v9, v0

    move-object v0, v1

    move v1, v9

    goto/16 :goto_54

    .line 1849
    :pswitch_107
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1850
    iput-object v1, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 1851
    goto/16 :goto_54

    .line 1865
    :cond_112
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1866
    const v0, 0x7f0e0193

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 1868
    :cond_127
    const/4 v6, 0x1

    if-eq v5, v6, :cond_12d

    const/4 v6, 0x3

    if-ne v5, v6, :cond_142

    .line 1870
    :cond_12d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1871
    const v0, 0x7f0e0193

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 1875
    :cond_142
    const-string v6, "CallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_6c

    .line 1902
    :pswitch_15d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1903
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 1904
    const-wide/16 v0, 0x3e8

    div-long v0, v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_c2

    .line 1913
    :pswitch_170
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1914
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1916
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1917
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(Z)V

    .line 1918
    const-wide/16 v1, 0x3e8

    div-long v1, v3, v1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1919
    const-wide/16 v1, 0x3e8

    div-long v1, v3, v1

    iput-wide v1, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 1921
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_c2

    .line 1922
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c2

    :cond_1a8
    move v9, v0

    move-object v0, v1

    move v1, v9

    goto/16 :goto_54

    .line 1808
    nop

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_39
        :pswitch_39
        :pswitch_107
        :pswitch_cb
        :pswitch_cb
        :pswitch_e5
        :pswitch_f0
        :pswitch_c3
    .end packed-switch

    .line 1898
    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_170
    .end packed-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3465
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_14

    .line 3466
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3467
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3492
    :cond_13
    :goto_13
    return v2

    .line 3471
    :cond_14
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 3472
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3475
    :cond_21
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3476
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3477
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3479
    :cond_48
    const-string v0, "feature_call_type"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3480
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3483
    :cond_55
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 3484
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_66

    .line 3485
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3487
    :cond_66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 3488
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 3489
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_13
.end method

.method enableVisualExpression(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 3833
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3834
    :cond_c
    return-void

    .line 3833
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public getSdnList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3940
    .line 3942
    sget-object v2, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_13

    sget-object v2, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_17

    :cond_13
    move-object v0, v1

    .line 3956
    :goto_14
    return-object v0

    .line 3945
    :cond_15
    add-int/lit8 v0, v0, 0x1

    :cond_17
    sget-object v2, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_62

    .line 3946
    sget-object v2, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3947
    sget-object v1, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 3948
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ** getSdnList () : mSDNNumber["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\tmSDNName : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3949
    goto :goto_14

    :cond_62
    move-object v0, v1

    goto :goto_14
.end method

.method public getSdnName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3846
    .line 3847
    const/4 v0, 0x0

    .line 3849
    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3864
    :cond_9
    :goto_9
    return-object v0

    .line 3853
    :cond_a
    sget-boolean v1, Lcom/android/phone/CallCard;->mQueryFinish:Z

    if-nez v1, :cond_18

    .line 3855
    new-instance v1, Lcom/android/phone/CallCard$QueryHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/CallCard$QueryHandler;-><init>(Lcom/android/phone/CallCard;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mQueryHandler:Lcom/android/phone/CallCard$QueryHandler;

    .line 3856
    invoke-direct {p0}, Lcom/android/phone/CallCard;->getSdnQuery()V

    .line 3859
    :cond_18
    const-string v1, "CallCard"

    const-string v2, "getSdn"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    sget v1, Lcom/android/phone/CallCard;->mSDNCount:I

    if-lez v1, :cond_9

    .line 3862
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallCard;->getSdnList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method getVisualExpressionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    return-object v0
.end method

.method public hideCallCardElements()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 3446
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3447
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3448
    return-void
.end method

.method invisibleRecInfoView()V
    .registers 3

    .prologue
    const/16 v1, 0x6e

    .line 3686
    const-string v0, "invisibleRecInfoView"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3687
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3688
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    .line 3689
    return-void
.end method

.method public isBlockResetTime(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Z
    .registers 8
    .parameter "phone"
    .parameter "call"

    .prologue
    const/4 v2, 0x1

    .line 3730
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3731
    .local v0, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone.getForegroundCall().getState()=%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackgroundCall().getState()=%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3734
    if-eqz v0, :cond_61

    .line 3735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fgConnections size()=%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3738
    :cond_61
    if-eqz v0, :cond_6a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_6a

    .line 3748
    :cond_69
    :goto_69
    return v2

    .line 3742
    :cond_6a
    const/4 v1, 0x0

    .line 3743
    .local v1, latestConn:Lcom/android/internal/telephony/Connection;
    if-eqz p2, :cond_71

    .line 3744
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3745
    :cond_71
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_69

    .line 3748
    :cond_79
    const/4 v2, 0x0

    goto :goto_69
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 493
    :goto_7
    return-void

    .line 485
    :pswitch_8
    const-string v0, "extra_volume_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 486
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 489
    :cond_1f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->toggleExtraVolBtn()V

    goto :goto_7

    .line 483
    nop

    :pswitch_data_24
    .packed-switch 0x7f09004a
        :pswitch_8
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 515
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 516
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 517
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 518
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 519
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 520
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mInfoRecordingPopup:Landroid/view/ViewGroup;

    .line 523
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 525
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 529
    :cond_73
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 530
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    .line 531
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 532
    const-string v0, "period_mark_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 533
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    .line 536
    :cond_a4
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 538
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 539
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    .line 543
    :cond_c2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 546
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 547
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 548
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 551
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 552
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 553
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_28a

    .line 554
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 560
    :cond_110
    :goto_110
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 561
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/16 v1, 0xa0

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 562
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 563
    iput-boolean v5, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 565
    :cond_134
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 566
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    .line 568
    :cond_147
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 569
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 570
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 572
    :cond_15f
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 573
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    .line 575
    :cond_172
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18a

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18a

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 578
    :cond_18a
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    .line 580
    :cond_195
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 581
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    .line 583
    :cond_1a8
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 584
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 586
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 587
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 592
    :cond_1cf
    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 594
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    .line 595
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    :cond_1ef
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 598
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 600
    :cond_202
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 601
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 602
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 603
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    .line 606
    :cond_21f
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 607
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 608
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_291

    .line 609
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 615
    :cond_248
    :goto_248
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 616
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 618
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_276

    .line 619
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 620
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    :cond_276
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 624
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    .line 626
    :cond_289
    return-void

    .line 557
    :cond_28a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_110

    .line 612
    :cond_291
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_248
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2f

    .line 1447
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1452
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1454
    check-cast p4, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 1455
    iget-object v0, p4, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1456
    iget-object v1, p4, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 1457
    iget-object v2, p4, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 1459
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1460
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 1461
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1465
    if-eqz p2, :cond_37

    .line 1466
    invoke-static {v1, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1478
    :cond_29
    :goto_29
    if-nez p1, :cond_2e

    .line 1479
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1481
    :cond_2e
    return-void

    .line 1450
    :cond_2f
    const-string v0, "CallCard"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1467
    :cond_37
    if-eqz p3, :cond_3d

    .line 1468
    invoke-static {v1, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_29

    .line 1470
    :cond_3d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1471
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_29

    .line 1474
    const v0, 0x7f020191

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_29
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1390
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_a4

    .line 1394
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1397
    check-cast p2, Lcom/android/internal/telephony/Connection;

    .line 1398
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1399
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1400
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b9

    .line 1401
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1404
    :goto_49
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1407
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 1408
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 1409
    if-eqz v6, :cond_60

    .line 1411
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 1412
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 1414
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: NumberPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "namPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", contactExists="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1421
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_9d

    .line 1422
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1426
    :goto_99
    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1432
    :cond_9c
    :goto_9c
    return-void

    .line 1424
    :cond_9d
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_99

    .line 1428
    :cond_a4
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_9c

    .line 1429
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1430
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9c

    :cond_b9
    move-object v6, p2

    goto :goto_49
.end method

.method public onTickForCallTimeElapsed(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 432
    return-void
.end method

.method resetCallTime(Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCallTime()... phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3756
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3758
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3759
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    .line 3760
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallCard;->isBlockResetTime(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3761
    const/4 v0, 0x0

    .line 3763
    :goto_2a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 3770
    :goto_2e
    if-eqz v2, :cond_3a

    .line 3771
    if-eqz v0, :cond_35

    .line 3772
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->resetConnectTimeReal()V

    .line 3773
    :cond_35
    const-string v0, "resetConnectTimeReal()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3775
    :cond_3a
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 3776
    return-void

    .line 3764
    :cond_3d
    if-ne v3, v1, :cond_46

    .line 3765
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_2e

    .line 3768
    :cond_46
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v2, v0

    move v0, v1

    goto :goto_2e

    :cond_61
    move v0, v1

    goto :goto_2a
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 426
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .registers 2
    .parameter "clickable"

    .prologue
    .line 2199
    return-void
.end method

.method public startMinuteTone(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter

    .prologue
    .line 3780
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3781
    const-string v1, "min_minder"

    .line 3783
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "min_minder"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMinuteTone, mCallTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3785
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    .line 3786
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->isMinuteMinderLaunched()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3787
    const-string v0, "already start when dialing out"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3788
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 3789
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 3800
    :cond_4b
    :goto_4b
    return-void

    .line 3792
    :cond_4c
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 3793
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 3794
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3795
    const-string v0, "startMinuteMinderAlarm()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3796
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto :goto_4b
.end method

.method stopTimer()V
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 437
    return-void
.end method

.method toggleExtraVolBtn()V
    .registers 6

    .prologue
    const v4, 0x7f0e037c

    const/4 v3, 0x1

    .line 440
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 441
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 443
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 444
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->displayToast(Ljava/lang/String;)V

    .line 455
    :goto_21
    return-void

    .line 445
    :cond_22
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 446
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->displayToast(Ljava/lang/String;)V

    goto :goto_21

    .line 448
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_66

    move v2, v3

    :goto_45
    invoke-static {v4, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 450
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 451
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_68

    const v2, 0x7f0e036c

    :goto_5e
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->displayToast(Ljava/lang/String;)V

    goto :goto_21

    .line 448
    :cond_66
    const/4 v2, 0x0

    goto :goto_45

    .line 451
    :cond_68
    const v2, 0x7f0e036b

    goto :goto_5e
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "call"

    .prologue
    .line 1788
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1789
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1792
    return-void
.end method

.method updateExtraVolBtn(Lcom/android/internal/telephony/Call$State;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 458
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4e

    .line 459
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_extra_volume"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 460
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_extra_vol"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 464
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_2a

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_60

    :cond_2a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_60

    .line 466
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 467
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    const v4, 0x7f0202aa

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_44
    move v0, v2

    .line 474
    :goto_45
    if-eqz v0, :cond_58

    if-ne v3, v2, :cond_58

    .line 475
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 480
    :cond_4e
    :goto_4e
    return-void

    .line 469
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    const v4, 0x7f0202a9

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_44

    .line 477
    :cond_58
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4e

    :cond_60
    move v0, v1

    goto :goto_45
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 7
    .parameter

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 638
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 640
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 644
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 645
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 655
    :goto_37
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_51

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_51

    .line 660
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 714
    :cond_4c
    :goto_4c
    return-void

    .line 647
    :cond_4d
    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->updateTabletCallInfoLayout(Lcom/android/internal/telephony/Phone$State;Lcom/android/internal/telephony/Call;)V

    goto :goto_37

    .line 661
    :cond_51
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_61

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_8a

    .line 671
    :cond_61
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 672
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 673
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 674
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 675
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    goto :goto_4c

    .line 677
    :cond_86
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    goto :goto_4c

    .line 684
    :cond_8a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v0, :cond_96

    .line 692
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_4c

    .line 706
    :cond_96
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    .line 707
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 708
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 709
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 710
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    goto :goto_4c
.end method

.method public updateTotalCallTime()V
    .registers 4

    .prologue
    .line 3508
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3509
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3510
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3512
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/CallCard;->fgDuration:J

    .line 3513
    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->bgDuration:J

    .line 3514
    const-string v0, "CallCard"

    const-string v1, "[#######] CallCard.java updateTotalCallTime() "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3515
    invoke-direct {p0}, Lcom/android/phone/CallCard;->GetTotalCallTime()V

    .line 3517
    return-void
.end method

.method visibleRecInfoView()V
    .registers 3

    .prologue
    const/16 v1, 0x6e

    .line 3681
    const-string v0, "visibleRecInfoView"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3683
    :cond_14
    return-void
.end method
