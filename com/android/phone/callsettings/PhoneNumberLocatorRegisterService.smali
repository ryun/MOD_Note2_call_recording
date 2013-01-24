.class public Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;
.super Landroid/app/Service;
.source "PhoneNumberLocatorRegisterService.java"


# static fields
.field public static PNL_AUTO_UPDATE:Ljava/lang/String;

.field public static isServiceStarted:Z


# instance fields
.field private mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "pnlAutoUpdate"

    sput-object v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 84
    const-string v0, "PhoneNumberLocatorRegisterService"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 85
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    .line 44
    const-string v1, "onCreate()"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->log(Ljava/lang/String;Z)V

    .line 45
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-direct {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 74
    const-string v0, "Destroying PhoneNumberLocatorRegisterService"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->log(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    .line 77
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    const-string v0, "onStart()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->log(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method
