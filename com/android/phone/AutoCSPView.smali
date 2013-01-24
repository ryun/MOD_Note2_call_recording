.class public Lcom/android/phone/AutoCSPView;
.super Landroid/preference/PreferenceActivity;
.source "AutoCSPView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutocspSettings:Landroid/preference/PreferenceScreen;

.field private mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

.field private mEditTextAutoCSP:Landroid/preference/EditTextPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/android/phone/AutoCSPView;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutoCSPView;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    const-string v3, "autocsp_settings_list"

    invoke-virtual {p0, v3}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    .line 43
    const-string v3, "feature_ltn_auto_csp"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 44
    const-string v3, "chk_autocsp_check"

    invoke-virtual {p0, v3}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    .line 45
    const-string v3, "txt_autocsp_code"

    invoke-virtual {p0, v3}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    .line 49
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autocsp_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, autoCspEnabled:I
    if-ne v1, v5, :cond_4c

    .line 51
    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 53
    :cond_4c
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_operator_code"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, autoCspCode:I
    const/16 v3, 0x9

    if-le v0, v3, :cond_67

    const/16 v3, 0x64

    if-ge v0, v3, :cond_67

    .line 55
    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_67
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3a .. :try_end_67} :catch_86

    .line 62
    .end local v0           #autoCspCode:I
    .end local v1           #autoCspEnabled:I
    :cond_67
    :goto_67
    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    :goto_6c
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.CallFeaturesSetting.CONFIGURE_AUTOCSP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 68
    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_85

    .line 69
    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/android/phone/AutoCSPView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 71
    :cond_85
    return-void

    .line 57
    :catch_86
    move-exception v2

    .line 58
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "AutoCSPView"

    const-string v4, "to get (Secure.AUTOCSP_ENABLED or Secure.AUTOCSP_OPERATOR_CODE) failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 64
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8f
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    goto :goto_6c
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_30

    move-object v0, p2

    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, cspCode:Ljava/lang/String;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_operator_code"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    :cond_1d
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 96
    :cond_25
    const v2, 0x7f0e06a7

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    .end local v0           #cspCode:Ljava/lang/String;
    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x1

    goto :goto_2f
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_23

    .line 76
    const/4 v0, 0x1

    .line 77
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autocsp_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    .end local v0           #result:Z
    :goto_18
    return v0

    .line 80
    .restart local v0       #result:Z
    :cond_19
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autocsp_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_18

    .end local v0           #result:Z
    :cond_23
    move v0, v1

    .line 84
    goto :goto_18
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 105
    return-void
.end method
