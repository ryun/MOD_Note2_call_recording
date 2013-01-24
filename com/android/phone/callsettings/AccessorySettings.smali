.class public Lcom/android/phone/callsettings/AccessorySettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAnsweringTimeList:Landroid/preference/ListPreference;

.field private mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 202
    const-string v0, "EarsetSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method private setSystemSettingsForAutoAnswer(Z)V
    .registers 5
    .parameter "isChecked"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "answeringmode_auto_mode"

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    return-void

    .line 147
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public autoAnsweringInit()V
    .registers 7

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_18

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "automatic_answering_enable_sharedpref"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 114
    .local v0, isOn:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    .end local v0           #isOn:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answeringmode_auto_time"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, waitingTime:I
    iget-object v3, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAnsweringTimeList:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    const-string v1, "automatic_answer_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "automatic_answer_timer_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAnsweringTimeList:Landroid/preference/ListPreference;

    .line 72
    iget-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v2, "callsettings_bt_type"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_41

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    :cond_41
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 198
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2f

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "automatic_answering_enable_sharedpref"

    iget-object v3, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 138
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AccessorySettings;->setSystemSettingsForAutoAnswer(Z)V

    .line 141
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->outgoingBTInit()V

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->autoAnsweringInit()V

    .line 87
    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 89
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/AccessorySettings;->log(Ljava/lang/String;)V

    .line 155
    const-string v6, "callsettings_bt_condition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 156
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, outgoing_condition_index:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, outgoing_condition:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_headset_call_condition"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const v6, 0x7f08000e

    invoke-virtual {p0, p2, v6, v2}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 165
    .end local v2           #outgoing_condition:I
    .end local v3           #outgoing_condition_index:Ljava/lang/String;
    :cond_3e
    const-string v6, "callsettings_bt_type"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 166
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, outgoing_type_index:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 169
    .local v4, outgoing_type:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_headset_call_type"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const v6, 0x7f08000f

    invoke-virtual {p0, p2, v6, v4}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 175
    .end local v4           #outgoing_type:I
    .end local v5           #outgoing_type_index:Ljava/lang/String;
    :cond_66
    const-string v6, "automatic_answer_timer_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 176
    const/4 v6, 0x0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, auto_time_index:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, auto_time:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    .end local v0           #auto_time:I
    .end local v1           #auto_time_index:Ljava/lang/String;
    :cond_84
    return-void
.end method

.method public outgoingBTInit()V
    .registers 6

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_headset_call_condition"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, btCondition:I
    const-string v2, "callsettings_bt_condition"

    const v3, 0x7f08000e

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v3, "callsettings_bt_type"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_headset_call_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, btType:I
    const-string v2, "callsettings_bt_type"

    const v3, 0x7f08000f

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 106
    .end local v1           #btType:I
    :cond_30
    return-void
.end method

.method public updateBTSummary(Ljava/lang/String;II)V
    .registers 7
    .parameter "key"
    .parameter "stringArray"
    .parameter "index"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, summaryString:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 124
    .local v0, options:Landroid/preference/Preference;
    aget-object v2, v1, p3

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method
