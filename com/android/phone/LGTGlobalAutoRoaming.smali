.class public Lcom/android/phone/LGTGlobalAutoRoaming;
.super Landroid/preference/PreferenceActivity;
.source "LGTGlobalAutoRoaming.java"


# static fields
.field private static final DBG:Z

.field private static mCardNum:I

.field private static state:I


# instance fields
.field private final BUTTON_ROAMING_KEY:Ljava/lang/String;

.field private final CUSTOMER_CENTER:Ljava/lang/String;

.field private final LGT_BIP_FAIL:Ljava/lang/String;

.field private final LGT_BIP_SUCCESS:Ljava/lang/String;

.field private final LGT_BIP_UNSUCCESS:Ljava/lang/String;

.field private addRoamingCountry:Landroid/preference/PreferenceScreen;

.field private autoDialSetting:Landroid/preference/PreferenceScreen;

.field private customCenterKey:Landroid/preference/PreferenceScreen;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStkService:Lcom/android/internal/telephony/cat/AppInterface;

.field private roamingClock:Landroid/preference/PreferenceScreen;

.field private roamingCustomerCenter:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_a
    sput-boolean v0, Lcom/android/phone/LGTGlobalAutoRoaming;->DBG:Z

    .line 66
    sput v1, Lcom/android/phone/LGTGlobalAutoRoaming;->mCardNum:I

    .line 68
    sput v1, Lcom/android/phone/LGTGlobalAutoRoaming;->state:I

    return-void

    :cond_11
    move v0, v1

    .line 61
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    const-string v0, "0234167010"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->CUSTOMER_CENTER:Ljava/lang/String;

    .line 59
    const-string v0, "button_roaming_key"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->BUTTON_ROAMING_KEY:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 64
    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 69
    const-string v0, "com.sec.android.lgt.bip.SUCCESS"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->LGT_BIP_SUCCESS:Ljava/lang/String;

    .line 70
    const-string v0, "com.sec.android.lgt.bip.UNSUCCESS"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->LGT_BIP_UNSUCCESS:Ljava/lang/String;

    .line 71
    const-string v0, "com.sec.android.lgt.bip.FAIL"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->LGT_BIP_FAIL:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/phone/LGTGlobalAutoRoaming$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$1;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/LGTGlobalAutoRoaming;->onReceiveBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/LGTGlobalAutoRoaming;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/LGTGlobalAutoRoaming;->enableDataConnection(Z)V

    return-void
.end method

.method private dataRoamingSettingDialog()V
    .registers 4

    .prologue
    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, dataRoamingDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v1, 0x7f0e05ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const v1, 0x7f0e05af

    new-instance v2, Lcom/android/phone/LGTGlobalAutoRoaming$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$3;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    const v1, 0x7f0e05b0

    new-instance v2, Lcom/android/phone/LGTGlobalAutoRoaming$4;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$4;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 244
    return-void
.end method

.method private enableDataConnection(Z)V
    .registers 8
    .parameter "enable"

    .prologue
    .line 286
    const-string v3, "GlobalAutoRoaming"

    const-string v4, "enableDataConnection() - start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 289
    .local v1, phoneMgr:Lcom/android/internal/telephony/ITelephony;
    iget-object v3, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/phone/LGTGlobalAutoRoaming;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 290
    .local v2, wm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_3b

    .line 292
    if-eqz p1, :cond_3c

    .line 294
    :try_start_22
    const-string v3, "GlobalAutoRoaming"

    const-string v4, "enableDataConnection() - enable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    if-nez v3, :cond_38

    .line 297
    const-string v3, "default"

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 299
    :cond_38
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    .line 311
    :cond_3b
    :goto_3b
    return-void

    .line 302
    :cond_3c
    const-string v3, "GlobalAutoRoaming"

    const-string v4, "enableDataConnection() - disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v3, "default"

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I

    .line 304
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_4b} :catch_4c

    goto :goto_3b

    .line 307
    :catch_4c
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "GlobalAutoRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile data operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private errorDialog()V
    .registers 4

    .prologue
    .line 247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e05b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e05b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    .local v0, noAccess:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05b5

    new-instance v2, Lcom/android/phone/LGTGlobalAutoRoaming$5;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$5;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 256
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 257
    return-void
.end method

