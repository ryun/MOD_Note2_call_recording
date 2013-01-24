.class public Lcom/android/phone/RcsInvitation;
.super Landroid/widget/FrameLayout;
.source "RcsInvitation.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDensity:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    const-class v0, Lcom/android/phone/RcsInvitation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsInvitation;->LOG_TAG:Ljava/lang/String;

    .line 66
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Lcom/android/phone/RcsInvitation;->DBG:Z

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    sget-boolean v1, Lcom/android/phone/RcsInvitation;->DBG:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/phone/RcsInvitation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsInvitation()..."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_e
    sget-boolean v1, Lcom/android/phone/RcsInvitation;->DBG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/phone/RcsInvitation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2a
    sget-boolean v1, Lcom/android/phone/RcsInvitation;->DBG:Z

    if-eqz v1, :cond_50

    sget-object v1, Lcom/android/phone/RcsInvitation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attrs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_50
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04006d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/RcsInvitation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/RcsInvitation;->mDensity:F

    .line 91
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_6f
    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 95
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V
    .registers 9
    .parameter "cm"
    .parameter "name"

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/phone/RcsInvitation;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/phone/RcsInvitation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateState()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 107
    invoke-static {p1}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object p2

    .line 108
    :cond_15
    invoke-static {p1}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v3

    move-object v0, p0

    move-object v2, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->setupRcsCallCard(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/telephony/CallManager;)V

    .line 112
    return-void
.end method
