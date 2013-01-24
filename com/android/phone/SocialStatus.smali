.class public Lcom/android/phone/SocialStatus;
.super Landroid/widget/FrameLayout;
.source "SocialStatus.java"

# interfaces
.implements Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;


# instance fields
.field private mBirthClosePanel:Landroid/widget/LinearLayout;

.field private mBirthCloseText:Landroid/widget/TextView;

.field private mBirthOpenPanel:Landroid/widget/LinearLayout;

.field private mBirthOpenText:Landroid/widget/TextView;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mHeightClose:F

.field private mHeightOpen:F

.field private mRatio:F

.field private mSnsAnimator:Landroid/widget/RelativeLayout;

.field private mSnsCloseBody:Landroid/widget/TextView;

.field private mSnsCloseContainer:Landroid/widget/RelativeLayout;

.field private mSnsCloseIcon:Landroid/widget/ImageView;

.field private mSnsClosePanel:Landroid/widget/LinearLayout;

.field private mSnsCloseToggleBtn:Landroid/widget/ImageView;

.field private mSnsOpenBody:Landroid/widget/TextView;

.field private mSnsOpenBodyScroll:Landroid/widget/ScrollView;

.field private mSnsOpenContainer:Landroid/widget/LinearLayout;

.field private mSnsOpenIcon:Landroid/widget/ImageView;

.field private mSnsOpenPanel:Landroid/widget/LinearLayout;

.field private mSnsOpenToggleBtn:Landroid/widget/ImageView;

.field private rotate:Landroid/view/animation/RotateAnimation;

.field private trans:Landroid/view/animation/TranslateAnimation;

.field private trans2:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object p1, p0, Lcom/android/phone/SocialStatus;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput-object p1, p0, Lcom/android/phone/SocialStatus;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-object p1, p0, Lcom/android/phone/SocialStatus;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SocialStatus;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SocialStatus;)Landroid/view/animation/RotateAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SocialStatus;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SocialStatus;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/16 v2, 0x17a

    .line 125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 129
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 130
    const v1, 0x7f09020a

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    .line 131
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v1, v2, :cond_10d

    const/4 v1, -0x2

    :goto_2a
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    const-string v1, "SocialStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const v1, 0x7f09020f

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    .line 137
    const v1, 0x7f09020b

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    .line 138
    const v1, 0x7f090210

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenIcon:Landroid/widget/ImageView;

    .line 139
    const v1, 0x7f090211

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenBodyScroll:Landroid/widget/ScrollView;

    .line 140
    const v1, 0x7f090212

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenBody:Landroid/widget/TextView;

    .line 141
    const v1, 0x7f09020c

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    .line 142
    const v1, 0x7f09020e

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthOpenText:Landroid/widget/TextView;

    .line 143
    const v1, 0x7f090213

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    .line 144
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/SocialStatus$1;

    invoke-direct {v2, p0}, Lcom/android/phone/SocialStatus$1;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_ad
    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    .line 153
    const v1, 0x7f090206

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    .line 154
    const v1, 0x7f090208

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f090207

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    .line 156
    const v1, 0x7f090209

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    .line 157
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    const v2, 0x7f0201f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/SocialStatus$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SocialStatus$2;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    .line 165
    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Lcom/android/phone/SocialStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    .line 166
    return-void

    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_10d
    move v1, v2

    .line 132
    goto/16 :goto_2a
.end method

