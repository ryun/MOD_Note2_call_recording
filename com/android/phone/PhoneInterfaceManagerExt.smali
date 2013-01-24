.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;


# instance fields
.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mMobileInfo:Ljava/lang/String;

.field private mObjectNotiAll:Landroid/os/Handler;

.field private mObjectNotiAllRunnable:Ljava/lang/Runnable;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private nitzString:Ljava/lang/String;

.field private scCmdResult:[B

.field scHandler:Landroid/os/Handler;

.field private final scLock:Ljava/lang/Object;

.field private scReturnValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_6
    sput-boolean v0, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    return-void

    .line 55
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$2;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    .line 236
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    .line 237
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 238
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 239
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;

    return-object v0
.end method

.method private enforceModifyPermission()V
    .registers 4

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method private enforceReadPermission()V
    .registers 4

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 854
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method private publish()V
    .registers 6

    .prologue
    .line 243
    sget-boolean v2, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManagerExt;->log(Ljava/lang/String;)V

    .line 245
    :cond_1a
    const-string v2, "phoneext"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 247
    const-string v2, "gsm.version.ril-impl"

    const-string v3, "Qualcomm"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, ril_version:Ljava/lang/String;
    :try_start_27
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "Qualcomm"

    const/4 v3, 0x0

    const-string v4, "Qualcomm"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 253
    new-instance v2, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-direct {v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 260
    :goto_63
    return-void

    .line 255
    :cond_64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_67} :catch_68

    goto :goto_63

    .line 256
    :catch_68
    move-exception v0

    .line 257
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method


# virtual methods
.method public getActiveCallsCount()I
    .registers 2

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .registers 3

    .prologue
    .line 931
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .registers 3

    .prologue
    .line 923
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 915
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUATI()[B
    .registers 6

    .prologue
    .line 1210
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v2, :cond_24

    .line 1214
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v2, :cond_32

    .line 1215
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1218
    :goto_18
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI Good Job"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1222
    :cond_24
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v3, 0xc

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, currentUATIStr:Ljava/lang/String;
    if-nez v0, :cond_3c

    .line 1224
    const/4 v1, 0x0

    .line 1229
    :goto_31
    return-object v1

    .line 1217
    .end local v0           #currentUATIStr:Ljava/lang/String;
    :cond_32
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_18

    .line 1225
    .restart local v0       #currentUATIStr:Ljava/lang/String;
    :cond_3c
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v1, 0x0

    .line 1229
    .local v1, data:[B
    goto :goto_31
.end method

.method public getHoldCallsCount()I
    .registers 2

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 1287
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_20

    .line 1289
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_2f

    .line 1290
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1293
    :goto_14
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getMobileQualityInformation Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1296
    :cond_20
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x16

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    .line 1297
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    return-object v0

    .line 1292
    :cond_2f
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_14
.end method

.method public getMsisdnavailable()Z
    .registers 2

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 285
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .registers 3

    .prologue
    .line 299
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .registers 3

    .prologue
    .line 289
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .registers 3

    .prologue
    .line 329
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .registers 3

    .prologue
    .line 309
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    return v0
.end method

.method public getSimPuk2Retry()I
    .registers 3

    .prologue
    .line 340
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .registers 3

    .prologue
    .line 319
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPukRetry()I

    move-result v0

    return v0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .registers 3

    .prologue
    .line 350
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1194
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo() "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_24

    .line 1197
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_4c

    .line 1198
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1201
    :goto_18
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1204
    :cond_24
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    .line 1205
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    return-object v0

    .line 1200
    :cond_4c
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_18
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1233
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo() "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v1, :cond_24

    .line 1237
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v1, :cond_47

    .line 1238
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1241
    :goto_18
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo Good Job"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1245
    :cond_24
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v2, 0x16

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, str:Ljava/lang/String;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-object v0

    .line 1240
    .end local v0           #str:Ljava/lang/String;
    :cond_47
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_18
.end method

.method public isBluetoothAudioConnected()Z
    .registers 5

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 1048
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_29

    .line 1049
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnected entered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    .line 1053
    :goto_28
    return v1

    .line 1052
    :cond_29
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "isBluetoothAudioConnected entered"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public isConferenceCall()Z
    .registers 2

    .prologue
    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .registers 2

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .registers 3

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 1031
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_d

    .line 1032
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    .line 1034
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isIdle()Z
    .registers 2

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .registers 2

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .registers 2

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 828
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimFDNEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    return v0
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .registers 4

    .prologue
    .line 1038
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "notifyVoIPCallStateChangeIntoBT entered"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 1040
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_19

    .line 1041
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "notifyVoIPCallStateChangeIntoBT bluetoothHandsfree is not null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->handleVoipCallStateChange()V

    .line 1044
    :cond_19
    return-void
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "msg"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_b

    .line 1272
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1275
    :goto_9
    const/4 v0, 0x0

    return v0

    .line 1274
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_9
.end method

.method public sendRequestToRIL([B[BI)I
    .registers 9
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 939
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 940
    const/4 v2, 0x1

    if-eq p3, v2, :cond_11

    const/4 v2, 0x3

    if-ne p3, v2, :cond_18

    .line 942
    :cond_11
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 977
    :cond_17
    :goto_17
    return v1

    .line 946
    :cond_18
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg1 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg2 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 953
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got Response!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    monitor-enter v2

    .line 957
    :try_start_8a
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8f} :catch_bc

    .line 961
    :goto_8f
    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_c5

    .line 963
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Response!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v2, 0x6

    if-ne p3, v2, :cond_c8

    iget v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v2, :cond_c8

    .line 967
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    iget v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    :cond_b8
    :goto_b8
    iget v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    goto/16 :goto_17

    .line 958
    :catch_bc
    move-exception v0

    .line 959
    .local v0, e:Ljava/lang/Exception;
    :try_start_bd
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "Interrupted while trying to send request to RIL"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 961
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_c5
    move-exception v1

    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_c5

    throw v1

    .line 968
    :cond_c8
    const/4 v2, 0x2

    if-ne p3, v2, :cond_b8

    iget v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v2, :cond_b8

    .line 969
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting ATR size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/16 v3, 0x106

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b8
.end method

.method public setBTUserWantsAudioOn(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 1012
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_d

    .line 1013
    if-eqz p1, :cond_e

    .line 1014
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 1018
    :cond_d
    :goto_d
    return-void

    .line 1016
    :cond_e
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_d
.end method

.method public setMute(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 873
    return-void
.end method

.method public showPopupCallScreen()Z
    .registers 2

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .registers 4
    .parameter "passwd"

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 278
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;Lcom/android/internal/telephony/IccCard;)V

    .line 279
    .local v0, checkIccPerso:Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->start()V

    .line 280
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .registers 4
    .parameter "pin2"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 271
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 272
    .local v0, checkSimPin2:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    .line 273
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 264
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 265
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    .line 266
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .registers 1

    .prologue
    .line 866
    return-void
.end method

.method public turnOnBluetooth()V
    .registers 1

    .prologue
    .line 894
    return-void
.end method

.method public turnOnSpeaker(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 887
    return-void
.end method

.method public updateRAFTproximity(I)V
    .registers 4
    .parameter "raft_phone_state"

    .prologue
    .line 1004
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method
