.class public Lcom/android/phone/callsettings/AutoRejectPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    }
.end annotation


# instance fields
.field private mAutoRejectMaxCount:I

.field private mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

.field private mListIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AutoRejectPreference;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    return-void
.end method

.method private getAutoRejectMode(Ljava/lang/String;)I
    .registers 4
    .parameter "modeName"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .registers 4
    .parameter "mode"

    .prologue
    .line 98
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$1;)V

    .line 99
    .local v0, modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    packed-switch p1, :pswitch_data_3a

    .line 117
    :goto_9
    return-object v0

    .line 101
    :pswitch_a
    const-string v1, "autoreject_mode_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 102
    const-string v1, "autoreject_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    .line 103
    const-string v1, "autoreject_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    .line 104
    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_9

    .line 108
    :pswitch_22
    const-string v1, "autoreject_mode_preference_outgoing"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 109
    const-string v1, "autoreject_outgoingcall_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    .line 110
    const-string v1, "autoreject_outgoingcall_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_9

    .line 99
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_22
    .end packed-switch
.end method

.method private getIndexFromValue(Ljava/lang/String;)I
    .registers 5
    .parameter "modeName"

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, index:I
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, current:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 183
    const/4 v1, 0x0

    .line 187
    :cond_9
    :goto_9
    return v1

    .line 184
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 185
    const/4 v1, 0x1

    goto :goto_9
.end method

.method private getValueFromIndex(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 191
    const/4 v0, 0x2

    .line 192
    .local v0, value:I
    if-nez p1, :cond_5

    .line 193
    const/4 v0, 0x1

    .line 197
    :cond_4
    :goto_4
    return v0

    .line 194
    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 195
    const/4 v0, 0x2

    goto :goto_4
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 268
    const-string v0, "AutoRejectPreference"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method private makeAutoRejectDialog()Landroid/app/Dialog;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->getIndexFromValue(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, currentIndex:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e02df

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e002e

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$2;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080007

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$1;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 220
    .local v0, autorejectDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private setAutoRejectMode(Ljava/lang/String;I)V
    .registers 4
    .parameter "rejectMode"
    .parameter "mode"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method

.method private updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .registers 8
    .parameter "rejectModeInfo"

    .prologue
    const/4 v5, 0x1

    .line 159
    const v3, 0x7f0e02d6

    .line 160
    .local v3, res_id:I
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, autorejectMode:I
    if-ne v0, v5, :cond_2f

    .line 163
    const v3, 0x7f0e02d5

    .line 168
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    .local v1, isOn:Z
    if-nez v1, :cond_22

    .line 172
    const v3, 0x7f0e02c4

    .line 175
    :cond_22
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setSummary(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    .line 177
    return-void

    .line 164
    .end local v1           #isOn:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_2f
    const/4 v4, 0x2

    if-ne v0, v4, :cond_f

    .line 165
    const v3, 0x7f0e02d6

    goto :goto_f
.end method

.method private updateSwitchWidget(Lcom/android/phone/callsettings/SwitchDialogPreference;Ljava/lang/Boolean;)V
    .registers 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 130
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 131
    .local v3, info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .local v0, arr$:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v4, :cond_12

    aget-object v5, v0, v2

    .line 132
    .local v5, modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    iget-object v7, v5, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v7, p1, :cond_2e

    .line 133
    move-object v3, v5

    .line 138
    .end local v5           #modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 139
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, v3, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 143
    return-void

    .line 131
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .restart local v5       #modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v1, "auto_reject_outgoingcall"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 80
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->addPreferencesFromResource(I)V

    .line 81
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .line 82
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v3

    .line 88
    :goto_21
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v4

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_32

    .line 93
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    :cond_32
    return-void

    .line 84
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_33
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    .line 85
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->addPreferencesFromResource(I)V

    .line 86
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    goto :goto_21
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_a

    .line 228
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 226
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 224
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 250
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

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

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->startActivity(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->finish()V

    .line 262
    const/4 v2, 0x1

    .line 264
    .end local v0           #intent:Landroid/content/Intent;
    :goto_4e
    return v2

    :cond_4f
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_4e
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V

    .line 71
    check-cast p1, Lcom/android/phone/callsettings/SwitchDialogPreference;

    .end local p1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSwitchWidget(Lcom/android/phone/callsettings/SwitchDialogPreference;Ljava/lang/Boolean;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, index:I
    :goto_2
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-ge v0, v2, :cond_e

    .line 234
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v2, p2, :cond_18

    .line 239
    :cond_e
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-eq v0, v2, :cond_1b

    .line 240
    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->showDialog(I)V

    .line 245
    :goto_17
    return v1

    .line 233
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 245
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_17
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .local v0, arr$:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v3, :cond_11

    aget-object v2, v0, v1

    .line 125
    .local v2, info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 127
    .end local v2           #info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_11
    return-void
.end method
