.class public Lcom/android/phone/callsettings/AutoRejectBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoRejectBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static updateAutoRejectNotification(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "autoreject_mode"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, autorejectMode:I
    const/4 v11, 0x3

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e02c4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e02d5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e02d6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 48
    .local v9, summaryString:[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v3, intent:Landroid/content/Intent;
    new-instance v7, Ljava/lang/String;

    const-string v11, "com.android.phone"

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 50
    .local v7, pkg_name:Ljava/lang/String;
    const-string v11, ".callsettings.AutoRejectPreference"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, className:Ljava/lang/String;
    const-string v11, "AutoRejectBootReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pkg name :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  Cls name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 58
    .local v6, notificationManager:Landroid/app/NotificationManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 59
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v11, "autoreject_mode_enable_sharedpref"

    const/4 v12, 0x1

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 62
    .local v4, isOn:Z
    const/4 v11, 0x1

    if-ne v0, v11, :cond_b6

    if-eqz v4, :cond_b6

    .line 63
    const/4 v10, 0x0

    .line 64
    .local v10, ticker:Ljava/lang/String;
    const v11, 0x7f0e02e0

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 65
    new-instance v5, Landroid/app/Notification;

    const v11, 0x7f02040d

    const-wide/16 v12, 0x0

    invoke-direct {v5, v11, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 68
    .local v5, notification:Landroid/app/Notification;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 69
    .local v2, contentIntent:Landroid/app/PendingIntent;
    const v11, 0x7f0e02e1

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0e02e0

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, p0, v11, v12, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 71
    const/16 v11, 0x64

    invoke-virtual {v6, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 75
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #notification:Landroid/app/Notification;
    .end local v10           #ticker:Ljava/lang/String;
    :goto_b5
    return-void

    .line 73
    :cond_b6
    const/16 v11, 0x64

    invoke-virtual {v6, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_b5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v1, "AutoRejectBootReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRejectBootReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 82
    const-string v1, "AutoRejectBootReceiver"

    const-string v2, "AutoRejectBootReceiver: FAILURE unable to get content resolver."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 91
    :cond_2a
    :goto_2a
    return-void

    .line 86
    :cond_2b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-static {p1}, Lcom/android/phone/callsettings/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    goto :goto_2a
.end method
