.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private dormantReject:Z

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallResId:I

.field private mMissedCallName:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 359
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 5
    .parameter "app"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 123
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 135
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 138
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 151
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->dormantReject:Z

    .line 163
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    .line 164
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 165
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 167
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 169
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPowerManager:Landroid/os/PowerManager;

    .line 171
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 174
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 175
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    .line 176
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    .line 177
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 180
    :cond_50
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 181
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NotificationMgr;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/NotificationMgr;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V

    return-void
.end method

.method private cancelInCall()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1334
    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1336
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1339
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1340
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    if-eqz v0, :cond_5e

    .line 1342
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v3, :cond_5f

    move v0, v1

    .line 1343
    :goto_2e
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_41

    move v2, v1

    .line 1346
    :cond_41
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 1347
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v1

    .line 1354
    :cond_53
    if-nez v1, :cond_59

    if-nez v0, :cond_5e

    if-nez v2, :cond_5e

    .line 1355
    :cond_59
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->hideCallView()V

    .line 1367
    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v0, v2

    .line 1342
    goto :goto_2e

    .line 1360
    :cond_61
    :try_start_61
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 1361
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getState()I

    move-result v2

    if-eq v2, v1, :cond_5e

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getState()I

    move-result v0

    if-eq v0, v3, :cond_5e

    .line 1362
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->hideCallView()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7c} :catch_7d

    goto :goto_5e

    .line 1364
    :catch_7d
    move-exception v0

    goto :goto_5e
.end method

.method private cancelMute()V
    .registers 3

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_e

    .line 886
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 889
    :cond_e
    return-void
.end method

.method private cancelNetworkSelection()V
    .registers 3

    .prologue
    .line 1849
    const-string v0, "cancelNetworkSelection()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1850
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1851
    return-void
.end method

.method private cancelSpeakerphone()V
    .registers 3

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_e

    .line 810
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 813
    :cond_e
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 577
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 578
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 579
    return-void
.end method

.method private createClearMissedCallsIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 754
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 755
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;
    .registers 5
    .parameter

    .prologue
    .line 192
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 193
    :try_start_3
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_17

    .line 194
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 196
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 200
    :goto_13
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 198
    :cond_17
    const-string v0, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 201
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private isTTSEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1572
    .line 1576
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "driving_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6b

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "driving_mode_voice_mail_notification"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6b

    move v0, v1

    .line 1578
    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTTSenable, driveModeForVoiceMail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1581
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_6f

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTTSenable, phone.state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1583
    const-string v0, "alertoncall_mode"

    .line 1585
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1586
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6d

    .line 1597
    :cond_6a
    :goto_6a
    return v1

    :cond_6b
    move v0, v2

    .line 1576
    goto :goto_1f

    :cond_6d
    move v1, v2

    .line 1589
    goto :goto_6a

    .line 1591
    :cond_6f
    if-nez v0, :cond_6a

    move v1, v2

    .line 1594
    goto :goto_6a
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1997
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 2001
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2002
    return-void
.end method

.method private notifyMute()V
    .registers 7

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_1b

    .line 878
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e028d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 882
    :cond_1b
    return-void
.end method

.method private notifySpeakerphone()V
    .registers 7

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_1b

    .line 802
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e028c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 806
    :cond_1b
    return-void
.end method

