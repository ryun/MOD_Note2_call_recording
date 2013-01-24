.class public Lcom/android/phone/KTInboxActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTInboxActivity.java"


# instance fields
.field private final MAIL_NUM:Ljava/lang/String;

.field private mVideomail:Landroid/preference/PreferenceScreen;

.field private mVoicemail:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 41
    const-string v0, "*88"

    iput-object v0, p0, Lcom/android/phone/KTInboxActivity;->MAIL_NUM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 77
    const-string v0, "KTInboxActivity"

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

    .line 78
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/android/phone/KTInboxActivity;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "voicemail_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTInboxActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTInboxActivity;->mVoicemail:Landroid/preference/PreferenceScreen;

    .line 50
    const-string v0, "videomail_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTInboxActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTInboxActivity;->mVideomail:Landroid/preference/PreferenceScreen;

    .line 52
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/KTInboxActivity;->mVoicemail:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const-string v6, "*88"

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v0, callIntent:Landroid/content/Intent;
    const-string v4, "SKTRADDialOption"

    const-string v5, "korea"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/phone/KTInboxActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0           #callIntent:Landroid/content/Intent;
    :goto_24
    return v3

    .line 62
    :cond_25
    iget-object v4, p0, Lcom/android/phone/KTInboxActivity;->mVideomail:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const-string v6, "*88"

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v2, videocallIntent:Landroid/content/Intent;
    const-string v4, "videocall"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v4, "SKTRADDialOption"

    const-string v5, "korea"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/phone/KTInboxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_24

    .line 72
    .end local v2           #videocallIntent:Landroid/content/Intent;
    :cond_4c
    const/4 v3, 0x0

    goto :goto_24
.end method
