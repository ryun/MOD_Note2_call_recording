.class public Lcom/android/phone/RemindRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "RemindRingtonePreference.java"


# instance fields
.field public mAlert:Landroid/net/Uri;

.field private mRingtoneTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/RemindRingtonePreference;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/phone/RemindRingtonePreference;->mRingtoneTask:Landroid/os/AsyncTask;

    return-object p1
.end method


# virtual methods
.method public getAlertUri()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/phone/RemindRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remind_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, uriString:Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/RemindRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, uri:Landroid/net/Uri;
    :goto_19
    return-object v0

    .line 135
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_19
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected onClick()V
    .registers 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 124
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 57
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/RemindRingtonePreference;->getAlertUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onSaveRingtone(Landroid/net/Uri;)V
    .registers 5
    .parameter "ringtoneUri"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/phone/RemindRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remind_ringtone"

    if-nez p1, :cond_14

    const/4 v0, 0x0

    :goto_d
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/phone/RemindRingtonePreference;->setAlert(Landroid/net/Uri;)V

    .line 74
    return-void

    .line 68
    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public setAlert(Landroid/net/Uri;)V
    .registers 5
    .parameter "alert"

    .prologue
    const/4 v1, 0x1

    .line 84
    iput-object p1, p0, Lcom/android/phone/RemindRingtonePreference;->mAlert:Landroid/net/Uri;

    .line 85
    if-eqz p1, :cond_25

    .line 86
    const v0, 0x7f0e0750

    invoke-virtual {p0, v0}, Lcom/android/phone/RemindRingtonePreference;->setSummary(I)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/RemindRingtonePreference;->mRingtoneTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_14

    .line 88
    iget-object v0, p0, Lcom/android/phone/RemindRingtonePreference;->mRingtoneTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 90
    :cond_14
    new-instance v0, Lcom/android/phone/RemindRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RemindRingtonePreference$1;-><init>(Lcom/android/phone/RemindRingtonePreference;)V

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/RemindRingtonePreference$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RemindRingtonePreference;->mRingtoneTask:Landroid/os/AsyncTask;

    .line 117
    :goto_24
    return-void

    .line 114
    :cond_25
    const v0, 0x7f0e0751

    invoke-virtual {p0, v0}, Lcom/android/phone/RemindRingtonePreference;->setSummary(I)V

    goto :goto_24
.end method
