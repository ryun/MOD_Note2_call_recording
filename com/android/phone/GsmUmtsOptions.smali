.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    :goto_11
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 61
    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 63
    return-void

    .line 59
    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_11
.end method


# virtual methods
.method protected create()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 67
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_apn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 68
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_carrier_sel_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 70
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_prefer_2g_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 71
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_global_gsm_umts_system_select_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    .line 73
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 75
    .local v0, phoneType:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_fc

    .line 76
    const-string v2, "Not a GSM phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 77
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    if-ne v0, v5, :cond_e3

    .line 78
    const-string v2, "CTC Dual Mode and curr phone is GSM"

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 100
    :cond_5e
    :goto_5e
    const-string v2, "remove_network_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 101
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_prefer_networkmode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_73
    const-string v2, "check_enable_block_apn_change"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 106
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_prefer_block_apn_change_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_88
    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 111
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_prefer_networkmode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_apn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_prefer_2g_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 115
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_d5

    .line 116
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 117
    const-string v2, "set SYSYEM_SELECTION_MANUAL"

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    .end local v1           #serviceState:Landroid/telephony/ServiceState;
    :cond_d5
    :goto_d5
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_global_gsm_umts_system_select_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    return-void

    .line 81
    :cond_e3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 82
    const-string v2, "apn_setting_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 85
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 86
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_5e

    .line 89
    :cond_fc
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-nez v2, :cond_11d

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 91
    :cond_11d
    const-string v2, "[CSP] Enabling Operator Selection menu."

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_5e

    .line 94
    :cond_129
    const-string v2, "[CSP] Disabling Operator Selection menu."

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_carrier_sel_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5e

    .line 120
    .restart local v1       #serviceState:Landroid/telephony/ServiceState;
    :cond_13d
    const-string v2, "set SYSYEM_SELECTION_AUTOMATIC"

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_d5
.end method

.method public globalGsmSystemSelectShowDialog()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 154
    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public operatorSelectionExpandSetEnabled(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 151
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_prefer_2g_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 130
    const-string v1, "preferenceTreeClick: return true"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 142
    :cond_12
    :goto_12
    return v0

    .line 133
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_prefer_networkmode_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 137
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_prefer_block_apn_change_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 141
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    goto :goto_12
.end method
