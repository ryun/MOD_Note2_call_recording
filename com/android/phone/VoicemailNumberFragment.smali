.class public Lcom/android/phone/VoicemailNumberFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "VoicemailNumberFragment.java"


# instance fields
.field private mPrevTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 36
    const-string v1, "VoicemailNumberFragment"

    const-string v2, "Creating"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-super {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_14

    .line 42
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/phone/VoicemailNumberFragment;->setHasOptionsMenu(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VoicemailNumberFragment;->mPrevTitle:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_1a

    .line 95
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 88
    :pswitch_8
    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 90
    const/4 v0, 0x1

    goto :goto_7

    .line 84
    nop

    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 111
    :cond_7
    invoke-super {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 104
    :pswitch_c
    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 106
    const/4 v0, 0x1

    goto :goto_b

    .line 100
    nop

    :pswitch_data_1e
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 62
    const-string v1, "VoicemailNumberFragment"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0}, Lcom/android/phone/CallFeaturesSetting;->onPause()V

    .line 65
    const-string v1, "support_split_settings"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, currentIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 70
    .end local v0           #currentIntent:Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_6

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_5
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 50
    const-string v0, "VoicemailNumberFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/phone/VoicemailNumberFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 53
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 54
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/VoicemailNumberFragment;->updateVoiceNumberField()V

    .line 57
    invoke-super {p0}, Lcom/android/phone/CallFeaturesSetting;->onResume()V

    .line 58
    return-void
.end method
