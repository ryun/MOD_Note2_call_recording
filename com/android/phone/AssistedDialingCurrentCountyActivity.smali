.class public Lcom/android/phone/AssistedDialingCurrentCountyActivity;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingCurrentCountyActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MCC_OTA_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryList:Landroid/preference/PreferenceScreen;

.field private mCurrentText:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->MCC_OTA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkAutoCurrentCountryName()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v3, "content://assisteddialing/ota_country"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, OTA_COUNTRY_URI:Landroid/net/Uri;
    const-string v6, "network_error"

    .line 173
    .local v6, mAutoCurrentCountryName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 175
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 177
    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_24

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 178
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    :cond_24
    if-eqz v7, :cond_29

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_29
    return-object v6
.end method

.method private setAutoCurrentCountrySummary()V
    .registers 4

    .prologue
    .line 140
    const-string v1, "CurrentCounty"

    const-string v2, "setAutoCurrentCountrySummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->checkAutoCurrentCountryName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, mCountryName:Ljava/lang/String;
    const-string v1, "network_error"

    if-ne v0, v1, :cond_1e

    .line 143
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e069c

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 144
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 149
    :goto_1d
    return-void

    .line 146
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1d
.end method

.method private setManualCurrentCountrySummary(Ljava/lang/String;)V
    .registers 5
    .parameter "setvalue"

    .prologue
    .line 135
    const-string v0, "CurrentCounty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current_country_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f040007

    invoke-virtual {p0, v2}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->addPreferencesFromResource(I)V

    .line 68
    const-string v2, "CurrentCounty"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 75
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_current_country_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    .line 76
    const-string v2, "button_select_current_country_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_38

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_38
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 108
    const-string v0, "CurrentCounty"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 195
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 191
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->onBackPressed()V

    .line 192
    const/4 v0, 0x1

    goto :goto_b

    .line 189
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 101
    const-string v0, "CurrentCounty"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 120
    const-string v0, "CurrentCounty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange preference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 126
    const-string v0, "CurrentCounty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick preference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 87
    const-string v2, "CurrentCounty"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_dialing_current_country"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, Current_country_name:Ljava/lang/String;
    if-nez v0, :cond_25

    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 91
    .local v1, mIsAutomatic:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 92
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->setAutoCurrentCountrySummary()V

    .line 96
    :goto_24
    return-void

    .line 90
    .end local v1           #mIsAutomatic:Ljava/lang/Boolean;
    :cond_25
    const/4 v2, 0x0

    goto :goto_17

    .line 94
    .restart local v1       #mIsAutomatic:Ljava/lang/Boolean;
    :cond_27
    invoke-direct {p0, v0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->setManualCurrentCountrySummary(Ljava/lang/String;)V

    goto :goto_24
.end method
