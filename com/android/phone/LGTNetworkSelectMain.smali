.class public Lcom/android/phone/LGTNetworkSelectMain;
.super Landroid/preference/PreferenceActivity;
.source "LGTNetworkSelectMain.java"


# static fields
.field private static airPlaneEnabled:I

.field private static dialogCnt:I

.field private static mImsi:Z

.field private static mNetworkMode:Z

.field private static mNetworkSelect:Z

.field private static mSelect:I


# instance fields
.field private auto_setting:Landroid/preference/CheckBoxPreference;

.field private mCard:Lcom/android/internal/telephony/IccCard;

.field private mEfRoaming:Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private manual_setting:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 101
    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->airPlaneEnabled:I

    .line 105
    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->mSelect:I

    .line 106
    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->dialogCnt:I

    .line 108
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    .line 109
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    .line 110
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 112
    new-instance v0, Lcom/android/phone/LGTNetworkSelectMain$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkSelectMain$1;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->successToast()V

    return-void
.end method

.method static synthetic access$1002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput p0, Lcom/android/phone/LGTNetworkSelectMain;->dialogCnt:I

    return p0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/android/phone/LGTNetworkSelectMain;->airPlaneEnabled:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->setIMSIAuto()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->networkSelectAuto()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->setAutoBandMode()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/phone/LGTNetworkSelectMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/phone/LGTNetworkSelectMain;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->rebootAfterAutoSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/LGTNetworkSelectMain;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSelectMain;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$802(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput p0, Lcom/android/phone/LGTNetworkSelectMain;->mSelect:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->initState()V

    return-void
.end method

.method private checkAuto(Z)V
    .registers 5
    .parameter "setAuto"

    .prologue
    .line 225
    const-string v0, "LGTNetworkSelectMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuto : setAuto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_26

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 228
    return-void

    .line 227
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 412
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 413
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 414
    .local v1, type:I
    const-string v2, "LGTNetworkSelectMain"

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

    .line 415
    if-nez v0, :cond_2f

    .line 416
    const-string v2, "LGTNetworkSelectMain"

    const-string v3, "ar is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_2e
    return-void

    .line 420
    :cond_2f
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_82

    .line 421
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 422
    const-string v2, "LGTNetworkSelectMain"

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

    .line 430
    packed-switch v1, :pswitch_data_ae

    .line 438
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_5e
    const-string v2, "LGTNetworkSelectMain"

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

    .line 442
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->updateScreen()V

    goto :goto_2e

    .line 425
    :cond_82
    const-string v2, "LGTNetworkSelectMain"

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

    goto :goto_2e

    .line 432
    :pswitch_9d
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 435
    :pswitch_a5
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 430
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_a5
    .end packed-switch
.end method

.method private initState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 448
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    .line 449
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    .line 450
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    .line 451
    return-void
.end method

.method private isAuto()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 231
    const-string v5, "gsm.sim.roaming"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, efRoaming:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    .line 233
    .local v0, IsManualSelection:Z
    const-string v5, "ril.roaming.networkmode"

    const-string v6, "AUTO"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, networkMode:Ljava/lang/String;
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, simtype:Ljava/lang/String;
    const-string v5, "LGTNetworkSelectMain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simtype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "efRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsManualSelection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,networkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v5, "3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    const-string v5, "00"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 244
    :cond_65
    :goto_65
    return v4

    .line 238
    :cond_66
    if-nez v0, :cond_65

    .line 240
    const-string v5, "AUTO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 244
    const/4 v4, 0x0

    goto :goto_65
.end method

.method private manualNetworkSettingDialog()V
    .registers 4

    .prologue
    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, networkSelectDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 296
    const v1, 0x7f0e05bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 297
    const v1, 0x7f0e05e1

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$2;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    const v1, 0x7f0e05e2

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$3;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 313
    return-void
.end method

.method private networkSelectAuto()V
    .registers 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 383
    return-void
.end method

.method private rebootAfterAutoSetting()V
    .registers 5

    .prologue
    .line 350
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 351
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTNetworkSelectMain$6;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTNetworkSelectMain$6;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method private rebootDialog()V
    .registers 4

    .prologue
    .line 316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, rebootDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e059b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 318
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 319
    const v1, 0x7f0e05be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 320
    const v1, 0x7f0e05bf

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$4;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$4;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v1, 0x7f0e05c0

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$5;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$5;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    return-void
.end method

.method private setAutoBandMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 365
    const-string v1, "LGTNetworkSelectMain"

    const-string v2, "setAutoBandMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, msg:Landroid/os/Message;
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 370
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    :cond_27
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 376
    return-void
.end method

.method private setIMSIAuto()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    new-array v1, v3, [B

    .line 388
    aput-byte v2, v1, v2

    .line 389
    const-string v2, "00"

    iput-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;

    .line 394
    :try_start_12
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 395
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_3d} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_3d} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_3d} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_3d} :catch_3e

    .line 401
    :goto_3d
    return-void

    .line 399
    :catch_3e
    move-exception v0

    goto :goto_3d

    .line 398
    :catch_40
    move-exception v0

    goto :goto_3d

    .line 397
    :catch_42
    move-exception v0

    goto :goto_3d

    .line 396
    :catch_44
    move-exception v0

    goto :goto_3d
.end method

.method private successToast()V
    .registers 3

    .prologue
    .line 404
    sget-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    if-eqz v0, :cond_1d

    .line 405
    const-string v0, "LGTNetworkSelectMain"

    const-string v1, "Auto Setting is Success. It will be rebooting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->initState()V

    .line 409
    :cond_1d
    return-void
.end method

.method private updateScreen()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 208
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->isAuto()I

    move-result v0

    .line 209
    .local v0, isAuto:I
    const-string v1, "LGTNetworkSelectMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreen : isAuto = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    packed-switch v0, :pswitch_data_2e

    .line 218
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMain;->checkAuto(Z)V

    .line 222
    :goto_23
    return-void

    .line 212
    :pswitch_24
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMain;->checkAuto(Z)V

    goto :goto_23

    .line 215
    :pswitch_28
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/LGTNetworkSelectMain;->checkAuto(Z)V

    goto :goto_23

    .line 210
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMain;->addPreferencesFromResource(I)V

    .line 175
    const-string v0, "auto_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    .line 176
    const-string v0, "manual_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 179
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 180
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mCard:Lcom/android/internal/telephony/IccCard;

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSelectMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->airPlaneEnabled:I

    .line 183
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isNetworkSettingEnable()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 184
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 188
    :cond_4c
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 277
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, dialog:Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_20

    .line 290
    :goto_8
    return-object v0

    .line 285
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSelectMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 287
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_8

    .line 278
    :pswitch_data_20
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 205
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 250
    sput v1, Lcom/android/phone/LGTNetworkSelectMain;->mSelect:I

    .line 251
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 252
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 256
    :goto_19
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->initState()V

    .line 258
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->rebootDialog()V

    .line 270
    :goto_1f
    return v0

    .line 254
    :cond_20
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_19

    .line 261
    :cond_26
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 262
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 263
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    :goto_3b
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->manualNetworkSettingDialog()V

    goto :goto_1f

    .line 265
    :cond_3f
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3b

    :cond_45
    move v0, v1

    .line 270
    goto :goto_1f
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 194
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 195
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->updateScreen()V

    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    return-void
.end method
