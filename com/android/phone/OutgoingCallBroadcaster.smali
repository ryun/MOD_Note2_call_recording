.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# static fields
.field private static assisDialing:Ljava/lang/reflect/Method;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWaitingSpinner:Landroid/widget/ProgressBar;

.field private roamingIntent:Landroid/content/Intent;

.field private roamingNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 116
    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/phone/PhoneApp;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->checkAddCall(Lcom/android/phone/PhoneApp;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1819
    :try_start_1
    sget-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->assisDialing:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_1e

    .line 1825
    :goto_13
    return-object v0

    .line 1820
    :catch_14
    move-exception v0

    .line 1821
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "InvocationTargetException"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1822
    goto :goto_13

    .line 1823
    :catch_1e
    move-exception v0

    .line 1824
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "IllegalAccessException"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1825
    goto :goto_13
.end method

.method public static assistedDialing_fromContact(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1809
    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromContactList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->assisDialing:Ljava/lang/reflect/Method;

    .line 1810
    invoke-static {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 1813
    :goto_1b
    return-object v0

    .line 1811
    :catch_1c
    move-exception v0

    .line 1812
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "NoSuchMethodException"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static assistedDialing_fromDialer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1799
    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromDialPad"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->assisDialing:Ljava/lang/reflect/Method;

    .line 1800
    invoke-static {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 1803
    :goto_1b
    return-object v0

    .line 1801
    :catch_1c
    move-exception v0

    .line 1802
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "NoSuchMethodException"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private checkAddCall(Lcom/android/phone/PhoneApp;)Z
    .registers 4
    .parameter

    .prologue
    .line 1748
    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v0, v1, :cond_47

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v0, v1, :cond_47

    const-string v0, "thrway_active_disable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_49

    :cond_47
    const/4 v0, 0x1

    :goto_48
    return v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method private emergencyPlayTone(I)V
    .registers 6
    .parameter

    .prologue
    .line 1732
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1733
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_21

    .line 1734
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    monitor-exit v1

    .line 1745
    :goto_20
    return-void

    .line 1738
    :cond_21
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1742
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1743
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1744
    monitor-exit v1

    goto :goto_20

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 429
    if-eqz p1, :cond_f

    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->isLargerThan32Chars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 430
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 432
    .end local p1
    :cond_f
    return-object p1
.end method

.method private formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 1455
    .line 1456
    const-string v1, ""

    .line 1457
    if-eqz p1, :cond_70

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_70

    .line 1458
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1459
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatNumberForVideoConference: dialStrings.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_30
    array-length v2, v3

    if-ge v1, v2, :cond_71

    .line 1461
    aget-object v2, v3, v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1462
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5a

    .line 1464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1466
    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_30

    :cond_70
    move-object v0, p1

    .line 1471
    :cond_71
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1472
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatNumberForVideoConference: newDialString.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_93
    return-object v0
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 1509
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonVoiceCapable: handling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on non-voice-capable device..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1512
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1513
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1528
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "tel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1529
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1530
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- relaunching as a DIAL intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 1532
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 1541
    :goto_5f
    return-void

    .line 1538
    :cond_60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_5f
.end method

.method private isImsRegistered()Z
    .registers 4

    .prologue
    .line 697
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 698
    const-string v0, "true"

    const-string v1, "persist.sys.ims.reg"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 700
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isLargerThan32Chars(Ljava/lang/String;)Z
    .registers 4
    .parameter "number"

    .prologue
    .line 436
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isVoicemail(Landroid/content/Intent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1784
    const-string v0, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    if-nez v0, :cond_12

    .line 1786
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1793
    :goto_11
    return v2

    .line 1790
    :cond_12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1791
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1792
    :goto_1c
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoicemail - scheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    if-eqz v0, :cond_43

    const-string v3, "voicemail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    :goto_3f
    move v2, v0

    goto :goto_11

    .line 1791
    :cond_41
    const/4 v0, 0x0

    goto :goto_1c

    :cond_43
    move v0, v2

    .line 1793
    goto :goto_3f
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 20
    .parameter

    .prologue
    .line 805
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processIntent() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 812
    sget-boolean v3, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v3, :cond_43

    .line 813
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "This device is detected as non-voice-capable device."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 814
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/OutgoingCallBroadcaster;->handleNonVoiceCapable(Landroid/content/Intent;)V

    .line 1452
    :goto_42
    return-void

    .line 820
    :cond_43
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 822
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallSKTRAD(Landroid/content/Intent;)V

    .line 823
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallSKTWZone(Landroid/content/Intent;)V

    .line 826
    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 827
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 828
    const-string v3, "origin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 829
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NUMBER_FROM_WHERE : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v3, "assisted_dialing_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bb3

    .line 832
    const/4 v3, 0x0

    .line 833
    const-string v6, "global_network_cdma_gsm_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 834
    const/4 v3, 0x1

    .line 835
    :cond_97
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "assisted_dialing"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_bb3

    .line 836
    const-string v3, "from_contact"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_fromContact(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 838
    :goto_b4
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- got number from assisted dialing: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_d2
    if-eqz v3, :cond_2a2

    .line 845
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10c

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10c

    .line 846
    const-string v4, "911"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_10c

    .line 847
    const-string v3, "tel"

    const-string v4, "119"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 848
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 851
    :cond_10c
    const-string v4, "international_call_service"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "int_call_svc_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 857
    const-string v6, "OutgoingCallBroadcaster"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : internationalServiceNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    if-nez v4, :cond_1b5

    .line 859
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    const-string v3, "tel"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 862
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 863
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeNumber = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : confirm changedNumber = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1b5
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_212

    .line 869
    const-string v4, "android.intent.extra.VTCallDialer"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 870
    const-string v5, "videocall"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 871
    const-string v6, "CALL_END"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setCallEnd(Z)V

    .line 872
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isEvdoOnly()Z

    move-result v6

    if-eqz v6, :cond_202

    if-nez v4, :cond_202

    if-nez v5, :cond_202

    .line 873
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v4, "Cannot make a call in data only mode(evdo,lte)."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 837
    :cond_1f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_fromDialer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b4

    .line 880
    :cond_202
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_212

    .line 881
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 885
    :cond_212
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29a

    .line 886
    const/4 v4, 0x1

    .line 887
    const-string v5, "ims_vt_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_248

    .line 888
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_248

    const-string v5, "ims_vt_call_conference"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_248

    .line 889
    const-string v5, "IS_CONF_CALL"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 890
    if-eqz v5, :cond_248

    .line 891
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 892
    const/4 v3, 0x0

    move/from16 v17, v3

    move-object v3, v4

    move/from16 v4, v17

    .line 896
    :cond_248
    if-eqz v4, :cond_252

    .line 897
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_252
    move-object v5, v3

    .line 905
    :goto_253
    const-string v3, "android.intent.extra.VTCallDialer"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 906
    const-string v3, "IS_CONF_CALL"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 907
    if-eqz v5, :cond_2a4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a4

    .line 908
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 910
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 911
    if-eqz v3, :cond_281

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a4

    :cond_281
    const-string v3, "sip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a4

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a4

    .line 913
    const v3, 0x7f0e0025

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 901
    :cond_29a
    const-string v4, "OutgoingCallBroadcaster"

    const-string v5, "The number obtained from Intent is null."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2a2
    move-object v5, v3

    goto :goto_253

    .line 919
    :cond_2a4
    const-string v3, "videocall"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 920
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of callType from invoked application"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of VTCallDialer from invoked application "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    if-eqz v5, :cond_341

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_341

    const/4 v3, 0x1

    move v4, v3

    .line 925
    :goto_2e9
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "emergencyNumber"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v6, 0x0

    .line 929
    const-string v3, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 931
    if-eqz v3, :cond_bb0

    .line 932
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    .line 933
    :goto_312
    const-string v6, "OutgoingCallBroadcaster"

    const-string v12, "phoneRestrictionPolicy != null"

    invoke-static {v6, v12}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v6, 0x1

    .line 936
    if-eqz v3, :cond_bad

    if-nez v4, :cond_bad

    .line 937
    invoke-virtual {v3, v5}, Landroid/app/enterprise/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v3

    .line 939
    :goto_322
    if-nez v4, :cond_344

    .line 941
    if-nez v3, :cond_344

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040120

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 944
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "!canMakeCall - finish"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 923
    :cond_341
    const/4 v3, 0x0

    move v4, v3

    goto :goto_2e9

    .line 950
    :cond_344
    const-string v3, "voip_interworking"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_363

    .line 951
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPRingOrOffhook()Z

    move-result v3

    if-eqz v3, :cond_363

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->canUseHoldInVoIP()Z

    move-result v3

    if-nez v3, :cond_363

    .line 952
    const v3, 0x7f0e0518

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 958
    :cond_363
    const-string v3, "ims_vt_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b2

    .line 960
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate mVTCallDialer - "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-nez v11, :cond_387

    if-eqz v9, :cond_3b2

    .line 963
    :cond_387
    const-string v3, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 964
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 965
    if-eqz v3, :cond_3b2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3b2

    const-string v6, "WIFI"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b2

    .line 967
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto/16 :goto_42

    .line 974
    :cond_3b2
    const-string v3, "android.phone.extra.speakeron"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_51f

    .line 976
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    .line 987
    :goto_3c1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f1

    .line 991
    const-string v3, "android.intent.action.CALL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f1

    .line 992
    const-string v3, "OutgoingCallBroadcaster"

    const-string v6, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v3, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v3, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    :cond_3f1
    if-eqz v5, :cond_524

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_524

    const/4 v3, 0x1

    move v6, v3

    .line 1010
    :goto_3fd
    if-eqz v5, :cond_528

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_528

    const/4 v3, 0x1

    .line 1013
    :goto_408
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " - Checking restrictions for number \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\':"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     isExactEmergencyNumber     = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v6, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     isPotentialEmergencyNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_baa

    .line 1026
    if-nez v11, :cond_474

    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46a

    if-nez v9, :cond_474

    :cond_46a
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52f

    if-eqz v9, :cond_52f

    .line 1029
    :cond_474
    const-string v6, "OutgoingCallBroadcaster"

    const-string v7, "For VIDEO CALL"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const-string v6, "com.android.phone.videocall"

    .line 1031
    const-string v7, "emergency_vtcall"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_489

    .line 1032
    if-eqz v3, :cond_52b

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    .line 1034
    :cond_489
    :goto_489
    const-string v7, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    :goto_4a6
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v7

    .line 1063
    const-string v12, "android.intent.action.CALL"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_622

    .line 1064
    if-eqz v3, :cond_5b6

    .line 1065
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot call potential emergency number \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with CALL Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "Launching default dialer instead..."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1076
    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1081
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate(): calling startActivity for Dialer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 978
    :cond_51f
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    goto/16 :goto_3c1

    .line 1008
    :cond_524
    const/4 v3, 0x0

    move v6, v3

    goto/16 :goto_3fd

    .line 1010
    :cond_528
    const/4 v3, 0x0

    goto/16 :goto_408

    .line 1032
    :cond_52b
    const-string v6, "com.android.phone.videocall"

    goto/16 :goto_489

    .line 1037
    :cond_52f
    const-string v6, "OutgoingCallBroadcaster"

    const-string v7, "For VOICE CALL"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_589

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_589

    .line 1039
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_589

    .line 1040
    const-string v6, "*77#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56e

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_589

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_589

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_589

    .line 1042
    :cond_56e
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "can not DualNumber call in roaming area"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const v4, 0x7f0e071f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1050
    :cond_589
    if-eqz v3, :cond_5b3

    .line 1051
    const-string v6, "OutgoingCallBroadcaster"

    const-string v7, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Use ACTION_CALL_EMERGENCY as an action instead."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v6, "android.intent.action.CALL_EMERGENCY"

    .line 1057
    :goto_594
    const-string v7, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " - updating action from CALL_PRIVILEGED to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4a6

    .line 1055
    :cond_5b3
    const-string v6, "android.intent.action.CALL"

    goto :goto_594

    .line 1088
    :cond_5b6
    const/4 v3, 0x0

    .line 1090
    if-eqz v11, :cond_5c8

    .line 1091
    const-string v3, "OutgoingCallBroadcaster"

    const-string v6, "ACTION_CALL For B2B APP VIDEO CALL"

    invoke-static {v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v6, "com.android.phone.videocall"

    .line 1093
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const/4 v3, 0x0

    .line 1134
    :cond_5c8
    :goto_5c8
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74d

    iget-object v7, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v12, 0x2

    if-ne v7, v12, :cond_74d

    .line 1135
    const-string v7, "com.android.phone.extra.FLASH_DTMF"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1136
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DTMFflag = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v12, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_735

    if-nez v11, :cond_735

    .line 1138
    if-eqz v7, :cond_6de

    .line 1139
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1140
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 1141
    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 1142
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setEmptyFlash(Z)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1096
    :cond_622
    const-string v12, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_66b

    .line 1104
    if-nez v3, :cond_661

    .line 1105
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot call non-potential-emergency number "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with EMERGENCY_CALL Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Finish the Activity immediately."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1112
    :cond_661
    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const/4 v3, 0x1

    goto/16 :goto_5c8

    .line 1114
    :cond_66b
    const-string v3, "com.android.phone.videocall"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67d

    .line 1115
    const-string v3, "OutgoingCallBroadcaster"

    const-string v7, "Inside VIDEO CALL INTENT ACTION from Dialer for U1"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v3, 0x0

    goto/16 :goto_5c8

    .line 1118
    :cond_67d
    if-eqz v7, :cond_6b9

    const-string v3, "com.android.phone.emergency_call_notification_intent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b9

    .line 1120
    const-class v3, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ecn_ussd - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v4, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1123
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1128
    :cond_6b9
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Finish the Activity immediately."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1150
    :cond_6de
    iget-object v12, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v12, v13, :cond_704

    .line 1151
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_704

    .line 1152
    const v3, 0x7f0e057e

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 1153
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "Not Surport 3rd Call in roaming area!!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1159
    :cond_704
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->fgConnectionsIsIncoming()Z

    move-result v12

    if-nez v12, :cond_722

    .line 1160
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isThrWayCallAvailable(Ljava/lang/String;)Z

    move-result v12

    .line 1161
    if-nez v12, :cond_735

    .line 1162
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "No Service 3rd Call!!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const v3, 0x7f0e057f

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1168
    :cond_722
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v12

    if-eqz v12, :cond_735

    .line 1170
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1171
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 1172
    sget-object v12, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsExt;->setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V

    .line 1178
    :cond_735
    if-eqz v7, :cond_74d

    iget-object v7, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v12, :cond_74d

    .line 1179
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "phone state is idle.. cannot flash with dtmf"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1185
    :cond_74d
    const-string v7, "restrict_international_call"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_768

    .line 1187
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallAbroad(Ljava/lang/String;)Z

    move-result v7

    .line 1188
    if-nez v4, :cond_768

    if-nez v7, :cond_768

    .line 1189
    const v3, 0x7f0e0514

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1204
    :cond_768
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1209
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ba7

    .line 1210
    const-string v3, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_793

    .line 1211
    const-string v3, "OutgoingCallBroadcaster"

    const-string v4, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1216
    :cond_793
    const-string v3, "OutgoingCallBroadcaster"

    const-string v7, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v3, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-string v3, "com.android.phone.videocall"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b0

    .line 1218
    const-string v3, "OutgoingCallBroadcaster"

    const-string v7, "change action video to voice call"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v3, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    :cond_7b0
    const/4 v3, 0x1

    move v7, v3

    .line 1225
    :goto_7b2
    const-string v3, "ims_vt_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c2

    const-string v3, "kor_cs_vt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d1

    .line 1226
    :cond_7c2
    const-string v3, "com.android.phone.videocall"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_810

    if-nez v7, :cond_810

    .line 1227
    sget-object v3, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 1239
    :cond_7d1
    :goto_7d1
    if-eqz v7, :cond_8f5

    .line 1244
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate(): callNow case! Calling placeCall(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v3, v12, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1248
    const-string v3, "ecbm_emergency_calls_only_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_816

    const-string v3, "ril.cdma.inecmmode"

    const-string v12, "false"

    invoke-static {v3, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "true"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_816

    if-nez v4, :cond_816

    .line 1251
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto/16 :goto_42

    .line 1229
    :cond_810
    sget-object v3, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    goto :goto_7d1

    .line 1253
    :cond_816
    const-string v3, "usa_spr_roaming_feature"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_850

    if-nez v4, :cond_850

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_82f

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v3

    if-nez v3, :cond_846

    :cond_82f
    const-string v3, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_850

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_850

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v3

    if-eqz v3, :cond_850

    .line 1259
    :cond_846
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->showCallRoamingGuard(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 1261
    :cond_850
    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_984

    const-string v3, "usa_cdma_emergency_concept"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_984

    if-eqz v4, :cond_984

    .line 1264
    const-string v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1265
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "emergency_tone"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1267
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v13

    .line 1269
    const-string v14, "emergency_tone_alert_always"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_89c

    const/4 v14, 0x1

    if-ne v12, v14, :cond_8cd

    const/4 v12, 0x1

    if-eq v3, v12, :cond_8cd

    if-eqz v3, :cond_8cd

    const-string v3, "emergency_tone_alert_master_vol"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8cd

    .line 1273
    :cond_89c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1274
    :try_start_8a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_8a5
    .catchall {:try_start_8a1 .. :try_end_8a5} :catchall_97e

    if-nez v3, :cond_8c5

    .line 1276
    :try_start_8a7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_8b9

    if-eqz v13, :cond_950

    invoke-virtual {v13}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v3

    if-eqz v3, :cond_950

    .line 1278
    :cond_8b9
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v13, 0x0

    const/16 v14, 0x50

    invoke-direct {v3, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_8c5
    .catchall {:try_start_8a7 .. :try_end_8c5} :catchall_97e
    .catch Ljava/lang/RuntimeException; {:try_start_8a7 .. :try_end_8c5} :catch_95e

    .line 1287
    :cond_8c5
    :goto_8c5
    :try_start_8c5
    monitor-exit v12
    :try_end_8c6
    .catchall {:try_start_8c5 .. :try_end_8c6} :catchall_97e

    .line 1288
    const/16 v3, 0x5d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->emergencyPlayTone(I)V

    .line 1290
    :cond_8cd
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1291
    :try_start_8d2
    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_8e9

    .line 1292
    iget-object v3, v8, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_8e3

    .line 1293
    iget-object v3, v8, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->hideOtaSpeakerButton()V

    .line 1294
    :cond_8e3
    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 1295
    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 1297
    :cond_8e9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 1298
    monitor-exit v12
    :try_end_8f5
    .catchall {:try_start_8d2 .. :try_end_8f5} :catchall_981

    .line 1313
    :cond_8f5
    :goto_8f5
    const-string v3, "com.android.phone.CALL_ORIGIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1314
    if-eqz v3, :cond_991

    .line 1315
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " - Call origin is passed ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 1332
    :goto_924
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1333
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 1334
    const-string v13, "sip"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_93a

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9a1

    .line 1335
    :cond_93a
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "The requested number was detected as SIP call."

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1336
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_42

    .line 1280
    :cond_950
    :try_start_950
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v13, 0x4

    const/16 v14, 0x5a

    invoke-direct {v3, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_95c
    .catchall {:try_start_950 .. :try_end_95c} :catchall_97e
    .catch Ljava/lang/RuntimeException; {:try_start_950 .. :try_end_95c} :catch_95e

    goto/16 :goto_8c5

    .line 1282
    :catch_95e
    move-exception v3

    .line 1283
    :try_start_95f
    const-string v13, "OutgoingCallBroadcaster"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception caught while creating local tone generator: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_8c5

    .line 1287
    :catchall_97e
    move-exception v3

    monitor-exit v12
    :try_end_980
    .catchall {:try_start_95f .. :try_end_980} :catchall_97e

    throw v3

    .line 1298
    :catchall_981
    move-exception v3

    :try_start_982
    monitor-exit v12
    :try_end_983
    .catchall {:try_start_982 .. :try_end_983} :catchall_981

    throw v3

    .line 1300
    :cond_984
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_8f5

    .line 1318
    :cond_991
    const-string v3, "OutgoingCallBroadcaster"

    const-string v12, " - Call origin is not passed. Reset current one."

    const/4 v13, 0x1

    invoke-static {v3, v12, v13}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1319
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->resetLatestActiveCallOrigin()V

    goto :goto_924

    .line 1345
    :cond_9a1
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    const-string v13, "ims_volte"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9f2

    .line 1351
    const-string v13, "android.phone.calltype"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 1352
    const-string v14, "android.phone.calltype"

    invoke-virtual {v12, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1354
    const-string v14, "isDirect1xCall"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 1355
    const-string v15, "isDirect1xCall"

    invoke-virtual {v12, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1357
    const-string v14, "OutgoingCallBroadcaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OnCreate --isCallTypeSelected >"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v13, "auto_test"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 1360
    const-string v14, "auto_test"

    invoke-virtual {v12, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1363
    :cond_9f2
    if-eqz v5, :cond_9f9

    .line 1364
    const-string v13, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    :cond_9f9
    const-string v13, "ims_vt_call"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a2e

    .line 1367
    if-nez v9, :cond_a05

    if-eqz v11, :cond_a20

    .line 1368
    :cond_a05
    const-string v9, "android.intent.extra.VTCallDialer"

    const/4 v11, 0x1

    invoke-virtual {v12, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1369
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a20

    const-string v9, "ims_vt_call_conference"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a20

    .line 1370
    const-string v9, "IS_CONF_CALL"

    invoke-virtual {v12, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1374
    :cond_a20
    const-string v9, "auto_test"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1375
    const-string v10, "auto_test"

    invoke-virtual {v12, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1377
    :cond_a2e
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 1378
    const-string v9, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v12, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1379
    const-string v7, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    const-string v3, "android.phone.extra.CALL_DIRECTCALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a58

    .line 1382
    const-string v3, "android.phone.extra.CALL_DIRECTCALL"

    const-string v7, "android.phone.extra.CALL_DIRECTCALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    :cond_a58
    const-string v3, "com.android.phone.videocall"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3c

    .line 1385
    const-string v3, "OutgoingCallBroadcaster"

    const-string v6, "Inside VIDEO CALL INTENT ACTION from Dialer only for U1"

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-string v3, "android.phone.extra.calltype"

    const/4 v6, 0x2

    invoke-virtual {v12, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1393
    :goto_a6d
    const-string v3, "ipcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8d

    .line 1394
    if-eqz v5, :cond_a8d

    .line 1395
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1396
    const-string v3, "ctc_voicecall_additional_setting"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8d

    .line 1397
    const-string v3, "ipcall"

    const/4 v6, 0x1

    invoke-virtual {v12, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1402
    :cond_a8d
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aad

    .line 1403
    const-string v3, "simnum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aad

    .line 1404
    const-string v3, "simnum"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1405
    const-string v6, "simnum"

    invoke-virtual {v12, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1409
    :cond_aad
    const-string v3, "ctc_roamingcall"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae5

    .line 1410
    const-string v3, "ctc_roamingcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_acd

    .line 1411
    const-string v3, "ctc_roamingcall"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1412
    const-string v6, "ctc_roamingcall"

    invoke-virtual {v12, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    :cond_acd
    const-string v3, "ctc_133callbackcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae5

    .line 1415
    const-string v3, "ctc_133callbackcall"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1416
    const-string v6, "ctc_133callbackcall"

    invoke-virtual {v12, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    :cond_ae5
    const-string v3, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: Broadcasting: "

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/high16 v3, 0x1000

    invoke-virtual {v12, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1424
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - Broadcasting intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    const-wide/16 v9, 0x7d0

    invoke-virtual {v3, v6, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1433
    const-string v3, "ecbm_emergency_calls_only_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4b

    const-string v3, "ril.cdma.inecmmode"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4b

    if-nez v4, :cond_b4b

    .line 1436
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto/16 :goto_42

    .line 1389
    :cond_b3c
    const-string v3, "OutgoingCallBroadcaster"

    const-string v6, "Inside VOICE CALL INTENT ACTION from Dialer for U1"

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v3, "android.phone.extra.calltype"

    const/4 v6, 0x1

    invoke-virtual {v12, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a6d

    .line 1437
    :cond_b4b
    const-string v3, "north_american_dialing_plan_for_voicemail"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b69

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/OutgoingCallBroadcaster;->isVoicemail(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_b69

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isNorthAmericanDialingPlanCountry()Z

    move-result v3

    if-nez v3, :cond_b69

    .line 1440
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto/16 :goto_42

    .line 1441
    :cond_b69
    const-string v3, "usa_spr_roaming_feature"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba0

    if-nez v4, :cond_ba0

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b82

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v3

    if-nez v3, :cond_b99

    :cond_b82
    const-string v3, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba0

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ba0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v3

    if-eqz v3, :cond_ba0

    .line 1447
    :cond_b99
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->showCallRoamingGuard(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 1450
    :cond_ba0
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_42

    :cond_ba7
    move v7, v3

    goto/16 :goto_7b2

    :cond_baa
    move-object v6, v7

    goto/16 :goto_4a6

    :cond_bad
    move v3, v6

    goto/16 :goto_322

    :cond_bb0
    move-object v3, v6

    goto/16 :goto_312

    :cond_bb3
    move-object v3, v4

    goto/16 :goto_d2
.end method

.method private showCallRoamingGuard(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1758
    const-string v0, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1759
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1760
    if-ne v0, v2, :cond_23

    .line 1761
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1762
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 1763
    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 1764
    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    .line 1781
    :cond_22
    :goto_22
    return-void

    .line 1766
    :cond_23
    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    .line 1768
    :cond_29
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1769
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 1770
    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 1771
    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_22

    .line 1774
    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1776
    :cond_50
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1777
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 1778
    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 1779
    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_22
.end method

.method private startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1724
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v3, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    invoke-direct {v3, p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1729
    return-void
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 31
    .parameter "context"
    .parameter "intent"
    .parameter "uri"
    .parameter "number"

    .prologue
    .line 474
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "startSipCallOptionHandler..."

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- intent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- uri: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- number: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 485
    .local v3, app:Lcom/android/phone/PhoneApp;
    new-instance v15, Landroid/content/Intent;

    const-string v23, "android.intent.action.CALL"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 486
    .local v15, newIntent:Landroid/content/Intent;
    const-string v23, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v23, "ims_volte"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_84

    .line 489
    const-string v23, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    :cond_84
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 493
    const-string v23, "android.phone.extra.calltype"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 496
    .local v12, mCalltype:I
    const-string v23, "android.phone.extra.CALL_DIRECTCALL"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b6

    .line 497
    const-string v23, "android.phone.extra.CALL_DIRECTCALL"

    const-string v24, "android.phone.extra.CALL_DIRECTCALL"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    :cond_b6
    const-string v23, "roaming_auto_dial"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1b0

    const-string v23, "ims_volte"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_cc

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v12, v0, :cond_1b0

    .line 504
    :cond_cc
    const/4 v11, 0x0

    .line 505
    .local v11, isMMICode:Z
    const/4 v13, 0x0

    .line 507
    .local v13, network2G:Z
    const-string v23, "feature_ktt"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_fc

    .line 508
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isMMICode(Ljava/lang/String;)Z

    move-result v11

    .line 509
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMMICode = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_fc
    const-string v23, "feature_skt"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10a

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTSIM()Z

    move-result v23

    if-eqz v23, :cond_112

    :cond_10a
    const-string v23, "feature_lgt"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11f

    .line 514
    :cond_112
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "Not skt usim"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 515
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 518
    :cond_11f
    const-string v23, "feature_skt"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_12f

    const-string v23, "feature_ktt"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_172

    .line 519
    :cond_12f
    const-string v23, "ril.currentsystem"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 520
    .local v14, network_regist_videocall:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_172

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_172

    .line 521
    const-string v23, "2G"

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14c

    .line 522
    const/4 v13, 0x1

    .line 523
    :cond_14c
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "startSipCallOptionHandler, network_regist_videocall : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "network2G : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v14           #network_regist_videocall:Ljava/lang/String;
    :cond_172
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1b0

    sget-boolean v23, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    if-nez v23, :cond_1b0

    if-nez v13, :cond_1b0

    if-nez v11, :cond_1b0

    .line 529
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "Inside Roaming Auto Dial type"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 530
    invoke-static/range {p3 .. p3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallUri(Landroid/net/Uri;)V

    .line 531
    invoke-static/range {p4 .. p4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 533
    const-class v23, Lcom/android/phone/RoamingAutoDialOption;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 534
    const-string v23, "android.phone.extra.calltype"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    const/high16 v23, 0x1000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 536
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 692
    .end local v11           #isMMICode:Z
    .end local v13           #network2G:Z
    :goto_1af
    return-void

    .line 541
    :cond_1b0
    const-string v23, "ims_volte"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_548

    .line 543
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2ea

    const/16 v16, 0x1

    .line 544
    .local v16, phoneIsUse:Z
    :goto_1ca
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "phoneInUse = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v23, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 547
    .local v22, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2ee

    const/4 v10, 0x1

    .line 548
    .local v10, isLTEConnected:Z
    :goto_1ff
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isLTEConnected - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v23, "android.phone.calltype"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 552
    .local v18, selectedCalltype:Z
    const-string v23, "isDirect1xCall"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 553
    .local v7, isAutoDivertTo1XCall:Z
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CHOSEN_CALLTYPE: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "....FOR_AUTO_DIVERT_TO_VOICE:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_4e4

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v6

    .line 559
    .local v6, callType:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->isImsRegistered()Z

    move-result v9

    .line 560
    .local v9, isImsRegistered:Z
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Inside Voice call type - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " isImsRegistered - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz v9, :cond_378

    if-eqz v10, :cond_378

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->isVoLTECall(I)Z

    move-result v23

    if-eqz v23, :cond_378

    if-nez v7, :cond_378

    .line 564
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "ims is registered and call type is volte"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v23, "persist.sys.ims.volte_supported"

    const-string v24, "-1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 570
    .local v20, supportsVoLTE:I
    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f1

    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f1

    .line 571
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "making 1x call because of unsupported volte header"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 543
    .end local v6           #callType:I
    .end local v7           #isAutoDivertTo1XCall:Z
    .end local v9           #isImsRegistered:Z
    .end local v10           #isLTEConnected:Z
    .end local v16           #phoneIsUse:Z
    .end local v18           #selectedCalltype:Z
    .end local v20           #supportsVoLTE:I
    .end local v22           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2ea
    const/16 v16, 0x0

    goto/16 :goto_1ca

    .line 547
    .restart local v16       #phoneIsUse:Z
    .restart local v22       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2ee
    const/4 v10, 0x0

    goto/16 :goto_1ff

    .line 574
    .restart local v6       #callType:I
    .restart local v7       #isAutoDivertTo1XCall:Z
    .restart local v9       #isImsRegistered:Z
    .restart local v10       #isLTEConnected:Z
    .restart local v18       #selectedCalltype:Z
    .restart local v20       #supportsVoLTE:I
    :cond_2f1
    const-string v23, "feature_skt"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_31f

    if-eqz p4, :cond_31f

    const-string v23, "118"

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31f

    .line 575
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "making 1x call because 118 number is only 1x call (SKT spec)"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 579
    :cond_31f
    if-nez v16, :cond_35d

    .line 580
    const-string v23, "auto_test"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 581
    .local v8, isAutoTestEnabled:Z
    const-string v23, "auto_test"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 582
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "making VOLTE call"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v23, "com.sec.imsphone.ui"

    const-string v24, "com.sec.imsphone.ui.InCallScreen"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const/high16 v23, 0x1000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 585
    const-string v23, "com.samsung.android.intent.action.MAKE_CALL"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 589
    .end local v8           #isAutoTestEnabled:Z
    :cond_35d
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "making VOLTE call - else"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "Call not sent"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_1af

    .line 595
    .end local v20           #supportsVoLTE:I
    :cond_378
    if-eqz v9, :cond_384

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->isCSCall(I)Z

    move-result v23

    if-nez v23, :cond_384

    if-nez v18, :cond_384

    if-eqz v7, :cond_39c

    .line 597
    :cond_384
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "making 1x call"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 602
    :cond_39c
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "call type is choose while calling"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v23, "persist.sys.ims.volte_supported"

    const-string v24, "-1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 606
    .local v21, supportsVoLTEHeader:I
    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_4d3

    if-nez v21, :cond_4d3

    if-eqz v9, :cond_4d3

    if-nez v7, :cond_4d3

    .line 607
    if-nez v16, :cond_4bb

    .line 608
    const-string v23, "android.phone.calltype"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    .end local v6           #callType:I
    .end local v9           #isImsRegistered:Z
    .end local v21           #supportsVoLTEHeader:I
    :cond_3ca
    :goto_3ca
    const/high16 v23, 0x1000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 657
    .end local v7           #isAutoDivertTo1XCall:Z
    .end local v10           #isLTEConnected:Z
    .end local v16           #phoneIsUse:Z
    .end local v18           #selectedCalltype:Z
    .end local v22           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3d1
    const-string v23, "ctc_roamingcall"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_41b

    .line 658
    const-string v23, "ctc_roamingcall"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3fa

    .line 659
    const-string v23, "ctc_roamingcall"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 660
    .local v5, bRoamingCall:Z
    const-string v23, "ctc_roamingcall"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    .end local v5           #bRoamingCall:Z
    :cond_3fa
    const-string v23, "ctc_133callbackcall"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_41b

    .line 663
    const-string v23, "ctc_133callbackcall"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 664
    .local v4, bCallbackCall:Z
    const-string v23, "ctc_133callbackcall"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    .end local v4           #bCallbackCall:Z
    :cond_41b
    const-string v23, "ctc_voicecall_additional_setting"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_43a

    .line 669
    const-string v23, "ipcall"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_43a

    .line 670
    const-string v23, "ipcall"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    :cond_43a
    const-string v23, "feature_chn_duos"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_465

    .line 675
    const-string v23, "simnum"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_465

    .line 676
    const-string v23, "simnum"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 677
    .local v19, simNumber:I
    const-string v23, "simnum"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    .end local v19           #simNumber:I
    :cond_465
    new-instance v17, Landroid/content/Intent;

    const-string v23, "com.android.phone.SIP_SELECT_PHONE"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 682
    .local v17, selectPhoneIntent:Landroid/content/Intent;
    const-class v23, Lcom/android/phone/SipCallOptionHandler;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 683
    const-string v23, "android.phone.extra.NEW_CALL_INTENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 684
    const/high16 v23, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    const-string v23, "OutgoingCallBroadcaster"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "startSipCallOptionHandler(): calling startActivity"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 610
    .end local v17           #selectPhoneIntent:Landroid/content/Intent;
    .restart local v6       #callType:I
    .restart local v7       #isAutoDivertTo1XCall:Z
    .restart local v9       #isImsRegistered:Z
    .restart local v10       #isLTEConnected:Z
    .restart local v16       #phoneIsUse:Z
    .restart local v18       #selectedCalltype:Z
    .restart local v21       #supportsVoLTEHeader:I
    .restart local v22       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4bb
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "call type is choose while calling - else"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "Call not sent"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1af

    .line 615
    :cond_4d3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_3ca

    .line 619
    .end local v6           #callType:I
    .end local v9           #isImsRegistered:Z
    .end local v21           #supportsVoLTEHeader:I
    :cond_4e4
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_3ca

    .line 620
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "Inside Video call type"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-nez v16, :cond_52c

    .line 622
    const-string v23, "auto_test"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 623
    .restart local v8       #isAutoTestEnabled:Z
    const-string v23, "auto_test"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v23, "com.sec.imsphone.ui"

    const-string v24, "com.sec.imsphone.ui.InCallScreen"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v23, "Videocalltype"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    const-string v23, "com.samsung.android.intent.action.MAKE_CALL"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 631
    .end local v8           #isAutoTestEnabled:Z
    :cond_52c
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "Inside Video call type - else"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0e053a

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_1af

    .line 642
    .end local v7           #isAutoDivertTo1XCall:Z
    .end local v10           #isLTEConnected:Z
    .end local v16           #phoneIsUse:Z
    .end local v18           #selectedCalltype:Z
    .end local v22           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_548
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_3d1

    .line 643
    const-string v23, "OutgoingCallBroadcaster"

    const-string v24, "Inside Video call type"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-class v23, Lcom/android/phone/InVTCallScreen;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 646
    const-string v23, "ims_vt_call"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_57b

    .line 647
    const-string v23, "auto_test"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 648
    .restart local v8       #isAutoTestEnabled:Z
    const-string v23, "auto_test"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    .end local v8           #isAutoTestEnabled:Z
    :cond_57b
    const-string v23, "Videocalltype"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1af
.end method


# virtual methods
.method makeIpCallNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 1681
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "makeIpCallNum()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1685
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8f

    .line 1686
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    if-nez v0, :cond_2b

    .line 1688
    const-string v0, "17911"

    .line 1690
    :cond_2b
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gsmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_43
    :goto_43
    const-string v1, "P"

    const-string v2, ","

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1713
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1714
    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1718
    :cond_5b
    :goto_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1719
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIpCallNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " numberIpCall = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return-object v1

    .line 1693
    :cond_8f
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_CDMA"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1694
    if-nez v0, :cond_9d

    .line 1695
    const-string v0, "17901"

    .line 1697
    :cond_9d
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1699
    :cond_b6
    const-string v0, "ip_call_cmcc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1700
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    if-nez v0, :cond_43

    .line 1702
    const-string v0, "17951"

    goto/16 :goto_43

    .line 1705
    :cond_ce
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    if-nez v0, :cond_43

    .line 1707
    const-string v0, "17911"

    goto/16 :goto_43

    .line 1715
    :cond_de
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1716
    const-string v2, "+"

    const-string v3, "00"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5b
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 1661
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 1653
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    .line 1676
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1677
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 712
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 713
    const v2, 0x7f040061

    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->setContentView(I)V

    .line 714
    const v2, 0x7f0901ad

    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    .line 716
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 718
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "onCreate..."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 721
    .local v0, configuration:Landroid/content/res/Configuration;
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", icicle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - getIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - configuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-eqz p1, :cond_83

    .line 748
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :goto_82
    return-void

    .line 762
    :cond_83
    invoke-direct {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V

    .line 767
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At the end of onCreate(). isFinishing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f0e04ec

    const v6, 0x1040014

    const/4 v5, 0x1

    const v4, 0x1010355

    const v3, 0x104000a

    .line 1546
    packed-switch p1, :pswitch_data_144

    .line 1640
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/4 v0, 0x0

    .line 1644
    :goto_29
    return-object v0

    .line 1548
    :pswitch_2a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0272

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1554
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_29

    .line 1558
    :pswitch_4a
    const/4 v0, 0x0

    .line 1559
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1560
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a6

    .line 1561
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1562
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1563
    :cond_69
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1564
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1572
    :cond_77
    :goto_77
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$3;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$3;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$2;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$2;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1595
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_29

    .line 1565
    :cond_a6
    if-eq v1, v5, :cond_ab

    const/4 v2, 0x3

    if-ne v1, v2, :cond_ba

    .line 1567
    :cond_ab
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1568
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 1570
    :cond_ba
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :pswitch_d3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1605
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_29

    .line 1609
    :pswitch_f4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0730

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1616
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_29

    .line 1620
    :pswitch_119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e054f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$4;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$4;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1630
    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$5;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$5;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1636
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_29

    .line 1546
    nop

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_4a
        :pswitch_d3
        :pswitch_119
        :pswitch_f4
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 1667
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 1490
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 1491
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 1492
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 1493
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 1494
    iput-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 1495
    iput-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 1497
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1498
    return-void
.end method
