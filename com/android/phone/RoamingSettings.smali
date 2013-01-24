.class public Lcom/android/phone/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingSettings$RoamHandler;
    }
.end annotation


# instance fields
.field private mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 93
    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 548
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    .line 653
    packed-switch p1, :pswitch_data_44

    .line 678
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    :goto_a
    return-void

    .line 656
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 659
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 662
    :pswitch_1b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 665
    :pswitch_23
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 668
    :pswitch_2b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 671
    :pswitch_33
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 674
    :pswitch_3b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 653
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/RoamingSettings;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/RoamingSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RoamingSettings;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/RoamingSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/RoamingSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private domesticCallRoamClick()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v0, "RoamingSettings"

    const-string v1, "Domestic call roaming clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f8

    new-instance v2, Lcom/android/phone/RoamingSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$2;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f9

    new-instance v2, Lcom/android/phone/RoamingSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$1;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    :cond_57
    :goto_57
    return-void

    .line 155
    :cond_58
    invoke-direct {p0, v4, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 156
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 157
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 158
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 159
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_57
.end method

.method private domesticDataRoamClick()V
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    const-string v0, "RoamingSettings"

    const-string v1, "Domestic data roaming clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 166
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f8

    new-instance v2, Lcom/android/phone/RoamingSettings$4;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$4;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f9

    new-instance v2, Lcom/android/phone/RoamingSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$3;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    :cond_68
    :goto_68
    return-void

    .line 198
    :cond_69
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 200
    :cond_77
    const-string v0, "domestic_data_roaming_settings"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_68

    .line 203
    :cond_7d
    invoke-direct {p0, v2, v4}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_68

    .line 213
    :cond_81
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 214
    invoke-direct {p0, v4, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 215
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 217
    :cond_8f
    invoke-direct {p0, v2, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 218
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 219
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_68
.end method

.method private internationalCallRoamClick()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 224
    const-string v0, "RoamingSettings"

    const-string v1, "International call roaming clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f8

    new-instance v2, Lcom/android/phone/RoamingSettings$6;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$6;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f9

    new-instance v2, Lcom/android/phone/RoamingSettings$5;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$5;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 254
    :cond_57
    :goto_57
    return-void

    .line 247
    :cond_58
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 248
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 249
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 250
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_57
.end method

.method private internationalDataRoamClick()V
    .registers 6

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    const-string v0, "RoamingSettings"

    const-string v1, "International data roaming clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 259
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e045b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f8

    new-instance v2, Lcom/android/phone/RoamingSettings$8;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$8;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01f9

    new-instance v2, Lcom/android/phone/RoamingSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$7;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    :cond_68
    :goto_68
    return-void

    .line 291
    :cond_69
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 293
    :cond_77
    const-string v0, "international_data_roaming_settings"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_68

    .line 296
    :cond_7d
    invoke-direct {p0, v2, v4}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_68

    .line 306
    :cond_81
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 307
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 308
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 310
    :cond_90
    invoke-direct {p0, v2, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 311
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 312
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_68
.end method

.method private internationalDataRoamClickGSM()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 317
    const-string v0, "RoamingSettings"

    const-string v1, "International data roaming clicked GSM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 319
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 320
    const-string v0, "international_data_roaming_settings_gsm"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    .line 327
    :goto_1c
    return-void

    .line 322
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_1c

    .line 325
    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    goto :goto_1c
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 703
    const-string v0, "RoamingSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method

.method private sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    .registers 4
    .parameter "dataRoamingSettingsExtra"

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, dialogIntent:Landroid/content/Intent;
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 388
    const-string v1, "data_roaming_settings_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_14
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private setCdmaRoaming()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 683
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 684
    .local v0, domesticRoamCall:Z
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 688
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_37

    if-nez v1, :cond_37

    .line 689
    const/4 v2, 0x5

    .line 698
    .local v2, statusCdmaRoamingMode:I
    :goto_12
    const-string v3, "RoamingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 700
    return-void

    .line 690
    .end local v2           #statusCdmaRoamingMode:I
    :cond_37
    if-nez v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 691
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12

    .line 692
    .end local v2           #statusCdmaRoamingMode:I
    :cond_3d
    if-eqz v0, :cond_43

    if-eqz v1, :cond_43

    .line 693
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12

    .line 695
    .end local v2           #statusCdmaRoamingMode:I
    :cond_43
    const/16 v2, 0x8

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12
.end method

.method private setCheckSecureSettingRoamValue(II)V
    .registers 6
    .parameter "keyType"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    packed-switch p1, :pswitch_data_48

    .line 383
    :goto_5
    :pswitch_5
    return-void

    .line 360
    :pswitch_6
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_11

    :goto_a
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_5

    :cond_11
    move v0, v1

    .line 360
    goto :goto_a

    .line 365
    :pswitch_13
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_1e

    :goto_17
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_5

    :cond_1e
    move v0, v1

    .line 365
    goto :goto_17

    .line 370
    :pswitch_20
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_2b

    :goto_24
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_5

    :cond_2b
    move v0, v1

    .line 370
    goto :goto_24

    .line 375
    :pswitch_2d
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_38

    :goto_31
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_5

    :cond_38
    move v0, v1

    .line 375
    goto :goto_31

    .line 379
    :pswitch_3a
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_45

    :goto_3e
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_5

    :cond_45
    move v0, v1

    .line 379
    goto :goto_3e

    .line 358
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_20
        :pswitch_2d
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3a
    .end packed-switch
.end method

.method private setPreferenceEnabledPhoneType()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 393
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 394
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 395
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 396
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 408
    .end local v0           #phoneType:I
    :cond_1c
    :goto_1c
    return-void

    .line 398
    .restart local v0       #phoneType:I
    :cond_1d
    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 400
    :cond_23
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 402
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1c

    .line 405
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSecureSettingRoamValue(II)V
    .registers 4
    .parameter "keyType"
    .parameter "value"

    .prologue
    .line 329
    packed-switch p1, :pswitch_data_3c

    .line 355
    :goto_3
    :pswitch_3
    return-void

    .line 331
    :pswitch_4
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 332
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_3

    .line 336
    :pswitch_f
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 337
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_3

    .line 341
    :pswitch_1a
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 342
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_3

    .line 346
    :pswitch_25
    const-string v0, "roam_setting_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 347
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_3

    .line 351
    :pswitch_30
    const-string v0, "sprint_gsm_data_roaming"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 352
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_3

    .line 329
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_1a
        :pswitch_25
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    const-string v0, "RoamingSettings"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 412
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 413
    const-string v1, "RoamingSettings"

    const-string v4, "onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 416
    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettings;->addPreferencesFromResource(I)V

    .line 419
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 421
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v1, Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/phone/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/RoamingSettings;Lcom/android/phone/RoamingSettings$1;)V

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    .line 424
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 425
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_3a

    .line 426
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 432
    :cond_3a
    const-string v1, "domestic_cdma_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 433
    const-string v1, "domestic_cdma_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 434
    const-string v1, "international_cdma_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 435
    const-string v1, "international_cdma_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 436
    const-string v1, "international_gsm_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 437
    const-string v1, "international_gsm_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 439
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_call_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 440
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_call_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_13d

    move v1, v2

    :goto_8c
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 442
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_140

    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_140

    .line 443
    const-string v1, "RoamingSettings"

    const-string v4, "MDM: Roaming Data is disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 445
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 446
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 447
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    :goto_b6
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_call_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_call_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_178

    move v1, v2

    :goto_cc
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "sprint_gsm_voice_roaming"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "sprint_gsm_data_roaming"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17b

    .line 462
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    const-string v1, "international_gsm_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :goto_100
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 472
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_112
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_139

    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_139

    .line 477
    const-string v1, "RoamingSettings"

    const-string v2, "MDM: Roaming Voice is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 479
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 480
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 481
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 483
    :cond_139
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setPreferenceEnabledPhoneType()V

    .line 484
    return-void

    :cond_13d
    move v1, v3

    .line 440
    goto/16 :goto_8c

    .line 449
    :cond_140
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_data_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 450
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_data_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_174

    move v1, v2

    :goto_156
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_data_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 452
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_data_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_176

    move v1, v2

    :goto_16f
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_b6

    :cond_174
    move v1, v3

    .line 450
    goto :goto_156

    :cond_176
    move v1, v3

    .line 452
    goto :goto_16f

    :cond_178
    move v1, v3

    .line 456
    goto/16 :goto_cc

    .line 466
    :cond_17b
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    const-string v1, "domestic_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0732

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 468
    const-string v1, "international_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0734

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_100
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 104
    const-string v0, "RoamingSettings"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 115
    const-string v0, "RoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    .line 118
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->domesticCallRoamClick()V

    .line 128
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_21
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_29

    .line 120
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->domesticDataRoamClick()V

    goto :goto_1f

    .line 121
    :cond_29
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_31

    .line 122
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalCallRoamClick()V

    goto :goto_1f

    .line 123
    :cond_31
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_39

    .line 124
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalDataRoamClick()V

    goto :goto_1f

    .line 125
    :cond_39
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 126
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalDataRoamClickGSM()V

    goto :goto_1f
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 490
    const-string v0, "RoamingSettings"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 500
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_call_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_ad

    move v0, v1

    :goto_29
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 504
    const-string v0, "RoamingSettings"

    const-string v3, "MDM: Roaming Data is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 517
    :goto_53
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 518
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_call_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e8

    move v0, v1

    :goto_69
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_voice_roaming"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 521
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_data_roaming"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 525
    const-string v0, "RoamingSettings"

    const-string v1, "MDM: Roaming Voice is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 532
    :cond_a9
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setPreferenceEnabledPhoneType()V

    .line 533
    return-void

    :cond_ad
    move v0, v2

    .line 500
    goto/16 :goto_29

    .line 510
    :cond_b0
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_data_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 511
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_data_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e4

    move v0, v1

    :goto_c6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_data_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 513
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_data_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e6

    move v0, v1

    :goto_df
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_53

    :cond_e4
    move v0, v2

    .line 511
    goto :goto_c6

    :cond_e6
    move v0, v2

    .line 513
    goto :goto_df

    :cond_e8
    move v0, v2

    .line 518
    goto :goto_69
.end method