.method private updateAdditionalInformation(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .registers 12
    .parameter "additionalCallerInfo"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 278
    const-string v3, "SocialStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInformation : additionalCallerInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p1, :cond_b0

    .line 280
    invoke-virtual {p0, v7}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    .line 281
    iget-object v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    if-eqz v3, :cond_9a

    .line 282
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenBody:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenIcon:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :goto_53
    if-eqz p1, :cond_a5

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a5

    .line 296
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v0, v7

    .line 302
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 305
    .local v2, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v1, v3, v4

    .line 307
    .local v1, remainedDays:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthOpenText:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v1           #remainedDays:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_99
    return-void

    .line 290
    :cond_9a
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_53

    .line 310
    :cond_a5
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_99

    .line 314
    :cond_b0
    invoke-virtual {p0, v8}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    goto :goto_99
.end method

.method private updateAdditionalInformationTablet(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .registers 11
    .parameter "additionalCallerInfo"

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 319
    const-string v3, "SocialStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInformationTablet : additionalCallerInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz p1, :cond_82

    .line 321
    invoke-virtual {p0, v7}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    .line 322
    iget-object v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    if-eqz v3, :cond_75

    .line 323
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :goto_3c
    if-eqz p1, :cond_7b

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7b

    .line 332
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v0, v7

    .line 337
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 340
    .local v2, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v1, v3, v4

    .line 342
    .local v1, remainedDays:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v1           #remainedDays:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_74
    return-void

    .line 327
    :cond_75
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3c

    .line 344
    :cond_7b
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_74

    .line 347
    :cond_82
    invoke-virtual {p0, v6}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    goto :goto_74
.end method


# virtual methods
.method public closeSocialStatus()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x3e8

    const/high16 v10, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    const v3, 0x7f0201f3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v8, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    .line 234
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 235
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 238
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v5, 0x4334

    move v4, v2

    move v6, v1

    move v7, v10

    move v8, v1

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v3, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    .line 240
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/phone/SocialStatus$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SocialStatus$4;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 264
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 120
    invoke-direct {p0}, Lcom/android/phone/SocialStatus;->init()V

    .line 121
    return-void
.end method

.method public onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .registers 5
    .parameter "additionalCallerInfo"

    .prologue
    .line 268
    const-string v0, "SocialStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete : additionalCallerInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 270
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 271
    invoke-direct {p0, p1}, Lcom/android/phone/SocialStatus;->updateAdditionalInformation(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    .line 275
    :goto_24
    return-void

    .line 273
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/phone/SocialStatus;->updateAdditionalInformationTablet(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    goto :goto_24
.end method

.method public openSocialStatus()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x3e8

    const/high16 v10, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v3, :cond_cd

    .line 180
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    const v3, 0x7f0201f4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/SocialStatus;->mHeightOpen:F

    .line 185
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/SocialStatus;->mHeightClose:F

    .line 186
    const/high16 v0, 0x3f80

    iget v3, p0, Lcom/android/phone/SocialStatus;->mHeightClose:F

    iget v4, p0, Lcom/android/phone/SocialStatus;->mHeightOpen:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    .line 187
    const-string v0, "SocialStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeightOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/SocialStatus;->mHeightOpen:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mHeightClose: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/SocialStatus;->mHeightClose:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mSnsAnimator.getHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mSnsCloseContainer.getHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    .line 196
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 200
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v5, 0x4334

    move v4, v2

    move v6, v1

    move v7, v10

    move v8, v1

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v3, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    .line 202
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 203
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/phone/SocialStatus$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SocialStatus$3;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    :cond_cd
    return-void
.end method

.method public updateSocialStatusLayout(Z)V
    .registers 14
    .parameter "isDialingInLand"

    .prologue
    const/16 v11, 0xe

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 354
    const-string v6, "SocialStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isDialingInLand: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 355
    iget-object v6, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 357
    .local v1, containerLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 359
    .local v5, snsLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 363
    .local v0, birthdayLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_87

    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0071

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 366
    .local v2, container_Left:I
    :goto_42
    if-eqz p1, :cond_89

    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0070

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 369
    .local v3, container_Top:I
    :goto_50
    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 370
    iget-object v6, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    if-eqz p1, :cond_96

    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0073

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 377
    .local v4, snsClose_Top:I
    :goto_66
    if-eqz p1, :cond_a3

    move v6, v7

    :goto_69
    invoke-virtual {v5, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 378
    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 379
    iget-object v6, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a5

    const/4 v6, 0x3

    :goto_79
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 383
    if-eqz p1, :cond_a7

    :goto_7e
    invoke-virtual {v0, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 384
    iget-object v6, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void

    .end local v2           #container_Left:I
    .end local v3           #container_Top:I
    .end local v4           #snsClose_Top:I
    :cond_87
    move v2, v7

    .line 363
    goto :goto_42

    .line 366
    .restart local v2       #container_Left:I
    :cond_89
    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d006f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    goto :goto_50

    .line 373
    .restart local v3       #container_Top:I
    :cond_96
    invoke-virtual {p0}, Lcom/android/phone/SocialStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0072

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    goto :goto_66

    .restart local v4       #snsClose_Top:I
    :cond_a3
    move v6, v8

    .line 377
    goto :goto_69

    :cond_a5
    move v6, v8

    .line 380
    goto :goto_79

    :cond_a7
    move v7, v8

    .line 383
    goto :goto_7e
.end method
