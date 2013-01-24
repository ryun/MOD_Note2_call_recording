.class public Lcom/android/phone/CallReminderNotificationHelper;
.super Ljava/lang/Object;
.source "CallReminderNotificationHelper.java"


# static fields
.field private static mInstance:Lcom/android/phone/CallReminderNotificationHelper;

.field private static mNotificationData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    .line 32
    sput-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/CallReminderNotificationHelper;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/android/phone/CallReminderNotificationHelper;

    invoke-direct {v0}, Lcom/android/phone/CallReminderNotificationHelper;-><init>()V

    sput-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    .line 36
    :cond_b
    sget-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    return-object v0
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 44
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static getRemindNotificationData()Landroid/os/Bundle;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/android/phone/CallReminderNotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 66
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    .line 67
    const v1, 0x10003000

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 68
    return-void
.end method

.method public notify(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0e074e

    const/4 v6, 0x0

    .line 48
    .line 49
    sput-object p2, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    .line 50
    invoke-static {p1}, Lcom/android/phone/CallReminderNotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020089

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rejectTime"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 52
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 53
    const-class v3, Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    invoke-static {p1, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const-string v4, "rejecttime"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 59
    const v3, 0x7f0e074c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 60
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 61
    const v2, 0x10003000

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 62
    return-void
.end method
