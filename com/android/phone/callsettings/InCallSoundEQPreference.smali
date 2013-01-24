.class public Lcom/android/phone/callsettings/InCallSoundEQPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "InCallSoundEQPreference.java"


# instance fields
.field private mVoiceCallEqListSetting:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/InCallSoundEQPreference;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 190
    const-string v0, "InCallSoundEQPreference"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 191
    return-void
.end method


# virtual methods
.method protected makeEQDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e002a

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const v2, 0x7f0e002e

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    const v2, 0x7f0e0386

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 154
    const v2, 0x7f0e0387

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 156
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 53
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "voicecall_eq_list_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_21

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    :cond_21
    iget-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_e

    .line 164
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 162
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->makeEQDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 160
    nop

    :pswitch_data_e
    .packed-switch 0x1f7
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 169
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->finish()V

    .line 180
    const/4 v2, 0x1

    .line 182
    .end local v0           #intent:Landroid/content/Intent;
    :goto_4e
    return v2

    :cond_4f
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_4e
.end method

.method public onResume()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 107
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 109
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v3, :cond_5a

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, eqListValue:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, eqListEntries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hearing_diagnosis"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_47

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hearing_direction"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 117
    .local v2, hearingDirection:I
    if-ne v2, v6, :cond_5b

    .line 118
    if-eq v1, v8, :cond_3d

    if-ne v1, v9, :cond_47

    .line 119
    :cond_3d
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    const/4 v1, 0x0

    .line 130
    .end local v2           #hearingDirection:I
    :cond_47
    :goto_47
    if-nez v1, :cond_75

    .line 131
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    const v4, 0x7f0e0383

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 135
    :goto_51
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    .end local v0           #eqListEntries:[Ljava/lang/String;
    .end local v1           #eqListValue:I
    :cond_5a
    return-void

    .line 122
    .restart local v0       #eqListEntries:[Ljava/lang/String;
    .restart local v1       #eqListValue:I
    .restart local v2       #hearingDirection:I
    :cond_5b
    if-nez v2, :cond_68

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    const/4 v1, 0x3

    goto :goto_47

    .line 125
    :cond_68
    if-ne v2, v7, :cond_47

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    const/4 v1, 0x4

    goto :goto_47

    .line 133
    .end local v2           #hearingDirection:I
    :cond_75
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_51
.end method