.method private registerMissedCallNotification(Landroid/app/Notification;)V
    .registers 4
    .parameter "notification"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    iput v0, p1, Landroid/app/Notification;->missedCount:I

    .line 744
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 746
    invoke-static {p1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 747
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 749
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/phone/NotificationMgr;->updateBadge(Landroid/content/Context;)V

    .line 750
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNetworkSelection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1818
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01a9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1821
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1822
    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1823
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1824
    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1825
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1828
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1829
    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1832
    const-string v4, "implicit_network_setting"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1833
    const-string v4, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1838
    :goto_61
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1840
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1842
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1843
    return-void

    .line 1835
    :cond_74
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.NetworkSetting"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_61
.end method

.method private updateInCallNotification(Z)V
    .registers 11
    .parameter

    .prologue
    const v5, 0x7f020410

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1012
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_2c

    .line 1013
    const-string v0, "- non-voice-capable device; suppressing notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1297
    :goto_2b
    return-void

    .line 1019
    :cond_2c
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1020
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_66

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_66

    .line 1021
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1022
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1023
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_2b

    .line 1027
    :cond_52
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_66

    .line 1028
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1029
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1030
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_2b

    .line 1035
    :cond_66
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 1036
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 1037
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 1038
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 1040
    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 1041
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_158

    move v0, v1

    .line 1042
    :goto_90
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_15b

    move v3, v1

    .line 1043
    :goto_9d
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_15e

    move v4, v1

    .line 1045
    :cond_aa
    :goto_aa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - hasRingingCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1046
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - hasActiveCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - hasHoldingCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    .line 1065
    if-eqz v0, :cond_f3

    .line 1069
    :cond_f3
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v7

    .line 1071
    if-eqz v7, :cond_fd

    .line 1073
    :cond_fd
    const-string v6, "kor_cs_vt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_12b

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_12b

    :cond_11d
    const-string v6, "ims_vt_call"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_161

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v6

    if-eqz v6, :cond_161

    :cond_12b
    move v6, v1

    .line 1080
    :goto_12c
    if-nez v6, :cond_163

    const-string v6, "call_icon_display_in_call_screen"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_163

    .line 1081
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_146

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v6

    if-eqz v6, :cond_163

    :cond_146
    if-nez v0, :cond_163

    .line 1082
    const-string v0, "- suppressNotification = true; reducing clutter in status bar..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1083
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1090
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1091
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_2b

    :cond_158
    move v0, v2

    .line 1041
    goto/16 :goto_90

    :cond_15b
    move v3, v2

    .line 1042
    goto/16 :goto_9d

    :cond_15e
    move v4, v2

    .line 1043
    goto/16 :goto_aa

    :cond_161
    move v6, v2

    .line 1073
    goto :goto_12c

    .line 1099
    :cond_163
    if-eqz v0, :cond_2bb

    .line 1102
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_184

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_184

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_184

    .line 1103
    const v5, 0x7f020416

    .line 1129
    :cond_184
    :goto_184
    const-string v4, "usa_cdma_concept"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_191

    .line 1130
    if-eqz v7, :cond_191

    .line 1131
    const v5, 0x7f020417

    .line 1140
    :cond_191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Updating status bar icon: resId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1141
    iput v5, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1152
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_319

    .line 1153
    if-eqz v0, :cond_307

    .line 1154
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1169
    :goto_1b9
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    .line 1171
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1172
    iget v5, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 1173
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1182
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v1, :cond_335

    .line 1183
    const-string v3, "updateInCallNotification(): is a Video call"

    invoke-direct {p0, v3, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1184
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v3, v2, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1190
    :goto_1e0
    iput-object v2, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1192
    new-instance v3, Lcom/android/phone/InCallQuickPanel;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04006c

    invoke-direct {v3, v5, v6}, Lcom/android/phone/InCallQuickPanel;-><init>(Ljava/lang/String;I)V

    .line 1193
    invoke-virtual {v3}, Lcom/android/phone/InCallQuickPanel;->updateInCallQuickPanel()V

    .line 1194
    iput-object v3, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1196
    :try_start_1f5
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "com.movial.ipphone.IPPhone"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_346

    .line 1198
    const/4 v3, -0x2

    iput v3, v4, Landroid/app/Notification;->priority:I
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_20e} :catch_34b

    .line 1214
    :goto_20e
    if-eqz v0, :cond_296

    .line 1215
    const-string v0, "- Using hi-pri notification for ringing call!"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1220
    :try_start_215
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "com.movial.ipphone.IPPhone"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_355

    .line 1221
    const/4 v0, -0x2

    iput v0, v4, Landroid/app/Notification;->priority:I
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_22e} :catch_360

    .line 1240
    :goto_22e
    if-eqz p1, :cond_296

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Setting fullScreenIntent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1247
    iput-object v2, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1269
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1270
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 1271
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1273
    :cond_25c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_26c

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v2

    if-eqz v2, :cond_28a

    :cond_26c
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_28a

    :cond_27a
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28a

    const-string v0, "call_icon_display_in_call_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_296

    .line 1277
    :cond_28a
    const-string v0, "NotificationMgr"

    const-string v2, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1286
    :cond_296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1288
    iput v1, v4, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 1289
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1295
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1296
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_2b

    .line 1105
    :cond_2bb
    if-nez v3, :cond_2cb

    if-eqz v4, :cond_2cb

    .line 1107
    if-eqz v7, :cond_2c6

    .line 1108
    const v5, 0x7f020419

    goto/16 :goto_184

    .line 1110
    :cond_2c6
    const v5, 0x7f020414

    goto/16 :goto_184

    .line 1112
    :cond_2cb
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    if-eqz v4, :cond_2df

    .line 1114
    if-eqz v7, :cond_2da

    .line 1115
    const v5, 0x7f020418

    goto/16 :goto_184

    .line 1117
    :cond_2da
    const v5, 0x7f020411

    goto/16 :goto_184

    .line 1120
    :cond_2df
    if-eqz v7, :cond_305

    .line 1121
    const v4, 0x7f020417

    .line 1125
    :goto_2e4
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_370

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_370

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_370

    .line 1126
    const v5, 0x7f020416

    goto/16 :goto_184

    :cond_305
    move v4, v5

    .line 1123
    goto :goto_2e4

    .line 1155
    :cond_307
    if-eqz v3, :cond_311

    .line 1156
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_1b9

    .line 1158
    :cond_311
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_1b9

    .line 1161
    :cond_319
    if-eqz v0, :cond_323

    .line 1162
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_1b9

    .line 1163
    :cond_323
    if-eqz v3, :cond_32d

    .line 1164
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_1b9

    .line 1166
    :cond_32d
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_1b9

    .line 1186
    :cond_335
    const-string v3, "updateInCallNotification(): is a Voice call"

    invoke-direct {p0, v3, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1187
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v3, v2, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto/16 :goto_1e0

    .line 1200
    :cond_346
    const/4 v3, 0x2

    :try_start_347
    iput v3, v4, Landroid/app/Notification;->priority:I
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_349} :catch_34b

    goto/16 :goto_20e

    .line 1201
    :catch_34b
    move-exception v3

    .line 1202
    iput v8, v4, Landroid/app/Notification;->priority:I

    .line 1203
    const-string v3, "IPPhone doesn\'t exist!"

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_20e

    .line 1223
    :cond_355
    :try_start_355
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 1224
    const/4 v0, 0x2

    iput v0, v4, Landroid/app/Notification;->priority:I
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_35e} :catch_360

    goto/16 :goto_22e

    .line 1225
    :catch_360
    move-exception v0

    .line 1226
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 1227
    iput v8, v4, Landroid/app/Notification;->priority:I

    .line 1228
    const-string v0, "IPPhone doesn\'t exist!"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_22e

    :cond_370
    move v5, v4

    goto/16 :goto_184
