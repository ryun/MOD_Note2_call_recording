.class public Lcom/android/phone/callsettings/CallTypeSelectForBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForBarring.java"


# instance fields
.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


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
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 57
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_voicecall"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVoiceCall:Landroid/preference/PreferenceScreen;

    .line 58
    const-string v2, "button_videocall"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    .line 60
    iget-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_36

    const-string v2, "video_call_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 63
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_40

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    :cond_40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
