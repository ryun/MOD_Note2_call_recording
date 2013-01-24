.class public Lcom/android/phone/RoamingGuard;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 86
    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    return-void
.end method

.method private setPreferenceEnabledPhoneType()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 224
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 225
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 226
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 240
    .end local v0           #phoneType:I
    :cond_21
    :goto_21
    return-void

    .line 229
    .restart local v0       #phoneType:I
    :cond_22
    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-ne v0, v1, :cond_42

    .line 231
    :cond_28
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_21

    .line 237
    :cond_42
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


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    const-string v0, "RoamingGuard"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const-string v1, "RoamingGuard"

    const-string v4, "onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 248
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingGuard;->addPreferencesFromResource(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/RoamingGuard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 254
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingGuard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 255
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_32

    .line 256
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 261
    :cond_32
    const-string v1, "domestic_cdma_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 262
    const-string v1, "domestic_cdma_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 263
    const-string v1, "international_cdma_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 264
    const-string v1, "international_cdma_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 265
    const-string v1, "international_cdma_sms_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 266
    const-string v1, "international_gsm_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 267
    const-string v1, "international_gsm_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 268
    const-string v1, "international_gsm_sms_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 270
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_134

    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_134

    .line 271
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 273
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    :goto_a2
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_16c

    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_16c

    .line 285
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 296
    :goto_c2
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_1a4

    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v1

    if-nez v1, :cond_1a4

    .line 297
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 303
    :goto_d8
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_voice_guard"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_data_guard"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_sms_guard"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b1

    .line 308
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    const-string v1, "international_gsm_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    :goto_119
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 318
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_130
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    .line 323
    return-void

    .line 277
    :cond_134
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_call_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_call_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_168

    move v1, v2

    :goto_14a
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_call_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_call_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_16a

    move v1, v2

    :goto_163
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_a2

    :cond_168
    move v1, v3

    .line 278
    goto :goto_14a

    :cond_16a
    move v1, v3

    .line 280
    goto :goto_163

    .line 290
    :cond_16c
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_data_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_data_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a0

    move v1, v2

    :goto_182
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_data_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_data_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a2

    move v1, v2

    :goto_19b
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c2

    :cond_1a0
    move v1, v3

    .line 291
    goto :goto_182

    :cond_1a2
    move v1, v3

    .line 293
    goto :goto_19b

    .line 300
    :cond_1a4
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_sms_international"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_d8

    .line 313
    :cond_1b1
    const-string v1, "domestic_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0732

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 314
    const-string v1, "international_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0734

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_119
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 97
    const-string v0, "RoamingGuard"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    const-string v0, "RoamingGuard"

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

    .line 111
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_43

    .line 112
    const-string v0, "RoamingGuard"

    const-string v1, "Domestic call guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 115
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 219
    :cond_37
    :goto_37
    return v3

    .line 118
    :cond_38
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 124
    :cond_43
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6c

    .line 125
    const-string v0, "RoamingGuard"

    const-string v1, "International call guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 128
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 131
    :cond_61
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 137
    :cond_6c
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9a

    .line 138
    const-string v0, "RoamingGuard"

    const-string v1, "Domestic data guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 141
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 144
    :cond_8a
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_37

    .line 152
    :cond_9a
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c9

    .line 153
    const-string v0, "RoamingGuard"

    const-string v1, "International data guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 156
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 159
    :cond_b8
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_37

    .line 167
    :cond_c9
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f4

    .line 168
    const-string v0, "RoamingGuard"

    const-string v1, "International sms guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 171
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    const-string v0, "roam_guard_sms_international"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 174
    :cond_e8
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    const-string v0, "roam_guard_sms_international"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 180
    :cond_f4
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11f

    .line 181
    const-string v0, "RoamingGuard"

    const-string v1, "International call guard clicked gsm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 184
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    const-string v0, "sprint_gsm_voice_guard"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 187
    :cond_113
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    const-string v0, "sprint_gsm_voice_guard"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 193
    :cond_11f
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14f

    .line 194
    const-string v0, "RoamingGuard"

    const-string v1, "International data guard clicked gsm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 197
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 200
    :cond_13e
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_37

    .line 207
    :cond_14f
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_37

    .line 208
    const-string v0, "RoamingGuard"

    const-string v1, "International sms guard clicked gsm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 211
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    const-string v0, "sprint_gsm_sms_guard"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 214
    :cond_16e
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    const-string v0, "sprint_gsm_sms_guard"

    invoke-static {v0, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 327
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 329
    const-string v5, "RoamingGuard"

    const-string v8, "onResume"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/RoamingGuard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 340
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v5

    if-nez v5, :cond_8e

    .line 341
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 343
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 356
    :goto_33
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v5, :cond_c6

    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v5

    if-nez v5, :cond_c6

    .line 357
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 358
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 359
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 371
    :goto_53
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "sprint_gsm_voice_guard"

    invoke-static {v8, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "sprint_gsm_data_guard"

    invoke-static {v8, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "sprint_gsm_sms_guard"

    invoke-static {v8, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 375
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v5, :cond_fe

    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v5

    if-nez v5, :cond_fe

    .line 376
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 377
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 383
    :goto_8a
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    .line 384
    return-void

    .line 346
    :cond_8e
    const-string v5, "roam_guard_call_domestic"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 347
    .local v0, domesticCallGuardEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_call_domestic_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_c2

    move v5, v6

    :goto_a4
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 350
    const-string v5, "roam_guard_call_international"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    .line 351
    .local v2, internationalCallGuardEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_call_international_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_c4

    move v5, v6

    :goto_bd
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_33

    .end local v2           #internationalCallGuardEnabled:Z
    :cond_c2
    move v5, v7

    .line 348
    goto :goto_a4

    .restart local v2       #internationalCallGuardEnabled:Z
    :cond_c4
    move v5, v7

    .line 352
    goto :goto_bd

    .line 362
    .end local v0           #domesticCallGuardEnabled:Z
    .end local v2           #internationalCallGuardEnabled:Z
    :cond_c6
    const-string v5, "roam_guard_data_domestic"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 363
    .local v1, domesticDataRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_data_domestic_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_fa

    move v5, v6

    :goto_dc
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    const-string v5, "roam_guard_data_international"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 367
    .local v3, internationalDataRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_data_international_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_fc

    move v5, v6

    :goto_f5
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_53

    .end local v3           #internationalDataRoamingGuardMode:Z
    :cond_fa
    move v5, v7

    .line 364
    goto :goto_dc

    .restart local v3       #internationalDataRoamingGuardMode:Z
    :cond_fc
    move v5, v7

    .line 368
    goto :goto_f5

    .line 379
    .end local v1           #domesticDataRoamingGuardMode:Z
    .end local v3           #internationalDataRoamingGuardMode:Z
    :cond_fe
    const-string v5, "roam_guard_sms_international"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    .line 380
    .local v4, internationalSmsRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_8a
.end method