.end method

.method private updateSpeakerNotification()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 827
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 828
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_4b

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    if-eqz v4, :cond_4b

    move v1, v2

    .line 831
    .local v1, showNotification:Z
    :goto_1d
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 832
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_39

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_4d

    :cond_39
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    if-eqz v4, :cond_4d

    move v1, v2

    .line 835
    :cond_40
    :goto_40
    if-eqz v1, :cond_4f

    const-string v2, "updateSpeakerNotification: speaker ON"

    :goto_44
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 840
    return-void

    .end local v1           #showNotification:Z
    :cond_4b
    move v1, v3

    .line 828
    goto :goto_1d

    .restart local v1       #showNotification:Z
    :cond_4d
    move v1, v3

    .line 832
    goto :goto_40

    .line 835
    :cond_4f
    const-string v2, "updateSpeakerNotification: speaker OFF (or not offhook)"

    goto :goto_44
.end method


# virtual methods
.method cancelCallInProgressNotifications()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1374
    const-string v0, "cancelCallInProgressNotifications()..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1375
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_b

    .line 1383
    :goto_a
    return-void

    .line 1379
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1380
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1381
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1382
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_a
.end method

.method cancelEcbmNotification()V
    .registers 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1957
    return-void
.end method

.method cancelMissedCallNotification()V
    .registers 3

    .prologue
    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 767
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 768
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->clearMissedCallLogsDB()V

    .line 769
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/phone/NotificationMgr;->updateBadge(Landroid/content/Context;)V

    .line 770
    return-void
.end method

.method clearMissedCallLogsDB()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 773
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "new"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v2, " = 1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 782
    return-void
.end method

.method hideAllowDataAccess()V
    .registers 3

    .prologue
    .line 1992
    const-string v0, "hideAllowDataAccess()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1993
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1994
    return-void
.end method

.method hideDataDisconnectedRoaming()V
    .registers 3

    .prologue
    .line 1805
    const-string v0, "hideDataDisconnectedRoaming()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1806
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1807
    return-void
