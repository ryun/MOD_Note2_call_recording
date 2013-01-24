.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$UiccOperation;,
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;,
        Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;,
        Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static DBG_ENG:Z

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager;


# instance fields
.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mGetHandsetInfo:Ljava/lang/reflect/Method;

.field private mHandler:Landroid/os/Handler;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field private mMobileDataQuestion:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field mSelectResponse:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1e

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    .line 80
    const-string v0, "nfc.trace.mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1a

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1b

    :cond_1a
    move v2, v1

    :cond_1b
    sput-boolean v2, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    return-void

    :cond_1e
    move v0, v2

    .line 79
    goto :goto_8
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 802
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 112
    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    .line 113
    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMobileDataQuestion:Ljava/lang/String;

    .line 128
    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 1566
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$1;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 803
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 804
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 805
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 806
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 807
    const-string v0, "PhoneInterfaceManager"

    const-string v1, " Registering for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 815
    :try_start_37
    const-class v0, Lcom/android/internal/telephony/Phone;

    const-string v1, "getHandsetInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    .line 816
    const-class v0, Landroid/provider/Settings$Secure;

    const-string v1, "MOBILE_DATA_QUESTION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMobileDataQuestion:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_5a} :catch_5f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_37 .. :try_end_5a} :catch_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_5a} :catch_5b

    .line 821
    :goto_5a
    return-void

    .line 819
    :catch_5b
    move-exception v0

    goto :goto_5a

    .line 818
    :catch_5d
    move-exception v0

    goto :goto_5a

    .line 817
    :catch_5f
    move-exception v0

    goto :goto_5a
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .parameter "app"
    .parameter "phone1"
    .parameter "phone2"

    .prologue
    const/4 v3, 0x0

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 112
    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    .line 113
    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMobileDataQuestion:Ljava/lang/String;

    .line 128
    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 1566
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$1;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 831
    if-nez p2, :cond_40

    .line 832
    iput-object p3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 836
    :goto_15
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 837
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 838
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 839
    const-string v0, "PhoneInterfaceManager"

    const-string v1, " Registering for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3a

    .line 841
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 843
    :cond_3a
    if-nez p3, :cond_43

    .line 844
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 847
    :cond_3f
    :goto_3f
    return-void

    .line 834
    :cond_40
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_15

    .line 845
    :cond_43
    if-nez p2, :cond_3f

    .line 846
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publishSecondary()V

    goto :goto_3f
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneInterfaceManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    return v0
.end method

.method private answerRingingCallInternal()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1087
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3b

    move v2, v3

    .line 1088
    .local v2, hasRingingCall:Z
    :goto_f
    if-eqz v2, :cond_3a

    .line 1089
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3d

    move v0, v3

    .line 1090
    .local v0, hasActiveCall:Z
    :goto_1e
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3f

    move v1, v3

    .line 1091
    .local v1, hasHoldingCall:Z
    :goto_2b
    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    .line 1097
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 1107
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_3a
    :goto_3a
    return-void

    .end local v2           #hasRingingCall:Z
    :cond_3b
    move v2, v4

    .line 1087
    goto :goto_f

    .restart local v2       #hasRingingCall:Z
    :cond_3d
    move v0, v4

    .line 1089
    goto :goto_1e

    .restart local v0       #hasActiveCall:Z
    :cond_3f
    move v1, v4

    .line 1090
    goto :goto_2b

    .line 1102
    .restart local v1       #hasHoldingCall:Z
    :cond_41
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3a
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 1511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1512
    const/4 v1, 0x0

    .line 1517
    :goto_7
    return-object v1

    .line 1515
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private enforceCallPermission()V
    .registers 4

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method private enforceModifyPermission()V
    .registers 4

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private enforceReadPermission()V
    .registers 4

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 861
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_60

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_60
    const/16 v11, 0xc

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 865
    .local v9, response:Lcom/android/internal/telephony/uicc/IccIoResult;
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_94

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_94
    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 868
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_c2

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 870
    :cond_c2
    return-object v10
.end method

