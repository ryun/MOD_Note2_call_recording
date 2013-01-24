.class Lcom/android/phone/RemindRingtonePreference$1;
.super Landroid/os/AsyncTask;
.source "RemindRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RemindRingtonePreference;->setAlert(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RemindRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/RemindRingtonePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/RemindRingtonePreference$1;->this$0:Lcom/android/phone/RemindRingtonePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/RemindRingtonePreference$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "params"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/phone/RemindRingtonePreference$1;->this$0:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v1}, Lcom/android/phone/RemindRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 95
    .local v0, r:Landroid/media/Ringtone;
    if-nez v0, :cond_1b

    .line 96
    iget-object v1, p0, Lcom/android/phone/RemindRingtonePreference$1;->this$0:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v1}, Lcom/android/phone/RemindRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 99
    :cond_1b
    if-eqz v0, :cond_28

    .line 100
    iget-object v1, p0, Lcom/android/phone/RemindRingtonePreference$1;->this$0:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v1}, Lcom/android/phone/RemindRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_27
    return-object v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/RemindRingtonePreference$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/phone/RemindRingtonePreference$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/android/phone/RemindRingtonePreference$1;->this$0:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/RemindRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/RemindRingtonePreference$1;->this$0:Lcom/android/phone/RemindRingtonePreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/RemindRingtonePreference;->mRingtoneTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/phone/RemindRingtonePreference;->access$002(Lcom/android/phone/RemindRingtonePreference;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 111
    :cond_11
    return-void
.end method