.end method

.method notifyECBM()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1922
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0e044e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1925
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1928
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1929
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1930
    const-string v2, "com.android.phone"

    const-class v3, Lcom/android/phone/EmergencyCallbackMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1932
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1936
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0447

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1937
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0446

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1940
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0203ca

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1944
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1945
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 1952
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1953
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V
    .registers 27
    .parameter "name"
    .parameter "number"
    .parameter "type"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "date"

    .prologue
    .line 604
    const/4 v11, 0x0

    .line 609
    .local v11, callLogIntent:Landroid/content/Intent;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v2, :cond_e

    .line 610
    const-string v2, "notifyMissedCall: non-voice-capable device, not posting notification"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 733
    .end local p4
    :goto_d
    return-void

    .line 614
    .restart local p4
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMissedCall(). name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", photo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", photoIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 626
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 627
    .local v14, locale:Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "fa"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "ur"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 628
    :cond_8e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v2, "\u200f\u202d"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 635
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_a4
    if-eqz p1, :cond_200

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 636
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    .line 644
    :goto_b2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/NotificationMgr;->dormantReject:Z

    if-eqz v2, :cond_d6

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0763

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    .line 646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/NotificationMgr;->dormantReject:Z

    .line 652
    :cond_d6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21f

    .line 653
    const v17, 0x7f0e019c

    .line 654
    .local v17, titleResId:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    .line 656
    .local v13, expandedText:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->createCallLogIntent(Z)Landroid/content/Intent;

    move-result-object v11

    .line 664
    :goto_e9
    if-nez v11, :cond_ef

    .line 665
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v11

    .line 669
    :cond_ef
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 670
    .local v10, builder:Landroid/app/Notification$Builder;
    const v2, 0x108007f

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e019f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v11, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->createClearMissedCallsIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_252

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_252

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_252

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_252

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_252

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add actions with the number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add actions with the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 691
    const v2, 0x7f020049

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e01aa

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/phone/PhoneApp;->getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v10, v2, v3, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 695
    const v2, 0x7f02004a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e01ab

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/phone/PhoneApp;->getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v10, v2, v3, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 699
    if-eqz p5, :cond_242

    .line 700
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 723
    .end local p4
    :cond_1f5
    :goto_1f5
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 732
    .local v15, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V

    goto/16 :goto_d

    .line 637
    .end local v10           #builder:Landroid/app/Notification$Builder;
    .end local v13           #expandedText:Ljava/lang/String;
    .end local v15           #notification:Landroid/app/Notification;
    .end local v17           #titleResId:I
    .restart local p4
    :cond_200
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20e

    .line 638
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    goto/16 :goto_b2

    .line 641
    :cond_20e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;

    goto/16 :goto_b2

    .line 658
    :cond_21f
    const v17, 0x7f0e019d

    .line 659
    .restart local v17       #titleResId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0e019e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 661
    .restart local v13       #expandedText:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->createCallLogIntent(Z)Landroid/content/Intent;

    move-result-object v11

    goto/16 :goto_e9

    .line 701
    .restart local v10       #builder:Landroid/app/Notification$Builder;
    :cond_242
    move-object/from16 v0, p4

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1f5

    .line 702
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1f5

    .line 706
    .restart local p4
    :cond_252
    :try_start_252
    new-instance v4, Landroid/app/Notification$InboxStyle;

    invoke-direct {v4, v10}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 707
    .local v4, inbox:Landroid/app/Notification$InboxStyle;
    invoke-virtual {v4, v13}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 709
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v2, "is_read"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0  AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v3, -0x3

    const-string v5, "content://logs/call"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "date DESC LIMIT 10"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_293} :catch_295

    goto/16 :goto_d

    .line 716
    .end local v4           #inbox:Landroid/app/Notification$InboxStyle;
    .end local v18           #where:Ljava/lang/StringBuilder;
    :catch_295
    move-exception v12

    .line 717
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "MISSED_CALL_TOKEN cursor returns null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suppress actions. number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", missedCalls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_1f5
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JZ)V
    .registers 9
    .parameter "name"
    .parameter "number"
    .parameter "type"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "date"
    .parameter "dormant"

    .prologue
    .line 737
    iput-boolean p8, p0, Lcom/android/phone/NotificationMgr;->dormantReject:Z

    .line 738
    invoke-virtual/range {p0 .. p7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 739
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1305
    const-string v0, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1310
    if-ne p2, p0, :cond_59

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- compactName is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1321
    const-string v0, "- updating notification after query complete..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1327
    :goto_58
    return-void

    .line 1324
    :cond_59
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .registers 5
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 1907
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1910
    :cond_9
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1911
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1912
    return-void
.end method

.method showAllowDataAccess()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f0e06d1

    const/4 v4, 0x0

    .line 1960
    const-string v0, "showAllowDataAccess()..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1962
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1965
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1968
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1969
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1970
    const-string v2, "com.android.phone"

    const-class v3, Lcom/android/phone/AllowDataAccess;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1972
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1975
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1976
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1979
    new-instance v3, Landroid/app/Notification;

    const v4, 0x108008a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1985
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1986
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 1988
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1989
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1754
    const-string v0, "showDataDisconnectedRoaming()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1757
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1758
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1760
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTGlobalAutoRoaming"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    :goto_23
    new-instance v1, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1778
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e00bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1790
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1796
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1799
    return-void

    .line 1761
    :cond_5d
    const-string v1, "implicit_network_setting"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1762
    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    .line 1763
    :cond_6b
    const-string v1, "usa_spr_roaming_feature"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1764
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Roaming"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    .line 1766
    :cond_7b
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23
.end method

.method public updateBadge(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 785
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 787
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_5
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 788
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.android.jcontacts.activities.DialtactsActivity"

    iget v4, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 794
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBadge(): count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 798
    :goto_2f
    return-void

    .line 791
    :cond_30
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    iget v4, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_3a

    goto :goto_16

    .line 795
    :catch_3a
    move-exception v1

    .line 796
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "updateBadge(): BadgeProvider wasn\'t installed"

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    goto :goto_2f
.end method

.method updateCdmaCfi(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCdmaCfi(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1690
    if-nez p1, :cond_21

    .line 1744
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1746
    :goto_20
    return-void

    .line 1705
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1707
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1708
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CdmaCallForwardOptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    :goto_3c
    const-string v1, "SS_Type"

    const-string v2, "forwarding"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    if-eqz p1, :cond_45

    .line 1717
    :cond_45
    if-eqz p1, :cond_8b

    .line 1718
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0332

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1723
    :goto_4f
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020413

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1729
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0065

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0068

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1740
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1742
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_20

    .line 1710
    :cond_83
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallTypeSelect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    .line 1720
    :cond_8b
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0333

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_4f
.end method

.method updateCfi(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x6

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCfi(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1607
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1608
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1610
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCfi() : voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1624
    if-nez v0, :cond_58

    .line 1677
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1679
    :goto_57
    return-void

    .line 1639
    :cond_58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1640
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1642
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    if-eqz v0, :cond_6d

    .line 1650
    :cond_6d
    if-eqz v0, :cond_a3

    .line 1651
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0332

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1656
    :goto_78
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020413

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1662
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0065

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1673
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1675
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_57

    .line 1653
    :cond_a3
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0333

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_78
.end method

.method public updateInCallNotification()V
    .registers 2

    .prologue
    .line 940
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 941
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 943
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 944
    return-void
.end method

.method updateMuteNotification()V
    .registers 3

    .prologue
    .line 910
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 911
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2b

    :cond_1c
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 912
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 927
    :goto_2a
    return-void

    .line 915
    :cond_2b
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 916
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_2a

    .line 919
    :cond_34
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_4d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 920
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    goto :goto_2a

    .line 923
    :cond_4d
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_2a
.end method

.method updateMwi(Z)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x5

    const/4 v3, 0x0

    const v8, 0x7f0e01a5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMwi(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1392
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1393
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1395
    :cond_2e
    if-eqz p1, :cond_21f

    .line 1397
    const-string v0, "enable_urgenct_voice_mail_notification"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1398
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1399
    const-string v1, "vm_priority_key_cdma"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1400
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b3

    .line 1401
    const v0, 0x7f02040e

    .line 1421
    :goto_4a
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    .line 1423
    if-lez v1, :cond_bb

    const/16 v2, 0xff

    if-ge v1, v2, :cond_bb

    .line 1424
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01a4

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1425
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    :goto_6b
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- got vm number: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1448
    if-nez v2, :cond_cc

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v6

    if-nez v6, :cond_cc

    .line 1449
    const-string v6, "- Null vm number: SIM records not loaded (yet)..."

    invoke-direct {p0, v6, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 1462
    iget v6, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v6, :cond_c5

    .line 1463
    const-string v0, "  - Retrying in 10000 msec..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 1569
    :goto_b2
    return-void

    .line 1403
    :cond_b3
    const v0, 0x108007e

    goto :goto_4a

    .line 1406
    :cond_b7
    const v0, 0x108007e

    goto :goto_4a

    .line 1427
    :cond_bb
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b

    .line 1467
    :cond_c5
    const-string v6, "NotificationMgr"

    const-string v7, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_cc
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 1475
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    .line 1476
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e01a4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1477
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1481
    :cond_ef
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 1482
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01a7

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1505
    :goto_fe
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1506
    const-string v7, "voicemail_roaming_number"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    .line 1507
    const/high16 v7, 0x1020

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1509
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1518
    :goto_117
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1520
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1522
    const-string v8, "button_voicemail_notification_ringtone_key"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1526
    const-string v9, "pref_key_voicemail_sound"

    invoke-interface {v7, v9, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1527
    const-string v10, "voicemail_notification_setting"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1da

    if-nez v9, :cond_1da

    .line 1537
    :goto_139
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1538
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1544
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 1547
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->isTTSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 1548
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    .line 1563
    :cond_16b
    :goto_16b
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1564
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1565
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_b2

    .line 1486
    :cond_17b
    const-string v6, "voicemail_roaming_number"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19c

    .line 1487
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0190

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_fe

    .line 1491
    :cond_19c
    const-string v6, "disable_format_number"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b4

    .line 1492
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_fe

    .line 1496
    :cond_1b4
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_fe

    .line 1511
    :cond_1c8
    const-string v7, "android.intent.action.CALL"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    const-string v7, "voicemail"

    const-string v8, ""

    invoke-static {v7, v8, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_117

    .line 1530
    :cond_1da
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e6

    .line 1531
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_139

    .line 1533
    :cond_1e6
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto/16 :goto_139

    .line 1551
    :cond_1ea
    const-string v0, "button_voicemail_notification_vibrate_when_key"

    const-string v2, "never"

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    const-string v2, "always"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1555
    const-string v3, "silent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1556
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1558
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v4, :cond_21d

    move v0, v4

    .line 1559
    :goto_20f
    if-nez v2, :cond_215

    if-eqz v3, :cond_16b

    if-eqz v0, :cond_16b

    .line 1560
    :cond_215
    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_16b

    :cond_21d
    move v0, v5

    .line 1558
    goto :goto_20f

    .line 1567
    :cond_21f
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_b2
.end method

.method updateNetworkSelection(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1859
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1860
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1862
    :cond_13
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1866
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1868
    const-string v0, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1871
    const-string v0, "network_selection_key"

    const-string v4, ""

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkSelection()...state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " new network "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1878
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 1881
    if-eqz v1, :cond_63

    if-ne v1, v3, :cond_8e

    .line 1882
    :cond_63
    const-string v1, "NO SIM"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    move v1, v3

    .line 1888
    :goto_69
    if-eqz v1, :cond_6f

    .line 1889
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1903
    :cond_6e
    :goto_6e
    return-void

    .line 1890
    :cond_6f
    if-eq p1, v3, :cond_74

    const/4 v1, 0x2

    if-ne p1, v1, :cond_84

    :cond_74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 1892
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v1, :cond_6e

    .line 1893
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1894
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_6e

    .line 1897
    :cond_84
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v0, :cond_6e

    .line 1898
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1899
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_6e

    :cond_8e
    move v1, v2

    goto :goto_69
.end method

.method public updateNotificationAndLaunchIncomingCallUi()V
    .registers 2

    .prologue
    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 981
    return-void
.end method

.method public updateNotificationsAtStartup()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 331
    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 334
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v0, "- start call log query..."

    invoke-direct {p0, v0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 343
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 348
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 349
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 355
    invoke-static {}, Lcom/android/phone/InCallQuickPanel;->registerQuickPanelReceiver()V

    .line 356
    return-void
.end method

.method public updateSpeakerNotification(Z)V
    .registers 4
    .parameter "showNotification"

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSpeakerNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V

    .line 869
    if-eqz p1, :cond_23

    .line 870
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 874
    :goto_22
    return-void

    .line 872
    :cond_23
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_22
.end method
