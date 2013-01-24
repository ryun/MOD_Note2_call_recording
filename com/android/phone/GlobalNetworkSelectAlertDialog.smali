.class public Lcom/android/phone/GlobalNetworkSelectAlertDialog;
.super Landroid/app/Activity;
.source "GlobalNetworkSelectAlertDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field createDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 50
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_11

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_e
    sput-boolean v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->DBG:Z

    return-void

    :cond_11
    move v0, v1

    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$1;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v1, "GlobalNetworkSelectAlertDialog"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 77
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0737

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0736

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e002a

    new-instance v3, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e002e

    new-instance v3, Lcom/android/phone/GlobalNetworkSelectAlertDialog$3;

    invoke-direct {v3, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$3;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/GlobalNetworkSelectAlertDialog$2;

    invoke-direct {v2, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$2;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    .line 112
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;

    invoke-direct {v2, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    const-string v0, "GlobalNetworkSelectAlertDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->finish()V

    .line 134
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    const-string v0, "GlobalNetworkSelectAlertDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method
