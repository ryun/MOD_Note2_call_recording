.class public Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneNumberLocatorBootCompletedReceiver.java"


# static fields
.field private static bTryAgain10Minutes:Z

.field private static bUpdateSuccess:Z

.field public static haveNetWork:Z

.field public static isSIMNetConnected:Z

.field public static isWifiNetConnected:Z

.field private static lastUpdateTime:I


# instance fields
.field private autoUpdate:Z

.field private bNeedUpdate:Z

.field private dateEve3Min:[I

.field private dateEve3MinTest:[I

.field private dateEveOne:[I

.field private dateEveSix:[I

.field private dateEveThree:[I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field public mContext:Landroid/content/Context;

.field public mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

.field private mWLANOnly:Z

.field private updateType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 148
    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    .line 150
    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    .line 152
    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->haveNetWork:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    .line 116
    const/16 v0, 0x104

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    return-void

    .line 71
    :array_32
    .array-data 0x4
        0x0t 0x6et 0xft 0x0t
        0x40t 0xb0t 0x1et 0x0t
        0x80t 0xf2t 0x2dt 0x0t
        0xc0t 0x34t 0x3dt 0x0t
        0x0t 0x77t 0x4ct 0x0t
        0x40t 0xb9t 0x5bt 0x0t
        0x80t 0xfbt 0x6at 0x0t
        0xc0t 0x3dt 0x7at 0x0t
        0x0t 0x80t 0x89t 0x0t
        0x40t 0xc2t 0x98t 0x0t
        0x80t 0x4t 0xa8t 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    .line 72
    :array_4e
    .array-data 0x4
        0x80t 0xf2t 0x2dt 0x0t
        0x40t 0xb9t 0x5bt 0x0t
        0x0t 0x80t 0x89t 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    .line 73
    :array_5a
    .array-data 0x4
        0x40t 0xb9t 0x5bt 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    .line 116
    :array_62
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0x23t 0x3t 0x0t 0x0t
        0x26t 0x3t 0x0t 0x0t
        0x29t 0x3t 0x0t 0x0t
        0x2ct 0x3t 0x0t 0x0t
        0x2ft 0x3t 0x0t 0x0t
        0x32t 0x3t 0x0t 0x0t
        0x35t 0x3t 0x0t 0x0t
        0x38t 0x3t 0x0t 0x0t
        0x3bt 0x3t 0x0t 0x0t
        0x3et 0x3t 0x0t 0x0t
        0x41t 0x3t 0x0t 0x0t
        0x44t 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
        0x4at 0x3t 0x0t 0x0t
        0x4dt 0x3t 0x0t 0x0t
        0x50t 0x3t 0x0t 0x0t
        0x53t 0x3t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x59t 0x3t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x87t 0x3t 0x0t 0x0t
        0x8at 0x3t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x90t 0x3t 0x0t 0x0t
        0x93t 0x3t 0x0t 0x0t
        0x96t 0x3t 0x0t 0x0t
        0x99t 0x3t 0x0t 0x0t
        0x9ct 0x3t 0x0t 0x0t
        0x9ft 0x3t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0xa5t 0x3t 0x0t 0x0t
        0xa8t 0x3t 0x0t 0x0t
        0xabt 0x3t 0x0t 0x0t
        0xaet 0x3t 0x0t 0x0t
        0xb1t 0x3t 0x0t 0x0t
        0xb4t 0x3t 0x0t 0x0t
        0xb7t 0x3t 0x0t 0x0t
        0xbat 0x3t 0x0t 0x0t
        0xbdt 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeet 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf4t 0x3t 0x0t 0x0t
        0xf7t 0x3t 0x0t 0x0t
        0xfat 0x3t 0x0t 0x0t
        0xfdt 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x3t 0x4t 0x0t 0x0t
        0x6t 0x4t 0x0t 0x0t
        0x9t 0x4t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xft 0x4t 0x0t 0x0t
        0x12t 0x4t 0x0t 0x0t
        0x15t 0x4t 0x0t 0x0t
        0x18t 0x4t 0x0t 0x0t
        0x1bt 0x4t 0x0t 0x0t
        0x1et 0x4t 0x0t 0x0t
        0x21t 0x4t 0x0t 0x0t
        0x4ct 0x4t 0x0t 0x0t
        0x4ft 0x4t 0x0t 0x0t
        0x52t 0x4t 0x0t 0x0t
        0x55t 0x4t 0x0t 0x0t
        0x58t 0x4t 0x0t 0x0t
        0x5bt 0x4t 0x0t 0x0t
        0x5et 0x4t 0x0t 0x0t
        0x61t 0x4t 0x0t 0x0t
        0x64t 0x4t 0x0t 0x0t
        0x67t 0x4t 0x0t 0x0t
        0x6at 0x4t 0x0t 0x0t
        0x6dt 0x4t 0x0t 0x0t
        0x70t 0x4t 0x0t 0x0t
        0x73t 0x4t 0x0t 0x0t
        0x76t 0x4t 0x0t 0x0t
        0x79t 0x4t 0x0t 0x0t
        0x7ct 0x4t 0x0t 0x0t
        0x7ft 0x4t 0x0t 0x0t
        0x82t 0x4t 0x0t 0x0t
        0x85t 0x4t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0xb3t 0x4t 0x0t 0x0t
        0xb6t 0x4t 0x0t 0x0t
        0xb9t 0x4t 0x0t 0x0t
        0xbct 0x4t 0x0t 0x0t
        0xbft 0x4t 0x0t 0x0t
        0xc2t 0x4t 0x0t 0x0t
        0xc5t 0x4t 0x0t 0x0t
        0xc8t 0x4t 0x0t 0x0t
        0xcbt 0x4t 0x0t 0x0t
        0xcet 0x4t 0x0t 0x0t
        0xd1t 0x4t 0x0t 0x0t
        0xd4t 0x4t 0x0t 0x0t
        0xd7t 0x4t 0x0t 0x0t
        0xdat 0x4t 0x0t 0x0t
        0xddt 0x4t 0x0t 0x0t
        0xe0t 0x4t 0x0t 0x0t
        0xe3t 0x4t 0x0t 0x0t
        0xe6t 0x4t 0x0t 0x0t
        0xe9t 0x4t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
        0x17t 0x5t 0x0t 0x0t
        0x1at 0x5t 0x0t 0x0t
        0x1dt 0x5t 0x0t 0x0t
        0x20t 0x5t 0x0t 0x0t
        0x23t 0x5t 0x0t 0x0t
        0x26t 0x5t 0x0t 0x0t
        0x29t 0x5t 0x0t 0x0t
        0x2ct 0x5t 0x0t 0x0t
        0x2ft 0x5t 0x0t 0x0t
        0x32t 0x5t 0x0t 0x0t
        0x35t 0x5t 0x0t 0x0t
        0x38t 0x5t 0x0t 0x0t
        0x3bt 0x5t 0x0t 0x0t
        0x3et 0x5t 0x0t 0x0t
        0x41t 0x5t 0x0t 0x0t
        0x44t 0x5t 0x0t 0x0t
        0x47t 0x5t 0x0t 0x0t
        0x4at 0x5t 0x0t 0x0t
        0x4dt 0x5t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x7bt 0x5t 0x0t 0x0t
        0x7et 0x5t 0x0t 0x0t
        0x81t 0x5t 0x0t 0x0t
        0x84t 0x5t 0x0t 0x0t
        0x87t 0x5t 0x0t 0x0t
        0x8at 0x5t 0x0t 0x0t
        0x8dt 0x5t 0x0t 0x0t
        0x90t 0x5t 0x0t 0x0t
        0x93t 0x5t 0x0t 0x0t
        0x96t 0x5t 0x0t 0x0t
        0x99t 0x5t 0x0t 0x0t
        0x9ct 0x5t 0x0t 0x0t
        0x9ft 0x5t 0x0t 0x0t
        0xa2t 0x5t 0x0t 0x0t
        0xa5t 0x5t 0x0t 0x0t
        0xa8t 0x5t 0x0t 0x0t
        0xabt 0x5t 0x0t 0x0t
        0xaet 0x5t 0x0t 0x0t
        0xb1t 0x5t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xdft 0x5t 0x0t 0x0t
        0xe2t 0x5t 0x0t 0x0t
        0xe5t 0x5t 0x0t 0x0t
        0xe8t 0x5t 0x0t 0x0t
        0xebt 0x5t 0x0t 0x0t
        0xeet 0x5t 0x0t 0x0t
        0xf1t 0x5t 0x0t 0x0t
        0xf4t 0x5t 0x0t 0x0t
        0xf7t 0x5t 0x0t 0x0t
        0xfat 0x5t 0x0t 0x0t
        0xfdt 0x5t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
        0x3t 0x6t 0x0t 0x0t
        0x6t 0x6t 0x0t 0x0t
        0x9t 0x6t 0x0t 0x0t
        0xct 0x6t 0x0t 0x0t
        0xft 0x6t 0x0t 0x0t
        0x12t 0x6t 0x0t 0x0t
        0x15t 0x6t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
        0x43t 0x6t 0x0t 0x0t
        0x46t 0x6t 0x0t 0x0t
        0x49t 0x6t 0x0t 0x0t
        0x4ct 0x6t 0x0t 0x0t
        0x4ft 0x6t 0x0t 0x0t
        0x52t 0x6t 0x0t 0x0t
        0x55t 0x6t 0x0t 0x0t
        0x58t 0x6t 0x0t 0x0t
        0x5bt 0x6t 0x0t 0x0t
        0x5et 0x6t 0x0t 0x0t
        0x61t 0x6t 0x0t 0x0t
        0x64t 0x6t 0x0t 0x0t
        0x67t 0x6t 0x0t 0x0t
        0x6at 0x6t 0x0t 0x0t
        0x6dt 0x6t 0x0t 0x0t
        0x70t 0x6t 0x0t 0x0t
        0x73t 0x6t 0x0t 0x0t
        0x76t 0x6t 0x0t 0x0t
        0x79t 0x6t 0x0t 0x0t
        0xa4t 0x6t 0x0t 0x0t
        0xa7t 0x6t 0x0t 0x0t
        0xaat 0x6t 0x0t 0x0t
        0xadt 0x6t 0x0t 0x0t
        0xb0t 0x6t 0x0t 0x0t
        0xb4t 0x6t 0x0t 0x0t
        0xb6t 0x6t 0x0t 0x0t
        0xb9t 0x6t 0x0t 0x0t
        0xbct 0x6t 0x0t 0x0t
        0xbft 0x6t 0x0t 0x0t
        0xc2t 0x6t 0x0t 0x0t
        0xc5t 0x6t 0x0t 0x0t
        0xc8t 0x6t 0x0t 0x0t
        0xcbt 0x6t 0x0t 0x0t
        0xcet 0x6t 0x0t 0x0t
        0xd1t 0x6t 0x0t 0x0t
        0xd4t 0x6t 0x0t 0x0t
        0xd7t 0x6t 0x0t 0x0t
        0xdat 0x6t 0x0t 0x0t
        0xddt 0x6t 0x0t 0x0t
        0x8t 0x7t 0x0t 0x0t
        0xbt 0x7t 0x0t 0x0t
        0xet 0x7t 0x0t 0x0t
        0x11t 0x7t 0x0t 0x0t
        0x14t 0x7t 0x0t 0x0t
        0x17t 0x7t 0x0t 0x0t
        0x1at 0x7t 0x0t 0x0t
        0x1dt 0x7t 0x0t 0x0t
        0x20t 0x7t 0x0t 0x0t
        0x23t 0x7t 0x0t 0x0t
        0x26t 0x7t 0x0t 0x0t
        0x29t 0x7t 0x0t 0x0t
        0x2ct 0x7t 0x0t 0x0t
        0x2ft 0x7t 0x0t 0x0t
        0x32t 0x7t 0x0t 0x0t
        0x35t 0x7t 0x0t 0x0t
        0x38t 0x7t 0x0t 0x0t
        0x3bt 0x7t 0x0t 0x0t
        0x3et 0x7t 0x0t 0x0t
        0x41t 0x7t 0x0t 0x0t
        0x6ct 0x7t 0x0t 0x0t
        0x6ft 0x7t 0x0t 0x0t
        0x72t 0x7t 0x0t 0x0t
        0x75t 0x7t 0x0t 0x0t
        0x78t 0x7t 0x0t 0x0t
        0x7bt 0x7t 0x0t 0x0t
        0x7et 0x7t 0x0t 0x0t
        0x81t 0x7t 0x0t 0x0t
        0x84t 0x7t 0x0t 0x0t
        0x87t 0x7t 0x0t 0x0t
        0x8at 0x7t 0x0t 0x0t
        0x8dt 0x7t 0x0t 0x0t
        0x90t 0x7t 0x0t 0x0t
        0x93t 0x7t 0x0t 0x0t
        0x96t 0x7t 0x0t 0x0t
        0x99t 0x7t 0x0t 0x0t
        0x9ct 0x7t 0x0t 0x0t
        0x9ft 0x7t 0x0t 0x0t
        0xa2t 0x7t 0x0t 0x0t
        0xa5t 0x7t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xd3t 0x7t 0x0t 0x0t
        0xd6t 0x7t 0x0t 0x0t
        0xd9t 0x7t 0x0t 0x0t
        0xdct 0x7t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0xe2t 0x7t 0x0t 0x0t
        0xe5t 0x7t 0x0t 0x0t
        0xe8t 0x7t 0x0t 0x0t
        0xebt 0x7t 0x0t 0x0t
        0xeet 0x7t 0x0t 0x0t
        0xf1t 0x7t 0x0t 0x0t
        0xf4t 0x7t 0x0t 0x0t
        0xf7t 0x7t 0x0t 0x0t
        0xfat 0x7t 0x0t 0x0t
        0xfdt 0x7t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x3t 0x8t 0x0t 0x0t
        0x6t 0x8t 0x0t 0x0t
        0x9t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method private checkTime()Z
    .registers 2

    .prologue
    .line 406
    const-string v0, "checkTime"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v0, :pswitch_data_22

    .line 426
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 411
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_b

    .line 413
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_b

    .line 415
    :pswitch_1a
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_b

    .line 408
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
        :pswitch_1a
    .end packed-switch
.end method

.method private getDataFromDB(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    sget-object v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "bTryAgain10"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    .line 310
    const-string v1, "lastUpdateTime"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    .line 311
    const-string v1, "tryTimes"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    .line 312
    const-string v1, "autoUpdate"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    .line 313
    const-string v1, "updateSuccess"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    .line 314
    const-string v1, "updateType"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    .line 315
    const-string v1, "WLANOnly"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bTryAgain10Minutes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastUpdateTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneNumberLocatorDownloader.tryTimes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bUpdateSuccess :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoUpdate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWLANOnly :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private getLatestTime()I
    .registers 7

    .prologue
    .line 347
    const-string v5, "getLatestTime"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, autoUpdateTime:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v1

    .line 351
    .local v1, currentTime:I
    iget v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v5, :pswitch_data_32

    .line 377
    :goto_f
    return v0

    .line 354
    :pswitch_10
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    .line 355
    .local v2, index1:I
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    aget v0, v5, v2

    .line 356
    goto :goto_f

    .line 358
    .end local v2           #index1:I
    :pswitch_1b
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    .line 359
    .local v3, index3:I
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    aget v0, v5, v3

    .line 360
    goto :goto_f

    .line 362
    .end local v3           #index3:I
    :pswitch_26
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    .line 363
    .local v4, index6:I
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    aget v0, v5, v4

    .line 364
    goto :goto_f

    .line 351
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1b
        :pswitch_26
    .end packed-switch
.end method

.method private getLatestTimeSuffix([II)I
    .registers 9
    .parameter "date"
    .parameter "currentTime"

    .prologue
    .line 382
    const-string v4, "getLatestTimeSuffix"

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 383
    const/4 v2, 0x0

    .line 384
    .local v2, index:I
    array-length v4, p1

    new-array v0, v4, [I

    .line 385
    .local v0, dateEveDiff:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    array-length v4, p1

    if-ge v1, v4, :cond_2e

    .line 386
    aget v4, p1, v1

    sub-int v4, p2, v4

    aput v4, v0, v1

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dateEveDiff[] is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 390
    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    array-length v4, v0

    if-ge v1, v4, :cond_44

    .line 391
    aget v4, v0, v1

    if-gez v4, :cond_39

    .line 390
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 394
    :cond_39
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 395
    .local v3, min:I
    aget v4, v0, v1

    if-le v3, v4, :cond_36

    .line 396
    aget v3, v0, v1

    .line 397
    move v2, v1

    goto :goto_36

    .line 401
    .end local v3           #min:I
    :cond_44
    return v2
.end method

.method private isNetConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 250
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    if-eqz v1, :cond_22

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetConnected isWifiNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 252
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-eqz v1, :cond_4e

    .line 261
    :cond_21
    :goto_21
    return v0

    .line 256
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetConnected isSIMNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isWifiNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 257
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    if-nez v1, :cond_21

    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-nez v1, :cond_21

    .line 261
    :cond_4e
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isTime([I)Z
    .registers 6
    .parameter "data"

    .prologue
    .line 430
    const-string v2, "isTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v0

    .line 432
    .local v0, currentTime:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in isTime()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    array-length v2, p1

    if-ge v1, v2, :cond_32

    .line 434
    aget v2, p1, v1

    if-ne v2, v0, :cond_2f

    .line 435
    const/4 v2, 0x1

    .line 438
    :goto_2e
    return v2

    .line 433
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 438
    :cond_32
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method private isVersionAndDBFileValid()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x1

    .line 543
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v4, :cond_88

    .line 544
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v1

    .line 545
    .local v1, mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    if-eqz v1, :cond_88

    .line 546
    iget-object v4, v1, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_25

    iget-object v4, v1, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_37

    :cond_25
    iget-object v4, v1, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    const-string v5, "20"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v1, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_4e

    .line 549
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVersionAndDBFileValid - mVersionInfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 560
    .end local v1           #mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :goto_4d
    return v2

    .line 552
    .restart local v1       #mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_4e
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v4, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, dbFile:Ljava/io/File;
    iget-wide v4, v1, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_88

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVersionAndDBFileValid - mVersionInfo.dbSize :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dbFile.length() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_4d

    .end local v0           #dbFile:Ljava/io/File;
    .end local v1           #mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_88
    move v2, v3

    .line 560
    goto :goto_4d
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 564
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 568
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 569
    return-void
.end method

.method private makeTest()V
    .registers 8

    .prologue
    .line 493
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MMdd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 495
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v3, v5, 0x2710

    .line 498
    .local v3, headTime:I
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    .line 499
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1e
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2f

    .line 500
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 502
    :cond_2f
    return-void
.end method

.method private needUpdateDB()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->needUpdateForDownloadfailed()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 266
    const-string v3, "needUpdateForDownloadfailed"

    invoke-direct {p0, v3, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 283
    :goto_c
    return v2

    .line 269
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTime()I

    move-result v0

    .line 270
    .local v0, autoUpdateTime:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoUpdateTime is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateExp(I)Z

    move-result v1

    .line 274
    .local v1, updateExp:Z
    if-eqz v1, :cond_33

    .line 275
    const-string v3, "updateExp is true"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 278
    :cond_33
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkTime()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 279
    const-string v3, "checkTime"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 282
    :cond_3f
    const-string v2, "needUpdateDB is false"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private needUpdateForDownloadfailed()Z
    .registers 5

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    sub-int v0, v2, v3

    .line 328
    .local v0, gapTime:I
    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    .line 329
    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    if-eqz v2, :cond_20

    .line 330
    const/4 v1, 0x1

    .local v1, i:I
    :goto_13
    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    if-ge v1, v2, :cond_20

    .line 331
    mul-int/lit8 v2, v1, 0xa

    if-ne v0, v2, :cond_1d

    .line 332
    const/4 v2, 0x1

    .line 336
    .end local v1           #i:I
    :goto_1c
    return v2

    .line 330
    .restart local v1       #i:I
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 336
    .end local v1           #i:I
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private updateExp(I)Z
    .registers 4
    .parameter "autoUpdateTime"

    .prologue
    const/4 v0, 0x1

    .line 293
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    if-nez v1, :cond_e

    .line 294
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    if-eqz v1, :cond_d

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    if-ge v1, p1, :cond_16

    .line 301
    :cond_d
    :goto_d
    return v0

    .line 297
    :cond_e
    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    if-eqz v1, :cond_d

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    if-lt v1, p1, :cond_d

    .line 301
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public checkDB()V
    .registers 4

    .prologue
    .line 529
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v1

    if-nez v1, :cond_f

    .line 530
    const-string v1, "checkDB - DB or version file is not correct, reset to default DB and version file"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 537
    :cond_f
    :goto_f
    return-void

    .line 533
    :catch_10
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public checkNetWork(Landroid/content/Context;)Z
    .registers 12
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 443
    if-nez p1, :cond_a

    .line 444
    const-string v9, "context null"

    invoke-direct {p0, v9, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 487
    :cond_9
    :goto_9
    return v7

    .line 447
    :cond_a
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 450
    .local v1, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 453
    .local v4, networkInfoWifi:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_37

    .line 455
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 460
    .local v6, wifiState:Landroid/net/NetworkInfo$State;
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v9, v6, :cond_24

    sget-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v9, v6, :cond_34

    .line 461
    :cond_24
    sput-boolean v7, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    .line 469
    .end local v6           #wifiState:Landroid/net/NetworkInfo$State;
    :goto_26
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 471
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_9

    .line 473
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 475
    .local v5, type:I
    if-ne v8, v5, :cond_3a

    :goto_32
    move v7, v8

    .line 484
    goto :goto_9

    .line 463
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    .end local v5           #type:I
    .restart local v6       #wifiState:Landroid/net/NetworkInfo$State;
    :cond_34
    sput-boolean v8, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_26

    .line 466
    .end local v6           #wifiState:Landroid/net/NetworkInfo$State;
    :cond_37
    sput-boolean v7, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_26

    .line 479
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    .restart local v5       #type:I
    :cond_3a
    sput-boolean v8, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    .line 480
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, defaultHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 482
    .local v3, defaultPort:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultHost:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "defaultPort:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public getCurrentTime()I
    .registers 4

    .prologue
    .line 340
    const-string v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 342
    .local v1, date:Ljava/util/Date;
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    const-string v0, "onReceive"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 162
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 163
    const-string v0, "Phone number locator feature is dsiabled"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 247
    :cond_14
    :goto_14
    return-void

    .line 167
    :cond_15
    if-eqz p1, :cond_2e

    .line 168
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mContext:Landroid/content/Context;

    .line 169
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-nez v0, :cond_29

    .line 170
    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    .line 171
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    .line 173
    :cond_29
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    .line 176
    :cond_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6b

    .line 177
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_BOOT_COMPLETED)"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 178
    if-nez p1, :cond_47

    .line 179
    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_14

    .line 182
    :cond_47
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    .line 183
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    .line 185
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_67

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_67

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_67

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 188
    :cond_67
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkDB()V

    goto :goto_14

    .line 189
    :cond_6b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_108

    .line 190
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_TIME_TICK)"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 192
    if-nez p1, :cond_84

    .line 193
    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_14

    .line 197
    :cond_84
    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_b1

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_b1

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService PhoneNumberLocatorDownloader.sDownloadFailTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_14

    .line 204
    :cond_b1
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->makeTest()V

    .line 205
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    .line 208
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-nez v0, :cond_c2

    .line 209
    const-string v0, "auto update is not available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_14

    .line 214
    :cond_c2
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 215
    const-string v0, "SIM and wifi both are\'t available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 216
    if-eqz p1, :cond_14

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_14

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 218
    const-string v0, "PhoneNumberLocatorBootCompletedReceiver context.stopService"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_14

    .line 222
    :cond_e4
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->needUpdateDB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    .line 224
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    if-eqz v0, :cond_14

    .line 225
    const-string v0, "bNeedUpdate is true"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 226
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    if-nez v0, :cond_14

    .line 227
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->startDownloadThread()V

    goto/16 :goto_14

    .line 230
    :cond_108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_161

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    .line 232
    if-nez p1, :cond_13d

    .line 233
    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_14

    .line 236
    :cond_13d
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    .line 238
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_14

    .line 239
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    .line 240
    sput-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_14

    .line 244
    :cond_161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_14
.end method

.method public startCopyThread()V
    .registers 4

    .prologue
    .line 507
    :try_start_0
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;)V

    .line 517
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 521
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_d
    return-void

    .line 518
    :catch_e
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
