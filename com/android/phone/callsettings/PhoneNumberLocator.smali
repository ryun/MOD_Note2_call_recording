.class public Lcom/android/phone/callsettings/PhoneNumberLocator;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static isLanguageChange:Z

.field private static state:Z


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private autoUpdate:Z

.field private autoUpdatePreference:Landroid/preference/ListPreference;

.field private displayVersion:Ljava/lang/String;

.field private final extraSize:I

.field private isNeedRestartService:Z

.field mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

.field private mBinTmpFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoUpdatingToast:Landroid/widget/Toast;

.field private mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

.field private mNumberRegionOnOff:[I

.field private mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field public mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field private mWLANOnly:Z

.field private mWLANUpdateOnlyChecked:Landroid/preference/CheckBoxPreference;

.field private manualUpdatePreference:Landroid/preference/PreferenceScreen;

.field private updateType:I

.field private version:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->SRC_TAGS:[Ljava/lang/String;

    .line 114
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 566
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 47
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 54
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->extraSize:I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionOnOff:[I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_DOWNLOAD_FINISH:I

    .line 102
    iput v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_HTTP_EXCEPTION:I

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_FILE_EXCEPTION:I

    .line 104
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_VERSION_SAME:I

    .line 105
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_COPY_FINISH:I

    .line 106
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_USER_CANCELED:I

    .line 126
    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$1;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    .line 564
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionTmpFile:Ljava/lang/String;

    .line 565
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mBinTmpFile:Ljava/lang/String;

    .line 709
    return-void

    .line 79
    nop

    :array_2e
    .array-data 0x4
        0x71t 0x4t 0xet 0x7ft
        0x72t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/PhoneNumberLocator;)Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V

    return-void
.end method

.method private createDialog()V
    .registers 4

    .prologue
    const v2, 0x7f0e02cc

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e047d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$3;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    .line 342
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0485

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$4;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    .line 353
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0476

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$5;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    .line 364
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0480

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$6;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 376
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0481

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$7;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 387
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 388
    return-void
.end method

.method private enablePNLService(Z)V
    .registers 6
    .parameter

    .prologue
    .line 519
    if-eqz p1, :cond_19

    .line 520
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_18

    .line 521
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 528
    :cond_18
    :goto_18
    return-void

    .line 524
    :cond_19
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_18

    .line 525
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_18
.end method

.method private getDataFromDB()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 418
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 422
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "updateType"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->updateType:I

    .line 424
    const-string v1, "WLANOnly"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOnly:Z

    .line 426
    const-string v1, "autoUpdate"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdate:Z

    .line 427
    return-void
.end method

.method private initLocalnumberDBDownloader()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-nez v0, :cond_b

    .line 204
    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    .line 205
    :cond_b
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    .line 208
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 717
    const-string v0, "PhoneNumberLocator"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 721
    const-string v0, "PhoneNumberLocator"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 722
    return-void
.end method

.method private refreshVersion()V
    .registers 3

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 394
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    :cond_11
    return-void
.end method

.method private restartService()V
    .registers 5

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    if-eqz v0, :cond_16

    .line 704
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 705
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    .line 706
    return-void
.end method

.method private saveAutoUpdate(Z)V
    .registers 6
    .parameter "autoUpdate"

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autoUpdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 516
    return-void
.end method

.method private saveUdateType(I)V
    .registers 6
    .parameter "updateType"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "updateType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    return-void
.end method

.method private saveWLANOnly(Z)V
    .registers 6
    .parameter "WLANOnly"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 536
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "WLANOnly"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void
.end method

.method private startDownloadThread()V
    .registers 7

    .prologue
    .line 570
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_38

    .line 572
    :try_start_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0e0475

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 575
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$8;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$8;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 583
    const-string v1, "Long running dialog(show)"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_30

    .line 588
    :try_start_26
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v1, :cond_2f

    .line 589
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->startDownloadThread()V

    .line 594
    :cond_2f
    :goto_2f
    return-void

    .line 584
    :catch_30
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error while mProgressDialog working"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_2f

    .line 590
    .end local v0           #e:Ljava/lang/Exception;
    :catch_38
    move-exception v0

    .line 591
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .registers 2

    .prologue
    .line 597
    monitor-enter p0

    :try_start_1
    const-string v0, "mProgressDialog dismiss()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    .line 599
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 602
    :cond_12
    monitor-exit p0

    return-void

    .line 597
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 542
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, myFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 544
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v2, :cond_1b

    .line 545
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v3, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_7f

    .line 554
    .end local v1           #myFile:Ljava/io/File;
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    if-eqz v2, :cond_84

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayVersion is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    :goto_6f
    return-object v2

    .line 547
    .restart local v1       #myFile:Ljava/io/File;
    :cond_70
    :try_start_70
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v2, :cond_1b

    .line 548
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v3, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7e} :catch_7f

    goto :goto_1b

    .line 550
    .end local v1           #myFile:Ljava/io/File;
    :catch_7f
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 561
    .end local v0           #e:Ljava/lang/Exception;
    :cond_84
    const/4 v2, 0x0

    goto :goto_6f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e048b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    .line 215
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->initLocalnumberDBDownloader()V

    .line 216
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->addPreferencesFromResource(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 218
    const-string v1, "number_region_activation_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    .line 220
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;Lcom/android/phone/callsettings/PhoneNumberLocator$1;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.action.UPDATE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getDataFromDB()V

    .line 227
    const-string v1, "manual_update_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    .line 228
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$2;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    const-string v1, "version_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    .line 273
    const-string v1, "auto_update_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    .line 276
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdate:Z

    if-nez v1, :cond_9f

    .line 277
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 303
    :goto_87
    const-string v1, "wlan_update_only_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Landroid/preference/CheckBoxPreference;

    .line 304
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOnly:Z

    if-nez v1, :cond_9a

    .line 305
    const-string v1, "wlan not available in oncreate"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 309
    :cond_9a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->setHasOptionsMenu(Z)V

    .line 310
    return-void

    .line 280
    :cond_9f
    iget v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->updateType:I

    packed-switch v1, :pswitch_data_d6

    goto :goto_87

    .line 282
    :pswitch_a5
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e046b

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_87

    .line 286
    :pswitch_b5
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e0489

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_87

    .line 290
    :pswitch_c5
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e048a

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_87

    .line 280
    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_b5
        :pswitch_c5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 605
    const v0, 0x7f0e0477

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020436

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 607
    const/4 v0, 0x1

    const v1, 0x7f0e0474

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020430

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 609
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 401
    const-string v0, "null != mProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 403
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 405
    :cond_11
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v0, :cond_1c

    .line 406
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    .line 407
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    .line 409
    :cond_1c
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    if-eqz v0, :cond_2e

    .line 411
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    .line 414
    :cond_2e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 415
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 618
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 620
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_66

    .line 653
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 622
    :pswitch_d
    const-string v0, "MENU_RESET_TO_DEFAULT"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 623
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0477

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0478

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cc

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$10;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$10;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cd

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$9;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$9;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v6

    .line 642
    goto :goto_c

    .line 644
    :pswitch_4a
    const-string v0, "MENU_HELP"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 647
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 648
    const-class v0, Lcom/android/phone/callsettings/PhoneNumberLocatorHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0474

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 649
    goto :goto_c

    .line 620
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4a
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 315
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 318
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 495
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 614
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 323
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 324
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V

    .line 325
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->createDialog()V

    .line 326
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 328
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 431
    const-string v6, "onSharedPreferenceChanged"

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 433
    const-string v6, "auto_update_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 434
    const-string v6, "KEY_AUTO_UPDATE"

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 435
    const-string v6, "3"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, type:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged the type is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 437
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 438
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 439
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 440
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e046a

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 468
    .end local v2           #type:Ljava/lang/String;
    :cond_46
    :goto_46
    const-string v6, "number_region_activation_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 469
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_115

    move v1, v4

    .line 471
    .local v1, numberregion_checked:I
    :goto_55
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "number_region_activation_preference"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberregion_checked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "number_region_activation_preference"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 479
    .local v0, numberRegionActivited:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberRegionActivited: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionOnOff:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 485
    .end local v0           #numberRegionActivited:I
    .end local v1           #numberregion_checked:I
    :cond_a5
    const-string v5, "wlan_update_only_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 486
    const-string v5, "KEY_WLAN_UPDATE"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 487
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 488
    .local v3, wlanUpdate:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveWLANOnly(Z)V

    .line 490
    .end local v3           #wlanUpdate:Ljava/lang/Boolean;
    :cond_c1
    return-void

    .line 441
    .restart local v2       #type:Ljava/lang/String;
    :cond_c2
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 442
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 443
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 444
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    .line 445
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e046b

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_46

    .line 446
    :cond_dd
    const-string v6, "3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 447
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 448
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 449
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    .line 450
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e0489

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_46

    .line 451
    :cond_f9
    const-string v6, "4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 452
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 453
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 454
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    .line 455
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e048a

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_46

    .end local v2           #type:Ljava/lang/String;
    :cond_115
    move v1, v5

    .line 469
    goto/16 :goto_55
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 686
    const-string v0, "onStop"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 694
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    .line 695
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    .line 696
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    .line 697
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 698
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 700
    return-void
.end method

.method public startCopyThread()V
    .registers 4

    .prologue
    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 660
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$11;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$11;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 677
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 681
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_10
    return-void

    .line 678
    :catch_11
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
