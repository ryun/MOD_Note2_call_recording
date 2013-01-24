.class public Lcom/android/phone/KTAddedServiceActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTAddedServiceActivity.java"


# instance fields
.field private mCallForwardingAll:Landroid/preference/PreferenceScreen;

.field private mCallForwardingCon:Landroid/preference/PreferenceScreen;

.field private mCallWaiting:Landroid/preference/PreferenceScreen;

.field private mInbox:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 83
    const-string v0, "KTAddedServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->addPreferencesFromResource(I)V

    .line 55
    const-string v1, "inbox_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mInbox:Landroid/preference/PreferenceScreen;

    .line 56
    const-string v1, "callforwarding_conditional_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mCallForwardingCon:Landroid/preference/PreferenceScreen;

    .line 57
    const-string v1, "callforwarding_all_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mCallForwardingAll:Landroid/preference/PreferenceScreen;

    .line 58
    const-string v1, "callwaiting_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mCallWaiting:Landroid/preference/PreferenceScreen;

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/KTAddedServiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3b

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    :cond_3b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 70
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_27

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/phone/KTAddedServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/KTAddedServiceActivity;->finish()V

    .line 77
    const/4 v2, 0x1

    .line 79
    .end local v0           #intent:Landroid/content/Intent;
    :goto_26
    return v2

    :cond_27
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_26
.end method
