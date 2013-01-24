.class public Lcom/android/phone/NetworkNotificationUI;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field private static mAutoTimesetDialog:Landroid/app/AlertDialog;

.field private static mIsRegistRejectEnabled:Z


# instance fields
.field PrevRtsIdleValue:I

.field private dialog_textId:I

.field private isRoamingArea:I

.field private isRoamingDataset:Z

.field private m3gnotiAfterWifiDisabled:Z

.field private m3gwarningPopup:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mCheckingDataSelectPopup:Z

.field private final mContext:Landroid/content/Context;

.field private mDataConnectSelectDialog:Landroid/app/AlertDialog;

.field private mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataState:I

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mMobileDataQuestion:Ljava/lang/String;

.field private mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

.field private mNoservicePopupSelectionNagativeButton:Z

.field private mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

.field private mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNotifyRTSDialog:Landroid/app/AlertDialog;

.field private mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevDataState:I

.field private mRegInRoamAtFirst:Z

.field private mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

.field public newSS:Landroid/telephony/ServiceState;

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v1, :cond_1f

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    .line 81
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_21

    :goto_17
    sput-boolean v2, Lcom/android/phone/NetworkNotificationUI;->VDBG:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    .line 129
    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    return-void

    :cond_1f
    move v0, v2

    .line 79
    goto :goto_f

    :cond_21
    move v2, v1

    .line 81
    goto :goto_17
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    .line 90
    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    .line 91
    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    .line 92
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mRegInRoamAtFirst:Z

    .line 111
    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea:I

    .line 126
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gnotiAfterWifiDisabled:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckingDataSelectPopup:Z

    .line 128
    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    .line 130
    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->PrevRtsIdleValue:I

    .line 133
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$1;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    .line 138
    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->dialog_textId:I

    .line 139
    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    .line 141
    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mMobileDataQuestion:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 147
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$1;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$2;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 703
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$5;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 710
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$6;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 793
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$8;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$8;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 837
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$10;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$10;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 870
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$11;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$11;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1365
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$14;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$14;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 257
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    .line 258
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    .line 313
    return-void
.end method

.method private final NotifyNetworkRegistering()V
    .registers 10

    .prologue
    .line 801
    iget v6, p0, Lcom/android/phone/NetworkNotificationUI;->dialog_textId:I

    .line 804
    .local v6, textId:I
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 806
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_12

    .line 807
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 835
    :goto_11
    return-void

    .line 812
    :cond_12
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v8, 0x103000c

    invoke-direct {v2, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 813
    .local v2, dialogContext:Landroid/content/Context;
    const-string v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 816
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v4, Lcom/android/phone/NetworkNotificationUI$9;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkNotificationUI$9;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 823
    .local v4, mNetworkRegisteringDialogListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 825
    .local v0, NotifyNetworkRegisteringDialog:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e04d7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 829
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 830
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 831
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 832
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 834
    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    goto :goto_11
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkNotificationUI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkNotificationUI;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/NetworkNotificationUI;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkNotificationUI;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/NetworkNotificationUI;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkNotificationUI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/NetworkNotificationUI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->updateWifistate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkNotificationUI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkNotificationUI;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->NotifyNetworkRegistering()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkNotificationUI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkNotificationUI;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    sput-object p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkNotificationUI;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setChargerConnected(B)V

    return-void
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->VDBG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isDefaultImei()Z
    .registers 5

    .prologue
    .line 891
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 892
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, imei:Ljava/lang/String;
    const-string v2, "357858010034783"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "000000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 895
    :cond_1e
    const/4 v2, 0x1

    .line 897
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private isOtaRegistering()Z
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 901
    const-string v7, "SKT"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string v7, "LGT"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string v7, "KTT"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 904
    :cond_2c
    const-string v7, "ril.simtype"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, simType:Ljava/lang/String;
    const-string v7, "ril.domesticOtaStart"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, domesticOtaStart:Ljava/lang/String;
    const-string v7, "ril.domesticOta"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, domesticOta:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v8, "UsimDownload"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 909
    .local v3, otaPreferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 910
    .local v2, isOTADownload:Z
    const-string v7, "Download"

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 912
    const-string v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " domesticOtaStart:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isOTADownload:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v7, "18"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_99

    :cond_89
    const-string v7, "19"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9b

    :cond_99
    move v5, v6

    .line 932
    .end local v0           #domesticOta:Ljava/lang/String;
    .end local v1           #domesticOtaStart:Ljava/lang/String;
    .end local v2           #isOTADownload:Z
    .end local v3           #otaPreferences:Landroid/content/SharedPreferences;
    .end local v4           #simType:Ljava/lang/String;
    :cond_9a
    :goto_9a
    return v5

    .line 920
    .restart local v0       #domesticOta:Ljava/lang/String;
    .restart local v1       #domesticOtaStart:Ljava/lang/String;
    .restart local v2       #isOTADownload:Z
    .restart local v3       #otaPreferences:Landroid/content/SharedPreferences;
    .restart local v4       #simType:Ljava/lang/String;
    :cond_9b
    if-eqz v2, :cond_9f

    move v5, v6

    .line 921
    goto :goto_9a

    .line 923
    :cond_9f
    if-eqz v1, :cond_ab

    const-string v7, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    move v5, v6

    .line 924
    goto :goto_9a

    .line 926
    :cond_ab
    if-eqz v0, :cond_9a

    const-string v7, "KtfNumberReg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    move v5, v6

    .line 927
    goto :goto_9a
.end method

.method private final isRoamingArea()Z
    .registers 6

    .prologue
    .line 847
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 848
    .local v2, roaming:Z
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, currentplmn:Ljava/lang/String;
    :try_start_c
    const-string v3, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_11} :catch_18

    move-result v3

    if-eqz v3, :cond_16

    .line 852
    const/4 v2, 0x1

    .line 857
    .end local v2           #roaming:Z
    :goto_15
    return v2

    .line 854
    .restart local v2       #roaming:Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_15

    .line 855
    :catch_18
    move-exception v1

    .line 856
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "NetworkNotificationUI"

    const-string v4, "isRoamingArea ullPointerException : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private isRtsPopupAllowed()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 878
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRegistRejectEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    if-nez v1, :cond_20

    .line 887
    :cond_1f
    :goto_1f
    return v0

    .line 882
    :cond_20
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isDefaultImei()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 884
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 887
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private final notify3gWarning()V
    .registers 5

    .prologue
    .line 722
    const-string v0, ""

    .line 724
    .local v0, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_35

    .line 725
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0587

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v2, "LGT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 727
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0584

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 733
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 734
    return-void

    .line 730
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_35
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0581

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method private final notifyRoaming()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 863
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0e04cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 865
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 866
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 867
    return-void