.method private exchangeIccSimIO(IIIIILjava/lang/String;)[B
    .registers 19
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filepath"

    .prologue
    .line 895
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_54

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeIccSimIO >  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_54
    const/16 v11, 0x14

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;-><init>(IIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 900
    .local v9, response:Lcom/android/internal/telephony/uicc/IccIoResult;
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_86

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeIccSimIO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_86
    const/4 v10, 0x0

    .line 903
    .local v10, result:[B
    const/4 v8, 0x2

    .line 905
    .local v8, length:I
    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_c4

    .line 906
    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v1, v1

    add-int/lit8 v8, v1, 0x2

    .line 907
    new-array v10, v8, [B

    .line 908
    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v4, v4

    invoke-static {v1, v2, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    :goto_9d
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    add-int/lit8 v1, v8, -0x1

    iget v2, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 915
    add-int/lit8 v1, v8, -0x2

    iget v2, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 916
    return-object v10

    .line 910
    :cond_c4
    new-array v10, v8, [B

    goto :goto_9d
.end method

.method private getDefaultPhone()V
    .registers 4

    .prologue
    .line 1541
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "getDefaultPhone..called: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1544
    return-void
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 791
    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    .line 792
    :try_start_3
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    if-nez v0, :cond_12

    .line 793
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    .line 797
    :goto_e
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 795
    :cond_12
    const-string v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 798
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1521
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return-void
.end method

.method private publish()V
    .registers 3

    .prologue
    .line 824
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 826
    :cond_1a
    const-string v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 827
    return-void
.end method

.method private publishSecondary()V
    .registers 3

    .prologue
    .line 851
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishSecondary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 852
    :cond_1a
    const-string v0, "phone2"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 853
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 748
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_14

    .line 749
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    :cond_14
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 753
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 754
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 757
    monitor-enter v1

    .line 758
    :goto_23
    :try_start_23
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_31

    if-nez v2, :cond_2d

    .line 760
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    .line 761
    :catch_2b
    move-exception v2

    goto :goto_23

    .line 765
    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    .line 766
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 765
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method private sendRequestAsync(I)V
    .registers 3
    .parameter "command"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 784
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .registers 10
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v4, 0x0

    .line 1005
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_6

    .line 1040
    :cond_5
    :goto_5
    return v4

    .line 1009
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isIdle()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1016
    .local v0, callingId:J
    if-eqz p1, :cond_20

    .line 1020
    :try_start_12
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_3f

    move-result-object v3

    .line 1028
    .local v3, intent:Landroid/content/Intent;
    :goto_16
    :try_start_16
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v3}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_1b} :catch_25

    .line 1038
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    const/4 v4, 0x1

    goto :goto_5

    .line 1025
    .end local v3           #intent:Landroid/content/Intent;
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_16

    .line 1029
    :catch_25
    move-exception v2

    .line 1034
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_3f

    goto :goto_1b

    .line 1038
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_3f
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private silenceRingerInternal()V
    .registers 3

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1129
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "silenceRingerInternal: silencing..."

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1130
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 1132
    :cond_24
    return-void
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .registers 2

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    return v0
.end method

.method public IsInternationalRoaming()Z
    .registers 2

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public answerRingingCall()V
    .registers 2

    .prologue
    .line 1065
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "answerRingingCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1069
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1070
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 1071
    return-void
.end method

.method public broadcastUnsolOemHookIntent([B)V
    .registers 5
    .parameter "payload"

    .prologue
    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 772
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "Broadcasting intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    return-void
.end method

.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .registers 7
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v3, 0x0

    .line 1976
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    .line 1978
    .local v0, op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    .line 1979
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->calculateAka([B[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .registers 7
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v3, 0x0

    .line 1983
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    .line 1985
    .local v0, op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    .line 1986
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->calculateGba([B[B)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public calculateNafExternalKey([B)[B
    .registers 6
    .parameter "nafId"

    .prologue
    const/4 v3, 0x0

    .line 1990
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    .line 1992
    .local v0, op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    .line 1993
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->calculateNaf([B)[B

    move-result-object v1

    return-object v1
.end method

.method public call(Ljava/lang/String;)V
    .registers 6
    .parameter "number"

    .prologue
    .line 986
    sget-boolean v2, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 991
    :cond_1a
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 993
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_24

    .line 1001
    :goto_23
    return-void

    .line 998
    :cond_24
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 999
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1000
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_23
.end method

.method public cancelMissedCallsNotification()V
    .registers 2

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1388
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 1389
    return-void
.end method

.method public closeIccLogicalChannel(I)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 941
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_1c

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_1c
    const/16 v1, 0x10

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    invoke-direct {v2, p1}, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 944
    .local v0, err:Ljava/lang/Integer;
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_45

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4e

    .line 946
    const/4 v1, 0x0

    .line 948
    :goto_4d
    return v1

    :cond_4e
    const/4 v1, 0x1

    goto :goto_4d
.end method

.method public dial(Ljava/lang/String;)V
    .registers 7
    .parameter "number"

    .prologue
    .line 966
    sget-boolean v3, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 971
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_21

    .line 983
    :cond_20
    :goto_20
    return-void

    .line 977
    :cond_21
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 978
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_20

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_20

    .line 979
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 980
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 981
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_20
.end method

.method public disableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1338
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .registers 4

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1367
    const-string v1, "dcm_change_data_enable_func"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1368
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 1374
    :goto_10
    const/4 v1, 0x1

    return v1

    .line 1370
    :cond_12
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1372
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_10
.end method

.method public disableLocationUpdates()V
    .registers 4

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1429
    return-void
.end method

.method public disableQos(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableQos(I)I

    move-result v0

    return v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1333
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1318
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1321
    const-string v1, "dcm_change_data_enable_func"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1322
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    .line 1328
    :goto_11
    return v3

    .line 1324
    :cond_12
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1326
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_11
.end method

.method public enableLocationUpdates()V
    .registers 4

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1423
    return-void
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .registers 4
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endCall()Z
    .registers 3

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 1061
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActivePhoneType()I
    .registers 2

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1459
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_a

    .line 1470
    :goto_9
    return-object v4

    .line 1461
    :catch_a
    move-exception v0

    .line 1465
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getAtr()[B
    .registers 5

    .prologue
    .line 952
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "getAtr"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 954
    .local v0, atrInfo:[B
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_33

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< getAtr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_33
    return-object v0
.end method

.method public getCallState()I
    .registers 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1405
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_18

    .line 1414
    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1415
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1416
    return-object v0

    .line 1407
    .end local v0           #data:Landroid/os/Bundle;
    :catch_18
    move-exception v1

    .line 1411
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getDataActivity()I
    .registers 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .registers 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .registers 2

    .prologue
    .line 1894
    const/4 v0, 0x1

    return v0
.end method

.method public getDataState()I
    .registers 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getEuimid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1831
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1833
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mEuimid:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 1838
    :goto_f
    return-object v0

    .line 1836
    :catch_10
    move-exception v0

    .line 1837
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEuimid : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "ID"

    .prologue
    .line 1914
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    .line 1915
    const/4 v1, 0x0

    .line 1925
    :goto_5
    return-object v1

    .line 1918
    :cond_6
    const/4 v1, 0x0

    .line 1920
    .local v1, ret:Ljava/lang/String;
    :try_start_7
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1d} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_1d} :catch_1e

    goto :goto_5

    .line 1922
    :catch_1e
    move-exception v2

    goto :goto_5

    .line 1921
    :catch_20
    move-exception v2

    goto :goto_5
.end method

.method public getIccPin1RetryCount()I
    .registers 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1818
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v0

    .line 1823
    :goto_9
    return-object v0

    .line 1821
    :catch_a
    move-exception v0

    .line 1822
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImei : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 1933
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getLgt3GDataStatus(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1936
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMobileDataQuestion:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1937
    const/4 v0, 0x0

    .line 1948
    :goto_6
    return-object v0

    .line 1940
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1942
    const-string v0, "mobile_data"

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_27

    move v0, v1

    .line 1943
    :goto_1a
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMobileDataQuestion:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_22

    .line 1945
    :cond_22
    if-eqz v0, :cond_29

    .line 1946
    const-string v0, "2"

    goto :goto_6

    .line 1942
    :cond_27
    const/4 v0, 0x0

    goto :goto_1a

    .line 1948
    :cond_29
    const-string v0, "0"

    goto :goto_6
.end method

.method public getLgtOzStartPage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1953
    const-string v1, "lgt_oz_startpage"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .registers 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1801
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1803
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v0

    .line 1808
    :goto_9
    return-object v0

    .line 1806
    :catch_a
    move-exception v0

    .line 1807
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMEID : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1434
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_15

    .line 1445
    :goto_9
    const/4 v1, 0x0

    .line 1448
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_c
    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_14} :catch_1e

    .line 1454
    :goto_14
    return-object v1

    .line 1436
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_15
    move-exception v2

    .line 1441
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1450
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_1e
    move-exception v2

    .line 1451
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public getNetworkType()I
    .registers 5

    .prologue
    .line 1745
    const/4 v0, 0x0

    .line 1747
    .local v0, radiotech:I
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1748
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1749
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType - mPhone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " defaultPhone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " radiotech:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :goto_53
    packed-switch v0, :pswitch_data_86

    .line 1786
    const/4 v1, 0x0

    :goto_57
    return v1

    .line 1753
    :cond_58
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    goto :goto_53

    .line 1757
    :pswitch_63
    const/4 v1, 0x1

    goto :goto_57

    .line 1759
    :pswitch_65
    const/4 v1, 0x2

    goto :goto_57

    .line 1761
    :pswitch_67
    const/4 v1, 0x3

    goto :goto_57

    .line 1763
    :pswitch_69
    const/16 v1, 0x8

    goto :goto_57

    .line 1765
    :pswitch_6c
    const/16 v1, 0x9

    goto :goto_57

    .line 1767
    :pswitch_6f
    const/16 v1, 0xa

    goto :goto_57

    .line 1770
    :pswitch_72
    const/4 v1, 0x4

    goto :goto_57

    .line 1772
    :pswitch_74
    const/4 v1, 0x7

    goto :goto_57

    .line 1774
    :pswitch_76
    const/4 v1, 0x5

    goto :goto_57

    .line 1776
    :pswitch_78
    const/4 v1, 0x6

    goto :goto_57

    .line 1778
    :pswitch_7a
    const/16 v1, 0xc

    goto :goto_57

    .line 1780
    :pswitch_7d
    const/16 v1, 0xe

    goto :goto_57

    .line 1782
    :pswitch_80
    const/16 v1, 0xd

    goto :goto_57

    .line 1784
    :pswitch_83
    const/16 v1, 0xf

    goto :goto_57

    .line 1755
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_63
        :pswitch_65
        :pswitch_67
        :pswitch_72
        :pswitch_72
        :pswitch_74
        :pswitch_76
        :pswitch_78
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
    .end packed-switch
.end method

.method public getPhoneServiceState()I
    .registers 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getQosStatus(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getQosStatus(I)I

    move-result v0

    return v0
.end method

.method public getSelectResponse()[B
    .registers 4

    .prologue
    .line 959
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v0, :cond_22

    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_22
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    return-object v0
.end method

.method public getServiceState()I
    .registers 3

    .prologue
    .line 1888
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1889
    .local v0, state:I
    return v0
.end method

.method public getVoiceMessageCount()I
    .registers 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 3
    .parameter "dialString"

    .prologue
    .line 1382
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1383
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .registers 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public initPhoneMngrContextForIMS(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1968
    return-void
.end method

.method public invokeOemRilRequestRaw([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 2147
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 2148
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2149
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .registers 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isOffhook()Z
    .registers 3

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRadioOn()Z
    .registers 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isRinging()Z
    .registers 3

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSimPinEnabled()Z
    .registers 2

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1148
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .registers 4
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .registers 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    .line 1960
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1961
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 1962
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 6
    .parameter "AID"

    .prologue
    .line 929
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_1c

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_1c
    const/16 v1, 0xe

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    invoke-direct {v2, p1}, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 932
    .local v0, channel:Ljava/lang/Integer;
    sget-boolean v1, Lcom/android/phone/PhoneInterfaceManager;->DBG_ENG:Z

    if-eqz v1, :cond_45

    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public requestIsimAuthentication(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 1548
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "requestIsimAuthentication..called: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultPhone()V

    .line 1550
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1551
    .local v0, msg:Landroid/os/Message;
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestIsimAuthentication..data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    if-eqz p1, :cond_39

    .line 1554
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "requestIsimAuthentication..Splitting data: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1561
    :goto_38
    return-void

    .line 1559
    :cond_39
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "requestIsimAuthentication..data is NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public resetPhoneMngrContextForIMS(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1971
    return-void
.end method

.method public resumeQos(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->resumeQos(I)I

    move-result v0

    return v0
.end method

.method public sendOemRilRequestRaw([B[B)I
    .registers 12
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1672
    const/4 v5, 0x0

    .line 1676
    .local v5, returnValue:I
    const/4 v6, 0x7

    :try_start_2
    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 1677
    .local v4, result:Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4f

    .line 1678
    const/4 v5, 0x0

    .line 1679
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4e

    .line 1680
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 1681
    .local v3, responseData:[B
    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_47

    .line 1682
    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_47
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1687
    array-length v5, v3

    .line 1701
    .end local v3           #responseData:[B
    .end local v4           #result:Landroid/os/AsyncResult;
    :cond_4e
    :goto_4e
    return v5

    .line 1691
    .restart local v4       #result:Landroid/os/AsyncResult;
    :cond_4f
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1692
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5a} :catch_60

    move-result v5

    .line 1693
    if-lez v5, :cond_4e

    mul-int/lit8 v5, v5, -0x1

    goto :goto_4e

    .line 1695
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #result:Landroid/os/AsyncResult;
    :catch_60
    move-exception v1

    .line 1696
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 1698
    if-lez v5, :cond_4e

    mul-int/lit8 v5, v5, -0x1

    goto :goto_4e
.end method

.method public setDataReadinessChecks(ZZZ)V
    .registers 4
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 1878
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1881
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .parameter "set"

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1909
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    const/4 v3, 0x0

    .line 1997
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    .line 1999
    .local v0, op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    .line 2000
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 2001
    return-void
.end method

.method public setRadio(Z)Z
    .registers 7
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1301
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1304
    const-string v3, "sys.deviceOffReq"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, shutdownFlag:Ljava/lang/String;
    if-eqz v0, :cond_1b

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1306
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1314
    :cond_1a
    :goto_1a
    return v2

    .line 1311
    :cond_1b
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    move v1, v2

    :cond_29
    if-eq v1, p1, :cond_1a

    .line 1312
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOff()V

    goto :goto_1a
.end method

.method public setTransmitPower(I)Z
    .registers 4
    .parameter "powerLevel"

    .prologue
    .line 1863
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1864
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public showCallScreen()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1045
    invoke-direct {p0, v0, v0}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .registers 3
    .parameter "showDialpad"

    .prologue
    .line 1052
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .registers 2

    .prologue
    .line 1112
    sget-boolean v0, Lcom/android/phone/PhoneInterfaceManager;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "silenceRinger..."

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1116
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1117
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 1118
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin"

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResult(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPinReportResult(Ljava/lang/String;)I
    .registers 4
    .parameter "pin"

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1157
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1158
    .local v0, checkSimPin:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1159
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 1163
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1168
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1169
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1170
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public suspendQos(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->suspendQos(I)I

    move-result v0

    return v0
.end method

.method public toggleRadioOnOff()V
    .registers 3

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1298
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1299
    return-void

    .line 1298
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 885
    invoke-direct/range {p0 .. p7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 8
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filepath"

    .prologue
    .line 921
    invoke-direct/range {p0 .. p6}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public updateServiceLocation()V
    .registers 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1290
    return-void
.end method