.method private onReceiveBroadcast(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const v7, 0x7f0e05b9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, action:Ljava/lang/String;
    const-string v1, ""

    .line 345
    .local v1, message:Ljava/lang/String;
    const-string v2, "GlobalAutoRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveBroadcast action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 348
    const-string v2, "state"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 349
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 350
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 357
    :cond_44
    :goto_44
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_6e

    .line 358
    const-string v2, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 359
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 372
    :cond_6e
    return-void

    .line 353
    :cond_6f
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 354
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_44

    .line 360
    :cond_7a
    const-string v2, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 361
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    .line 362
    :cond_8d
    const-string v2, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 363
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    .line 365
    :cond_a3
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 366
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5d
.end method

.method private sendEnvelope()V
    .registers 3

    .prologue
    .line 270
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "sendEnvelope to trigger BIP!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->showDownloadProgressDialog()V

    .line 272
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-eqz v0, :cond_13

    .line 273
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeToTriggerBip()V

    .line 274
    :cond_13
    return-void
.end method

.method private showDownloadProgressDialog()V
    .registers 7

    .prologue
    .line 313
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 315
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e05b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 317
    new-instance v0, Lcom/android/phone/LGTGlobalAutoRoaming$6;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$6;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    .line 323
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/phone/LGTGlobalAutoRoaming$7;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$7;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    .line 328
    .local v1, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 329
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 330
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 331
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 332
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iput-object p0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    sput v1, Lcom/android/phone/LGTGlobalAutoRoaming;->state:I

    .line 99
    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->addPreferencesFromResource(I)V

    .line 100
    const-string v1, "button_roaming_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v1, "button_network_setting"

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 102
    const-string v1, "button_auto_dialing_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->autoDialSetting:Landroid/preference/PreferenceScreen;

    .line 103
    const-string v1, "button_global_auto_roaming_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->roamingCustomerCenter:Landroid/preference/PreferenceScreen;

    .line 104
    const-string v1, "button_add_nation_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    .line 105
    const-string v1, "button_call_customcenter_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    .line 108
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d5

    .line 109
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->autoDialSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 116
    :goto_69
    invoke-virtual {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7f

    .line 117
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 134
    :cond_7f
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_91

    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ad

    .line 135
    :cond_91
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_db

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 140
    :goto_a2
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-nez v1, :cond_ad

    .line 141
    const-string v1, "GlobalAutoRoaming"

    const-string v2, " GetCatServiceInstance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_ad
    new-instance v1, Lcom/android/phone/LGTGlobalAutoRoaming$2;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$2;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void

    .line 114
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_d5
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_69

    .line 138
    :cond_db
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    goto :goto_a2
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 335
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 341
    :goto_a
    return-void

    .line 338
    :catch_b
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GlobalAutoRoaming"

    const-string v2, "unregisterReceiver(mReceiver)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 159
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 161
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 165
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->dataRoamingSettingDialog()V

    .line 220
    :cond_28
    :goto_28
    return v8

    .line 168
    :cond_29
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    const v1, 0x7f0e05b2

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 170
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 171
    invoke-direct {p0, v7}, Lcom/android/phone/LGTGlobalAutoRoaming;->enableDataConnection(Z)V

    goto :goto_28

    .line 175
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_5b

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->startActivity(Landroid/content/Intent;)V

    goto :goto_28

    .line 178
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->autoDialSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_6a

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/LGTSetAutoDialing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->startActivity(Landroid/content/Intent;)V

    goto :goto_28

    .line 181
    :cond_6a
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_115

    .line 182
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 194
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->errorDialog()V

    goto :goto_28

    .line 196
    :cond_80
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 198
    const-string v2, "1"

    const-string v3, "REG"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 199
    const-string v3, "1"

    const-string v4, "AUTH"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 200
    const-string v4, "GlobalAutoRoaming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSetLGTReg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isSetLGTAuth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez v2, :cond_ce

    .line 202
    const v0, 0x7f0e05fc

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_28

    .line 204
    :cond_ce
    if-nez v3, :cond_dc

    .line 205
    const v0, 0x7f0e05fd

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_28

    .line 207
    :cond_dc
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_ec

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_f8

    .line 208
    :cond_ec
    const v0, 0x7f0e05ac

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_28

    .line 209
    :cond_f8
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_110

    .line 210
    const v0, 0x7f0e01a8

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_28

    .line 212
    :cond_110
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->sendEnvelope()V

    goto/16 :goto_28

    .line 214
    :cond_115
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->roamingClock:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_125

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/LGTRoamingDualClockSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 216
    :cond_125
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 217
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "onPreferenceTreeClick: preference == customCenterKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "0234167010"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->placeCall(Ljava/lang/String;)V

    goto/16 :goto_28
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 277
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 281
    const-string v0, "mwcho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataRoamingEnabled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    return-void
.end method

.method placeCall(Ljava/lang/String;)V
    .registers 6
    .parameter "number"

    .prologue
    .line 259
    sget-boolean v1, Lcom/android/phone/LGTGlobalAutoRoaming;->DBG:Z

    if-eqz v1, :cond_1c

    const-string v1, "GlobalAutoRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1c
    if-eqz p1, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 261
    :cond_24
    const-string v1, "GlobalAutoRoaming"

    const-string v2, "number == null || !TextUtils.isGraphic(number)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_2b
    return-void

    .line 264
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b
.end method
