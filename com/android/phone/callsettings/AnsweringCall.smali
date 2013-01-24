.class public Lcom/android/phone/callsettings/AnsweringCall;
.super Landroid/preference/PreferenceActivity;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AnsweringCall;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 55
    const-string v1, "anykey_mode_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    .line 56
    const-string v1, "powerkey_end_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_31

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    :cond_31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 119
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_27

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AnsweringCall;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->finish()V

    .line 128
    const/4 v2, 0x1

    .line 130
    .end local v0           #intent:Landroid/content/Intent;
    :goto_26
    return v2

    :cond_27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_26
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 68
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "proximity_sensor"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, proximitySensor:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incall_power_button_behavior"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, endcallbutton:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_41

    .line 82
    iput-boolean v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 83
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    .line 89
    :goto_2a
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 91
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "anykey_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4b

    :goto_3d
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    return-void

    .line 85
    :cond_41
    iput-boolean v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 86
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_2a

    :cond_4b
    move v2, v3

    .line 91
    goto :goto_3d
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 102
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "anykey_mode_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 105
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    .line 106
    .local v0, anykey_mode:I
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    .end local v0           #anykey_mode:I
    :cond_31
    const-string v1, "powerkey_end_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 113
    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    .line 115
    :cond_3e
    return-void
.end method
