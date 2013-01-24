.class public Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;,
        Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->DBG:Z

    .line 34
    new-instance v0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    .line 39
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 40
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 41
    return-void

    :cond_26
    move v0, v1

    .line 31
    goto :goto_a
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->DBG:Z

    return v0
.end method


# virtual methods
.method protected onClick()V
    .registers 5

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 56
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 58
    return-void
.end method
