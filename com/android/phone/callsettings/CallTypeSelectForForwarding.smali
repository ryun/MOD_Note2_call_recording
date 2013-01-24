.class public Lcom/android/phone/callsettings/CallTypeSelectForForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForForwarding.java"


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
    const v2, 0x7f06000c

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 57
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_voicecall"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    .line 58
    const-string v2, "button_videocall"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    .line 60
    iget-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_36

    const-string v2, "video_call_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 63
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

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
    .registers 6
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 72
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

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

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->finish()V

    .line 82
    const/4 v2, 0x1

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :goto_4e
    return v2

    :cond_4f
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_4e
.end method
