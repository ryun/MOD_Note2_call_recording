.class public Lcom/android/phone/CallReminderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallReminderReceiver.java"


# static fields
.field private static RemindDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallReminderReceiver;->RemindDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "CallReminderReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 47
    const-string v0, "CallReminderReceiver"

    const-string v1, "start removeExpiredAndSetAlarm"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p1}, Lcom/android/phone/CallReminderAlarm;->removeExpiredAndSetAlarm(Landroid/content/Context;)V

    .line 101
    :cond_30
    :goto_30
    return-void

    .line 49
    :cond_31
    const-string v1, "com.android.phone.CALLREMINDER_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 54
    const/4 v0, 0x0

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/android/phone/CallReminderAlarm;->getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_72

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_72

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 59
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 60
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 62
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 63
    const-string v8, "number"

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "rejectTime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    const-string v3, "alertTime"

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    :cond_72
    if-ne v0, v9, :cond_89

    .line 69
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_92

    .line 70
    invoke-static {}, Lcom/android/phone/CallReminderNotificationHelper;->getInstance()Lcom/android/phone/CallReminderNotificationHelper;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/android/phone/CallReminderNotificationHelper;->notify(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 82
    :cond_89
    :goto_89
    invoke-static {p1}, Lcom/android/phone/CallReminderAlarm;->removeExpiredAndSetAlarm(Landroid/content/Context;)V

    .line 83
    if-eqz v2, :cond_30

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 74
    :cond_92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-class v3, Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    const/high16 v3, 0x1800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    const-string v0, "CallReminderReceiver"

    const-string v1, "start CallReminderActivity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 87
    :cond_af
    const-string v1, "com.samsung.intent.action.CALL_REMIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "numbers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/phone/CallReminderAlarm;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 91
    :cond_e2
    const-string v1, "delete_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 92
    invoke-static {p1}, Lcom/android/phone/CallReminderAlarm;->clearAlarm(Landroid/content/Context;)V

    goto/16 :goto_30

    .line 93
    :cond_ef
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "numbers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2, v9}, Lcom/android/phone/CallReminderAlarm;->updateAlarm(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_30

    .line 95
    :cond_110
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "numbers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2, v4}, Lcom/android/phone/CallReminderAlarm;->updateAlarm(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_30
.end method
