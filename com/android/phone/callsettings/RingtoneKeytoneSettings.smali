.class public Lcom/android/phone/callsettings/RingtoneKeytoneSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RingtoneKeytoneSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVibrationPreference:Landroid/preference/Preference;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private goVibrationPattern()V
    .registers 5

    .prologue
    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.personalvibration.SelectPatternDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 162
    :goto_11
    return-void

    .line 159
    :catch_12
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in goVibrationPattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 223
    const-string v0, "RingtonesKeytonesSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method private lookupRingtoneName()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .registers 12
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 170
    if-nez p2, :cond_3

    .line 192
    :goto_2
    return-void

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x10404fe

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_27

    .line 175
    const v0, 0x10404fc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 191
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 179
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 181
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 183
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_4a} :catch_4b

    goto :goto_1b

    .line 187
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_4b
    move-exception v0

    goto :goto_1b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    .line 88
    const-string v2, "callsettings_keytones"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_30

    .line 90
    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "dtmf_tone"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_74

    move v2, v3

    :goto_2d
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    :cond_30
    const-string v2, "callsettings_vibrate_when_ringing"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_53

    .line 96
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 97
    .local v1, vibrator:Landroid/os/Vibrator;
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 98
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_53
    :goto_53
    const-string v2, "callsettings_device_vibration"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    .line 106
    const-string v2, "callsettings_device_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 107
    new-instance v2, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_73

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    :cond_73
    return-void

    .line 90
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_74
    const/4 v2, 0x0

    goto :goto_2d

    .line 100
    .restart local v1       #vibrator:Landroid/os/Vibrator;
    :cond_76
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_53
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 202
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_17

    .line 203
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 204
    .local v0, doVibrate:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    if-eqz v0, :cond_18

    move v1, v2

    :goto_14
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    .end local v0           #doVibrate:Z
    :cond_17
    return v2

    .line 204
    .restart local v0       #doVibrate:Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_13
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 214
    :cond_1b
    const/4 v0, 0x0

    goto :goto_13

    .line 216
    :cond_1d
    const-string v0, "callsettings_device_vibration"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_16

    .line 217
    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->goVibrationPattern()V

    goto :goto_16
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->lookupRingtoneName()V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateDeviceVibrationName()V

    .line 130
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 131
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    :cond_1a
    return-void
.end method

.method public updateDeviceVibrationName()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, temp:Ljava/lang/String;
    if-nez v7, :cond_39

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, c:Landroid/database/Cursor;
    :goto_1e
    if-eqz v6, :cond_38

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 148
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    :cond_35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_38
    return-void

    .line 143
    .end local v6           #c:Landroid/database/Cursor;
    :cond_39
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_1e
.end method
