.class public Lcom/android/phone/LGTNetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "LGTNetworkSetting.java"


# static fields
.field private static final DBG:Z

.field private static mSelect:I

.field private static mSelect_imsi:I


# instance fields
.field private DIALOG_ITEM:[Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingSponsor:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private network_choice:Landroid/preference/PreferenceScreen;

.field private network_mode:Landroid/preference/PreferenceScreen;

.field private service_provider:Landroid/preference/PreferenceScreen;

.field private setGlobalLte:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_a
    sput-boolean v0, Lcom/android/phone/LGTNetworkSetting;->DBG:Z

    .line 44
    sput v1, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 45
    sput v1, Lcom/android/phone/LGTNetworkSetting;->mSelect_imsi:I

    return-void

    :cond_11
    move v0, v1

    .line 34
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->DIALOG_ITEM:[Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 68
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 71
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    .line 72
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->setGlobalLte:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    .line 458
    new-instance v0, Lcom/android/phone/LGTNetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkSetting$5;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    sput p0, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTNetworkSetting;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->setSelectedBandMode(B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTNetworkSetting;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->selectedBandInformed(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/LGTNetworkSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/LGTNetworkSetting;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .registers 5
    .parameter "ex"

    .prologue
    const v2, 0x7f0e05cd

    .line 385
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 386
    :cond_c
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->removeDialog(I)V

    .line 387
    if-eqz p1, :cond_2b

    .line 388
    const-string v0, "LGTNetworkSetting"

    const-string v1, "Network mode change is failed........"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v0, :cond_2a

    .line 391
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 419
    :cond_2a
    :goto_2a
    return-void

    .line 393
    :cond_2b
    const-string v0, "LGTNetworkSetting"

    const-string v1, "Network mode change is success........"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v0, :cond_42

    .line 396
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 412
    :cond_42
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_56

    .line 413
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    .line 416
    :goto_4d
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->getSelectedBandMode()V

    goto :goto_2a

    .line 415
    :cond_56
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4d
.end method

.method private getAutoTitle()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 213
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 214
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 215
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, imsi:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    .line 217
    .local v5, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_8d

    .line 218
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v5

    .line 225
    :goto_1a
    aget-object v2, v5, v8

    .line 226
    .local v2, spon1:Ljava/lang/String;
    aget-object v3, v5, v9

    .line 227
    .local v3, spon2:Ljava/lang/String;
    aget-object v4, v5, v10

    .line 228
    .local v4, spon3:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/LGTNetworkSetting;->DBG:Z

    if-eqz v7, :cond_5a

    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5a
    if-eqz v0, :cond_66

    const-string v7, "45006"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 230
    const-string v1, "LG U+"

    .line 232
    :cond_66
    if-eqz v2, :cond_9a

    const-string v7, "imsi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 233
    invoke-direct {p0, v2}, Lcom/android/phone/LGTNetworkSetting;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_74
    :goto_74
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v1

    .line 220
    .end local v2           #spon1:Ljava/lang/String;
    .end local v3           #spon2:Ljava/lang/String;
    .end local v4           #spon3:Ljava/lang/String;
    :cond_8d
    const-string v7, ""

    aput-object v7, v5, v8

    .line 221
    const-string v7, ""

    aput-object v7, v5, v9

    .line 222
    const-string v7, ""

    aput-object v7, v5, v10

    goto :goto_1a

    .line 234
    .restart local v2       #spon1:Ljava/lang/String;
    .restart local v3       #spon2:Ljava/lang/String;
    .restart local v4       #spon3:Ljava/lang/String;
    :cond_9a
    if-eqz v3, :cond_a9

    const-string v7, "imsi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 235
    invoke-direct {p0, v3}, Lcom/android/phone/LGTNetworkSetting;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_74

    .line 236
    :cond_a9
    if-eqz v4, :cond_74

    const-string v7, "imsi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 237
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSetting;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_74
.end method

.method private getSelectedBandMode()V
    .registers 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 424
    return-void
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 246
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 248
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    move-result-object p1

    move-object v2, p1

    .line 252
    .end local v1           #str1:Ljava/util/StringTokenizer;
    :goto_f
    return-object v2

    .line 249
    :catch_10
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_f
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 488
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 489
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 490
    .local v1, type:I
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.roaming.networkmode"

    const-string v5, "AUTO"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-nez v0, :cond_30

    .line 492
    const-string v2, "LGTNetworkSetting"

    const-string v3, "ar is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_2f
    return-void

    .line 496
    :cond_30
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_89

    .line 497
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v6

    .line 498
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    packed-switch v1, :pswitch_data_ca

    .line 518
    sput v6, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 519
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05c6

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 520
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_68
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.roaming.networkmode"

    const-string v5, "AUTO"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 501
    :cond_89
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 508
    :pswitch_a4
    const/4 v2, 0x2

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 509
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05c8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 510
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 513
    :pswitch_b7
    const/4 v2, 0x1

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 514
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05c7

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 515
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 506
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_b7
    .end packed-switch
.end method

.method private networkModeDialog()V
    .registers 6

    .prologue
    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, networkModeDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->DIALOG_ITEM:[Ljava/lang/String;

    sget v3, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    new-instance v4, Lcom/android/phone/LGTNetworkSetting$4;

    invoke-direct {v4, p0}, Lcom/android/phone/LGTNetworkSetting$4;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e05cc

    new-instance v3, Lcom/android/phone/LGTNetworkSetting$3;

    invoke-direct {v3, p0}, Lcom/android/phone/LGTNetworkSetting$3;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LGTNetworkSetting$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSetting$2;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LGTNetworkSetting$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSetting$1;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    return-void
.end method

.method private selectedBandInformed(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 427
    const-string v2, "LGTNetworkSetting"

    const-string v3, "selectedBandInformed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz p1, :cond_45

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_45

    .line 429
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 430
    .local v1, selected:[I
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedBandInformed  selected[0]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    aget v2, v1, v5

    packed-switch v2, :pswitch_data_7a

    .line 443
    sput v5, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 444
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05c6

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 445
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v1           #selected:[I
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 452
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 454
    return-void

    .line 433
    .end local v0           #msg:Landroid/os/Message;
    .restart local v1       #selected:[I
    :pswitch_53
    const/4 v2, 0x2

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 434
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05c8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 435
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 438
    :pswitch_66
    const/4 v2, 0x1

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 439
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05c7

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 440
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 431
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_66
    .end packed-switch
.end method

.method private setSelectedBandMode(B)V
    .registers 9
    .parameter "bandValue"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bandValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkSetting;->showDialog(I)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, msg:Landroid/os/Message;
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 338
    packed-switch p1, :pswitch_data_c0

    .line 351
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    :cond_42
    :goto_42
    packed-switch p1, :pswitch_data_c8

    .line 368
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v4, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 369
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(RILConstants.PREFERRED_NETWORK_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_62
    return-void

    .line 340
    :pswitch_63
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    .line 345
    :pswitch_73
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    .line 359
    :pswitch_83
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v6, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 360
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(RILConstants.NETWORK_MODE_WCDMA_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 363
    :pswitch_a1
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v5, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 364
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(RILConstants.NETWORK_MODE_GSM_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 338
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_63
        :pswitch_73
    .end packed-switch

    .line 357
    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_83
        :pswitch_a1
    .end packed-switch
.end method

.method private updateScreen()V
    .registers 5

    .prologue
    .line 268
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, mSimtype:Ljava/lang/String;
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.simtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 271
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->service_provider:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 273
    :cond_2c
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->addPreferencesFromResource(I)V

    .line 82
    const-string v0, "service_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->service_provider:Landroid/preference/PreferenceScreen;

    .line 83
    const-string v0, "network_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    .line 84
    const-string v0, "network_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_choice:Landroid/preference/PreferenceScreen;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 89
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->updateScreen()V

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->DIALOG_ITEM:[Ljava/lang/String;

    .line 93
    sget v0, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    packed-switch v0, :pswitch_data_66

    .line 107
    :goto_49
    return-void

    .line 95
    :pswitch_4a
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e05c6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_49

    .line 98
    :pswitch_53
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e05c7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_49

    .line 101
    :pswitch_5c
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e05c8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_49

    .line 93
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_53
        :pswitch_5c
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 530
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, dialog:Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_20

    .line 543
    :goto_8
    return-object v0

    .line 538
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 539
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 540
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_8

    .line 531
    :pswitch_data_20
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 264
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 265
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->service_provider:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/LGTServiceProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkSetting;->startActivity(Landroid/content/Intent;)V

    .line 134
    :goto_13
    return v0

    .line 114
    :cond_14
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 115
    const-string v1, "LGTNetworkSetting"

    const-string v2, "[LGTNetworkSetting] disableDataConnectivity - 118"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v1, :cond_2c

    .line 118
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    .line 119
    :cond_2c
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->networkModeDialog()V

    goto :goto_13

    .line 121
    :cond_30
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->network_choice:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.phone"

    const-string v3, "com.samsung.android.phone.NetworkOperators"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 134
    :cond_4b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onResume()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 141
    const-string v7, "LGTNetworkSetting"

    const-string v10, "onResume..............."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v7, "LGTNetworkSetting"

    const-string v10, "disableDataConnectivity"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v7, :cond_1a

    .line 145
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v7}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 147
    :cond_1a
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->updateScreen()V

    .line 148
    const-string v7, "gsm.sim.roaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, efRoaming:Ljava/lang/String;
    const-string v7, "00"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    move v7, v8

    :goto_2c
    sput v7, Lcom/android/phone/LGTNetworkSetting;->mSelect_imsi:I

    .line 150
    const-string v6, ""

    .line 151
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e05c9

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e05ca

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    .line 154
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 155
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    .line 156
    .local v3, sponIMSI:[Ljava/lang/String;
    if-eqz v5, :cond_7a

    .line 157
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 164
    :goto_5b
    sget v7, Lcom/android/phone/LGTNetworkSetting;->mSelect_imsi:I

    packed-switch v7, :pswitch_data_182

    .line 205
    :goto_60
    const-string v7, "LGTNetworkSetting"

    const-string v8, "onResume : SendMsg EVENT_GET_PREFERRED_NETWORK"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2bc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 207
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 209
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 210
    return-void

    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #sponIMSI:[Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v6           #title:Ljava/lang/String;
    :cond_78
    move v7, v9

    .line 149
    goto :goto_2c

    .line 159
    .restart local v3       #sponIMSI:[Ljava/lang/String;
    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v6       #title:Ljava/lang/String;
    :cond_7a
    const-string v7, ""

    aput-object v7, v3, v8

    .line 160
    const-string v7, ""

    aput-object v7, v3, v9

    .line 161
    const-string v7, ""

    aput-object v7, v3, v11

    goto :goto_5b

    .line 166
    :pswitch_87
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->getAutoTitle()Ljava/lang/String;

    move-result-object v6

    .line 167
    const-string v7, "LG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 172
    :goto_a6
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final AUTO title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v7, "service_provider_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 170
    :cond_c8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_a6

    .line 176
    :pswitch_dc
    const-string v7, "10"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_132

    .line 177
    const-string v6, "01;LG U+"

    .line 187
    :cond_e6
    :goto_e6
    :try_start_e6
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v4, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 189
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f3} :catch_153

    move-result-object v6

    .line 194
    .end local v4           #str1:Ljava/util/StringTokenizer;
    :goto_f4
    const-string v7, "LG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16d

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    :goto_10f
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v7, "service_provider_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_60

    .line 178
    :cond_132
    const-string v7, "11"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 179
    aget-object v6, v3, v8

    goto :goto_e6

    .line 180
    :cond_13d
    const-string v7, "12"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_148

    .line 181
    aget-object v6, v3, v9

    goto :goto_e6

    .line 182
    :cond_148
    const-string v7, "13"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 183
    aget-object v6, v3, v11

    goto :goto_e6

    .line 190
    :catch_153
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    :cond_16d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10f

    .line 164
    nop

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_87
        :pswitch_dc
    .end packed-switch
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 257
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 258
    const-string v0, "mwcho"

    const-string v1, "[LGTNetworkSetting] onStop..............."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method