.end method

.method private setChargerConnected(B)V
    .registers 8
    .parameter

    .prologue
    .line 1479
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1480
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1482
    const-string v0, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChargerConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/16 v0, 0x16

    :try_start_24
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1485
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1486
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1487
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3d} :catch_48

    .line 1492
    :goto_3d
    if-eqz v2, :cond_42

    .line 1493
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1494
    :cond_42
    if-eqz v1, :cond_47

    .line 1495
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_47} :catch_62

    .line 1500
    :cond_47
    :goto_47
    return-void

    .line 1489
    :catch_48
    move-exception v0

    .line 1490
    const-string v3, "NetworkNotificationUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occured during setChargerConnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1497
    :catch_62
    move-exception v0

    .line 1498
    const-string v0, "LOG_TAG"

    const-string v1, "close fail!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method private setDataRoamingEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    return-void

    .line 549
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private showAutoTimeSetDialog()V
    .registers 5

    .prologue
    .line 1315
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$13;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$13;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 1350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1352
    const v2, 0x7f0e04d3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04d5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04d1

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04d2

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1358
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1359
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1360
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1361
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1362
    sput-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    .line 1363
    return-void
.end method

.method private showNoServiceAndManualSelecionDialog()V
    .registers 6

    .prologue
    .line 755
    new-instance v2, Lcom/android/phone/NetworkNotificationUI$7;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkNotificationUI$7;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 778
    .local v2, mDialogListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    .local v0, NoServiceDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e0713

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0714

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e04d1

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e04d2

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 787
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 788
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 789
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 790
    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    .line 791
    return-void
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 464
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 467
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    .line 482
    :goto_12
    return-void

    .line 469
    :pswitch_13
    const-string v1, "NetworkNotificationUI"

    const-string v2, "updateConnectivity-TYPE_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 472
    :pswitch_1b
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConnectivity-TYPE_WIFI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 474
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    goto :goto_12

    .line 476
    :cond_41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    goto :goto_12

    .line 467
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1b
    .end packed-switch
.end method

.method private updateWifistate()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 451
    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 452
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 453
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_30

    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 454
    .local v2, networkState:Landroid/net/NetworkInfo$State;
    :goto_13
    const-string v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifistate : networkState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_35

    .line 459
    :goto_2f
    return v3

    .line 453
    .end local v2           #networkState:Landroid/net/NetworkInfo$State;
    :cond_30
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    goto :goto_13

    .line 459
    .restart local v2       #networkState:Landroid/net/NetworkInfo$State;
    :cond_35
    const/4 v3, 0x0

    goto :goto_2f
.end method
