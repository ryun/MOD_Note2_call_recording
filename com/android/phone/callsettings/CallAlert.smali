.class public Lcom/android/phone/callsettings/CallAlert;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallAlert.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

.field private mCallSettingsVibPreference:Landroid/preference/PreferenceScreen;

.field private mEndVibPreference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    const-string v1, "callsettings_vibrations_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mCallSettingsVibPreference:Landroid/preference/PreferenceScreen;

    .line 51
    const-string v1, "end_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v1, "alertoncall_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    .line 54
    const-string v1, "mics_kor_common"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 55
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e02f3

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    :cond_45
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 59
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mCallSettingsVibPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_5a

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mCallSettingsVibPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_64

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    :cond_64
    return-void

    .line 62
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_65
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5a

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 121
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 91
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 74
    iget-object v3, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1b

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_end_vib"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_37

    move v0, v1

    .line 78
    .local v0, alertSetting:Z
    :goto_16
    iget-object v3, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    .end local v0           #alertSetting:Z
    :cond_1b
    iget-object v3, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_31

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "alertoncall_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_39

    move v0, v1

    .line 83
    .restart local v0       #alertSetting:Z
    :goto_2c
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    .end local v0           #alertSetting:Z
    :cond_31
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 86
    return-void

    :cond_37
    move v0, v2

    .line 75
    goto :goto_16

    :cond_39
    move v0, v2

    .line 81
    goto :goto_2c
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 9
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    const-string v4, "end_vibration_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 96
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_33

    move v1, v2

    .line 97
    .local v1, state:I
    :goto_11
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_end_vib"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    .end local v1           #state:I
    :cond_1a
    const-string v4, "alertoncall_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 101
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_35

    move v0, v2

    .line 102
    .local v0, alertState:I
    :goto_29
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "alertoncall_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    .end local v0           #alertState:I
    :cond_32
    return-void

    :cond_33
    move v1, v3

    .line 96
    goto :goto_11

    :cond_35
    move v0, v3

    .line 101
    goto :goto_29
.end method
