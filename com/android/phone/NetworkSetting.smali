.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static ATT_PLMN:[Ljava/lang/String;

.field private static Operator_Alphalong:Ljava/lang/String;

.field private static Operator_Numeric:Ljava/lang/String;

.field private static mInitialValue:Ljava/lang/String;


# instance fields
.field private final ACTION_PLMN:Ljava/lang/String;

.field private ActionType:I

.field private firstTime:Z

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelect:Landroid/preference/Preference;

.field private mBootUpExtra:Z

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field mContResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mDefaultSetup:Landroid/preference/ListPreference;

.field private mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mFailDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDisconnectingData:Z

.field protected mIsForeground:Z

.field private mManualModeSuccess:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOnBroadcastRecieve:Z

.field private mOnPauseTransition:Z

.field mPLMN:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPlmnReciever:Landroid/content/BroadcastReceiver;

.field private mSearchButton:Landroid/preference/Preference;

.field private mSearchNow:Z

.field mSelectAutomatically:Z

.field private mSetAuto:Z

.field mSetToAutomaticMode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempPreference:Landroid/preference/Preference;

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    .line 158
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "310038"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "310090"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "310150"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "310380"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "310410"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "310560"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "310680"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "310980"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "310990"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NetworkSetting;->ATT_PLMN:[Ljava/lang/String;

    .line 162
    sput-object v3, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    .line 163
    sput-object v3, Lcom/android/phone/NetworkSetting;->Operator_Alphalong:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 144
    const-string v0, "com.android.settings.PLMNACTION"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ACTION_PLMN:Ljava/lang/String;

    .line 146
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->firstTime:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    .line 199
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 208
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPlmnReciever:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 417
    new-instance v0, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 443
    new-instance v0, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 699
    new-instance v0, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 751
    new-instance v0, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 761
    new-instance v0, Lcom/android/phone/NetworkSetting$8;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$8;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 769
    new-instance v0, Lcom/android/phone/NetworkSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$9;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->enableMobileData()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->handleManualFailCase()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectList()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V

    return-void
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/NetworkSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkDataConnectionAutoSelect()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkDataConnectionSearchButton()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkSetting;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updatePLMNmode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    return v0
.end method

.method private backToAutoMode()V
    .registers 4

    .prologue
    .line 1689
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    if-nez v0, :cond_34

    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1690
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1691
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToAutoMode(), mManualModeSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_33
    :goto_33
    return-void

    .line 1693
    :cond_34
    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1694
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    if-nez v0, :cond_53

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-nez v0, :cond_53

    .line 1695
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1700
    :goto_4b
    const-string v0, "phone"

    const-string v1, "backToAutoMode : Keep Manual Mode"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1697
    :cond_53
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    goto :goto_4b
.end method

.method private checkCspPlmn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1554
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1555
    const-string v0, "[CSP] Enabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1556
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 1564
    :cond_10
    :goto_10
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSP support - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1565
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set PLMN - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1566
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set setToAutomaticMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1567
    return-void

    .line 1558
    :cond_63
    const-string v0, "[CSP] Disabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 1560
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1561
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    goto :goto_10
.end method

.method private checkDataConnectionAutoSelect()V
    .registers 8

    .prologue
    const v6, 0x7f0e0431

    const v5, 0x7f0e002a

    const v4, 0x1010355

    const/4 v3, 0x1

    .line 1252
    const-string v0, "phone"

    const-string v1, "Check Data call (Auto)..."

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1253
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    .line 1254
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1256
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_58

    .line 1258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e042e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    .line 1282
    :goto_57
    return-void

    .line 1266
    :cond_58
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_b0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_65

    if-ne v0, v3, :cond_b0

    .line 1268
    :cond_65
    const-string v0, "phone"

    const-string v1, "DATA_CONNECTED"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1269
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e011d

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_57

    .line 1280
    :cond_b0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    goto :goto_57
.end method

.method private checkDataConnectionSearchButton()V
    .registers 8

    .prologue
    const v6, 0x7f0e0431

    const v5, 0x7f0e002a

    const v4, 0x1010355

    const/4 v3, 0x1

    .line 1219
    const-string v0, "phone"

    const-string v1, "Check Data call (Search)..."

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1220
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1222
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_56

    .line 1224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e042e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    .line 1249
    :goto_55
    return-void

    .line 1232
    :cond_56
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_ae

    const/4 v1, 0x2

    if-eq v0, v1, :cond_63

    if-ne v0, v3, :cond_ae

    .line 1234
    :cond_63
    const-string v0, "phone"

    const-string v1, "DATA_CONNECTED"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1235
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0432

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_55

    .line 1246
    :cond_ae
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 1247
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    goto :goto_55
.end method

.method private checkDataConnectionSelectList()V
    .registers 8

    .prologue
    const v6, 0x7f0e0431

    const v5, 0x7f0e002a

    const v4, 0x1010355

    const/4 v3, 0x1

    .line 1285
    const-string v0, "phone"

    const-string v1, "Check Data call..."

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1286
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1288
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_56

    .line 1290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e042e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    .line 1314
    :goto_55
    return-void

    .line 1298
    :cond_56
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_ae

    const/4 v1, 0x2

    if-eq v0, v1, :cond_63

    if-ne v0, v3, :cond_ae

    .line 1300
    :cond_63
    const-string v0, "phone"

    const-string v1, "DATA_CONNECTED"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1301
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e011d

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_55

    .line 1312
    :cond_ae
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectList()V

    goto :goto_55
.end method

.method private clearList()V
    .registers 4

    .prologue
    .line 1211
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 1212
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 1214
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1215
    return-void
.end method

.method private createForUSAGSM()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1572
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1573
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-eqz v0, :cond_19

    .line 1574
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1575
    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 1577
    :cond_19
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-eqz v0, :cond_28

    .line 1578
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1579
    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 1583
    :cond_28
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-eqz v0, :cond_3c

    .line 1584
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1587
    :cond_3c
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_default_setup_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    .line 1588
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    .line 1590
    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    if-nez v0, :cond_75

    .line 1591
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    .line 1592
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 1593
    const-string v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    .line 1597
    :goto_6c
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1599
    :cond_75
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inital Prefs Value -: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/phone/NetworkSetting$12;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$12;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1617
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1618
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_e3

    .line 1620
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1621
    const-string v0, "phone"

    const-string v1, "Menu is disabled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_e3

    .line 1623
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1624
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetToAutomaticMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDefaultSetup setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_e3
    const-string v0, "enabled"

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v2, "FAKE_PLMN_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1630
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 1631
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1635
    :cond_fc
    const-string v0, "feature_enable_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 1636
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1637
    const-string v0, "[CSP] Enabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1638
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 1643
    :goto_113
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1647
    :cond_11a
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 1648
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.PLMNACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1649
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPlmnReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1651
    :cond_12e
    return-void

    .line 1595
    :cond_12f
    const-string v0, "1"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    goto/16 :goto_6c

    .line 1640
    :cond_135
    const-string v0, "[CSP] Disabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    goto :goto_113
.end method

.method private displayEmptyNetworkList(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_b

    const v0, 0x7f0e0096

    :goto_7
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 840
    return-void

    .line 839
    :cond_b
    const v0, 0x7f0e0094

    goto :goto_7
.end method

.method private displayNetworkQueryFailed(I)V
    .registers 6
    .parameter "error"

    .prologue
    .line 860
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 861
    const-string v2, "0"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 862
    const-string v2, "phone"

    const-string v3, "isplayNetworkQueryFailed: defaultSetupLp setting to Automatic"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 868
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 870
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 875
    if-eqz p1, :cond_28

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_28

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_28

    .line 877
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, status:Ljava/lang/String;
    :goto_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 886
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 887
    return-void

    .line 879
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #status:Ljava/lang/String;
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #status:Ljava/lang/String;
    goto :goto_1b
.end method

.method private displayNetworkSelectionSucceeded(I)V
    .registers 8
    .parameter "reason"

    .prologue
    const v3, 0x7f0e009d

    .line 891
    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    .line 892
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, status:Ljava/lang/String;
    :goto_e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 897
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 900
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/NetworkSetting$10;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$10;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 905
    return-void

    .line 894
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #status:Ljava/lang/String;
    :cond_25
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #status:Ljava/lang/String;
    goto :goto_e
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .registers 6
    .parameter "networkStr"

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 846
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_22

    .line 853
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_22

    .line 854
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 857
    :cond_22
    return-void
.end method

.method private enableMobileData()V
    .registers 2

    .prologue
    .line 1471
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    .line 1472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1473
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ni"

    .prologue
    .line 1201
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1206
    :goto_e
    return-object v0

    .line 1203
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1204
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1206
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private goBackToPreviousManualNetwork()V
    .registers 6

    .prologue
    .line 1351
    const-string v0, "Manual_Selected_Operator"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1352
    const-string v1, "Operator_Numeric"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    const-string v2, "Operator_AlphaLong"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goBackToPreviousManualNetwork operatorNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operatorAlphaLong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_47

    .line 1358
    const-string v0, "phone"

    const-string v1, "I am going back with out calling selectNetworkManually"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_46
    return-void

    .line 1361
    :cond_47
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1362
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_46
.end method

.method private handleManualFailCase()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1484
    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1485
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1486
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_29

    .line 1487
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1488
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    .line 1492
    :goto_1d
    const-string v0, "phone"

    const-string v1, "EVENT_NETWORK_SELECTION_DONE, Set Automatic"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_24
    :goto_24
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    .line 1499
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 1500
    return-void

    .line 1490
    :cond_29
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    goto :goto_1d

    .line 1494
    :cond_2f
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_24

    .line 1495
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V

    goto :goto_24
.end method

.method private handleManualSuccessCase()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1517
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1518
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1522
    :cond_f
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1523
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_31

    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1524
    iput-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    .line 1525
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    .line 1526
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 1527
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1531
    :cond_31
    sget-object v0, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    .line 1532
    sget-object v1, Lcom/android/phone/NetworkSetting;->Operator_Alphalong:Ljava/lang/String;

    .line 1533
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Registered- selectedOperatorNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "selectedOperatorAlphaLong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1536
    const-string v2, "Manual_Selected_Operator"

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1537
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1538
    const-string v3, "Operator_Numeric"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1539
    const-string v0, "Operator_AlphaLong"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1540
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1541
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1542
    iput-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    .line 1545
    :cond_7e
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/NetworkSetting$11;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$11;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1550
    return-void
.end method

.method private loadNetworksList()V
    .registers 3

    .prologue
    .line 908
    const-string v0, "load networks list..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 912
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_12

    .line 916
    :goto_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 917
    return-void

    .line 913
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1463
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1467
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1468
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .registers 21
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 927
    const-string v2, "networks list loaded"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 930
    const-string v2, "hideProgressPanel"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 932
    const/16 v2, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 936
    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 940
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 942
    if-eqz p2, :cond_4d

    .line 943
    const-string v2, "error while querying available networks"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 944
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 945
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 1189
    :cond_4c
    :goto_4c
    return-void

    .line 947
    :cond_4d
    if-eqz p1, :cond_559

    .line 948
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 950
    const/4 v2, 0x0

    .line 951
    const/4 v4, 0x0

    .line 952
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 953
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5c

    .line 955
    :cond_6c
    new-array v13, v3, [Ljava/lang/String;

    .line 956
    const/4 v2, 0x0

    .line 959
    new-instance v14, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 965
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v9, v4

    move v10, v2

    :cond_7e
    :goto_7e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 966
    new-instance v16, Landroid/preference/Preference;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 968
    const-string v2, "remove_duplicated_name_in_plmn_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 970
    :cond_a5
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v10

    .line 971
    const/4 v2, 0x0

    :goto_ac
    if-ge v2, v10, :cond_56a

    .line 972
    aget-object v3, v13, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 973
    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56a

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_db

    move v2, v9

    .line 984
    :goto_d3
    if-eqz v2, :cond_fd

    .line 985
    const/4 v2, 0x0

    .line 1013
    :goto_d6
    add-int/lit8 v3, v10, 0x1

    :goto_d8
    move v9, v2

    move v10, v3

    .line 1184
    goto :goto_7e

    .line 978
    :cond_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkSetting: Skipped!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 979
    const/4 v9, 0x1

    move v2, v9

    .line 980
    goto :goto_d3

    .line 971
    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    .line 987
    :cond_fd
    const-string v3, "usa_gsm_network_setting"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14f

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_115

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14f

    .line 990
    :cond_115
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 994
    :goto_11e
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_d6

    .line 992
    :cond_14f
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_11e

    .line 1015
    :cond_159
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_315

    .line 1017
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    .line 1018
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v3

    .line 1019
    const-string v4, "unknown"

    .line 1021
    const-string v4, "phone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside TAG_CSCFEATURE_RIL_DISPLAY_RATINFO_MANUALSEARCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Netowkr list] network_state_temp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1023
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_22b

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVAILABLE Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1025
    const v3, 0x7f0e0430

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 1034
    :cond_1cf
    :goto_1cf
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "50506"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27e

    .line 1035
    const-string v3, "phone"

    const-string v4, "[legna01] getOperatorNumeric is 50506   >> 3Telstra"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3Telstra("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1179
    :cond_200
    :goto_200
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string v2, "  "

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    move v2, v9

    move v3, v10

    goto/16 :goto_d8

    .line 1026
    :cond_22b
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_254

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1028
    const-string v3, "current network"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1cf

    .line 1029
    :cond_254
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_1cf

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORBIDDEN Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1031
    const v3, 0x7f0e042f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1cf

    .line 1037
    :cond_27e
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "50501"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b1

    .line 1038
    const-string v3, "phone"

    const-string v4, "[legna01] getOperatorNumeric is 50501   >> Telstra"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telstra("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_200

    .line 1041
    :cond_2b1
    const-string v3, "phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[legna01] getOperatorNumeric is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Netowkr list] ni.getOperatorAlphaLong() + actStr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_200

    .line 1047
    :cond_315
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ShowRatInNetworkList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3af

    .line 1048
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1049
    const-string v5, "Iusacell"

    .line 1050
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1051
    const-string v3, " (2G)"

    .line 1053
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_567

    .line 1059
    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v6, 0x0

    aget-byte v12, v4, v6

    .line 1061
    const/4 v4, 0x4

    if-ne v12, v4, :cond_564

    .line 1062
    const-string v3, " (3G)"

    move-object v11, v3

    .line 1064
    :goto_347
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35a

    .line 1066
    const/4 v3, 0x4

    if-ne v12, v3, :cond_3ac

    .line 1067
    const-string v11, " NextG"

    .line 1072
    :cond_35a
    :goto_35a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1074
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 1075
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_200

    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORBIDDEN Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1077
    const v2, 0x7f0e042f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_200

    .line 1069
    :cond_3ac
    const-string v11, " GSM"

    goto :goto_35a

    .line 1081
    :cond_3af
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_IgnoreWrongNITZInformation"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3fe

    .line 1082
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1083
    const-string v5, "Claro"

    .line 1084
    const-string v11, "TIM"

    .line 1085
    const-string v17, "COMCERL"

    .line 1086
    const-string v12, "TIGO"

    .line 1087
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d6

    move-object v2, v5

    .line 1090
    :cond_3d6
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    move-object v5, v11

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e6

    move-object v2, v11

    .line 1093
    :cond_3e6
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v5, v17

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f7

    move-object v2, v12

    .line 1096
    :cond_3f7
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_200

    .line 1098
    :cond_3fe
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47b

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 1100
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    .line 1101
    const-string v2, "Gtd_Telsur"

    .line 1102
    const-string v3, "Virgin"

    .line 1103
    const-string v4, "GTEL Netline"

    .line 1104
    const-string v6, "vtr"

    .line 1105
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 1106
    const-string v12, "gsm.sim.operator.numeric"

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1108
    if-eqz v11, :cond_561

    if-eqz v12, :cond_561

    .line 1110
    const-string v17, "73007"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_469

    const-string v17, "73002"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_469

    .line 1112
    if-eqz v7, :cond_561

    .line 1113
    const-string v6, "7300701"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_455

    .line 1132
    :goto_44e
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_200

    .line 1117
    :cond_455
    const-string v2, "7300702"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45f

    move-object v2, v3

    .line 1119
    goto :goto_44e

    .line 1121
    :cond_45f
    const-string v2, "7300703"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_561

    move-object v2, v4

    .line 1123
    goto :goto_44e

    .line 1127
    :cond_469
    const-string v2, "73008"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_561

    const-string v2, "73002"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_561

    move-object v2, v6

    .line 1129
    goto :goto_44e

    .line 1134
    :cond_47b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_RemoveDuplicatedNetDuringManualSearch"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c8

    .line 1135
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1136
    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1139
    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1142
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1143
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-string v2, "  "

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_200

    .line 1150
    :cond_4c8
    const-string v2, "dcm_show_separated_network_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54c

    .line 1154
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_530

    .line 1155
    const-string v2, "[LTE] "

    .line 1161
    :goto_4de
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1164
    const-string v2, "dcm_forbidden_network_show"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 1165
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_542

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORBIDDEN Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1167
    const v2, 0x7f0e042f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_200

    .line 1156
    :cond_530
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UMTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53f

    .line 1157
    const-string v2, "[3G] "

    goto :goto_4de

    .line 1159
    :cond_53f
    const-string v2, "[GSM] "

    goto :goto_4de

    .line 1169
    :cond_542
    const v2, 0x7f0e0430

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_200

    .line 1176
    :cond_54c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_200

    .line 1186
    :cond_559
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto/16 :goto_4c

    :cond_561
    move-object v2, v5

    goto/16 :goto_44e

    :cond_564
    move-object v11, v3

    goto/16 :goto_347

    :cond_567
    move-object v11, v3

    goto/16 :goto_35a

    :cond_56a
    move v2, v9

    goto/16 :goto_d3
.end method

.method private reScanManualSelection(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    .line 1657
    if-eqz p1, :cond_34

    .line 1658
    const-string v0, "search-type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    const-string v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search-type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1661
    new-instance v0, Lcom/android/phone/NetworkSetting$13;

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/NetworkSetting$13;-><init>(Lcom/android/phone/NetworkSetting;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting$13;->start()Landroid/os/CountDownTimer;

    .line 1685
    :cond_34
    return-void
.end method

.method private selectList()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1317
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1318
    const-string v0, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1320
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " selected network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1322
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1323
    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "GERAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1325
    :cond_57
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "2G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v2, "phone"

    const-string v3, "2G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_65
    :goto_65
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1343
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 1344
    if-eqz v0, :cond_7f

    .line 1345
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1346
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 1348
    :cond_7f
    return-void

    .line 1328
    :cond_80
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    const-string v2, "UMTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1330
    :cond_90
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "3G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v2, "phone"

    const-string v3, "3G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1333
    :cond_9f
    const-string v2, "4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1335
    :cond_af
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "4G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v2, "phone"

    const-string v3, "4G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method private selectNetworkAutomatic(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1371
    const-string v0, "select network automatically..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1375
    if-ne p1, v3, :cond_1f

    .line 1376
    :try_start_8
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_11

    .line 1377
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 1379
    :cond_11
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1388
    :goto_19
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1393
    :goto_1e
    return-void

    .line 1381
    :cond_1f
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_2c

    .line 1382
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    if-nez v0, :cond_2c

    .line 1383
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 1385
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_19

    .line 1389
    :catch_35
    move-exception v0

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...........exception occured when select network automatically, exception is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    goto :goto_1e
.end method

.method private setMobileDataEnabled(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 715
    const-string v1, "dcm_change_data_enable_func"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 724
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 725
    .local v0, state:I
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyManager.getDataState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-eqz p1, :cond_42

    .line 728
    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    .line 729
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 749
    .end local v0           #state:I
    :cond_41
    :goto_41
    return-void

    .line 731
    .restart local v0       #state:I
    :cond_42
    if-eqz v0, :cond_41

    .line 732
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    goto :goto_41

    .line 736
    .end local v0           #state:I
    :cond_4e
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_41

    .line 737
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_41
.end method

.method private setMode(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1480
    return-void
.end method

.method private final updateDataState()V
    .registers 11

    .prologue
    const/16 v9, 0xbb9

    const/16 v8, 0x7d0

    const/4 v7, 0x1

    const-wide/16 v5, 0x7d0

    const/4 v4, 0x0

    .line 1396
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1398
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NetworksList] current data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1400
    packed-switch v0, :pswitch_data_84

    .line 1430
    :cond_29
    :goto_29
    return-void

    .line 1402
    :pswitch_2a
    const-string v0, "phone"

    const-string v1, "[NetworksList] DATA DISCONNECTED !!!"

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1404
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2711

    if-ne v0, v1, :cond_56

    .line 1405
    const-string v0, "phone"

    const-string v1, "[NetworksList] searching ..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v0, "dcm_start_search_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1408
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1412
    :goto_4d
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_29

    .line 1410
    :cond_50
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4d

    .line 1414
    :cond_56
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2712

    if-ne v0, v1, :cond_66

    .line 1416
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1417
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_29

    .line 1418
    :cond_66
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2713

    if-ne v0, v1, :cond_29

    .line 1421
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1422
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1424
    :cond_79
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1425
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_29

    .line 1400
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

.method private updatePLMNmode()V
    .registers 2

    .prologue
    .line 509
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->onResume()V

    .line 512
    :cond_b
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    if-ne p1, v1, :cond_8

    .line 491
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 505
    :goto_7
    return-void

    .line 496
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_1a

    .line 500
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v1, :cond_16

    .line 501
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->enableMobileData()V

    .line 504
    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    goto :goto_7

    .line 497
    :catch_1a
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 500
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_21
    move-exception v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v2, :cond_29

    .line 501
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->enableMobileData()V

    :cond_29
    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 602
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 525
    const-string v0, "custom_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 529
    :try_start_d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 531
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.phone"

    const-string v2, "com.samsung.android.phone.NetworkOperators"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->startActivity(Landroid/content/Intent;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3e} :catch_3f

    .line 598
    :cond_3e
    :goto_3e
    return-void

    .line 539
    :catch_3f
    move-exception v0

    .line 544
    :cond_40
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    .line 546
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 547
    const-string v0, "phone2"

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 551
    :goto_58
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 553
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_67

    .line 556
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 559
    :cond_67
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 562
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 563
    const-string v0, "list_networks_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 565
    const-string v0, "button_srch_netwrks_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 566
    const-string v0, "button_auto_select_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 568
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    .line 569
    iput-object p0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    .line 570
    const-string v0, "usa_gsm_network_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 571
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkCspPlmn()V

    .line 572
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->createForUSAGSM()V

    .line 583
    :goto_ab
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/phone/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 587
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 588
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 590
    const-string v0, "network_manual_selection_when_bootup"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "network_manual_selection_when_bootup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 592
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "network_manual_selection_when_bootup"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    .line 594
    :cond_fd
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 595
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 596
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->reScanManualSelection(Landroid/os/Bundle;)V

    goto/16 :goto_3e

    .line 549
    :cond_112
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_58

    .line 574
    :cond_11e
    const-string v0, "button_default_setup_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    goto :goto_ab
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 788
    const/16 v1, 0x64

    if-eq p1, v1, :cond_12

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_12

    const/16 v1, 0x12c

    if-eq p1, v1, :cond_12

    const/16 v1, 0x190

    if-ne p1, v1, :cond_68

    .line 791
    :cond_12
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 793
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 794
    sparse-switch p1, :sswitch_data_6a

    .line 818
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 819
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 820
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 825
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_31
    return-object v0

    .line 801
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_32
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 802
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 803
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_31

    .line 806
    :sswitch_3e
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 807
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 808
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_31

    .line 811
    :sswitch_53
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 812
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 813
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_31

    .line 825
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_68
    const/4 v0, 0x0

    goto :goto_31

    .line 794
    :sswitch_data_6a
    .sparse-switch
        0x64 -> :sswitch_32
        0x12c -> :sswitch_3e
        0x190 -> :sswitch_53
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/16 v4, 0x1f4

    .line 672
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 673
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->backToAutoMode()V

    .line 678
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_12} :catch_41

    .line 684
    :goto_12
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 686
    const-string v1, "network_manual_selection_when_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 687
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    .line 688
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 689
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 692
    :cond_30
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 693
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPlmnReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 696
    :cond_3d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 697
    return-void

    .line 679
    :catch_41
    move-exception v0

    .line 682
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v1, "phone"

    const-string v2, "Service not registered"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_12
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 1454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1455
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 1456
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 1457
    const/4 v0, 0x1

    .line 1459
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 635
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 638
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    .line 641
    :cond_11
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v2, 0x1f4

    .line 456
    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2e

    .line 461
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 464
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkDataConnectionSearchButton()V

    .line 465
    const/4 v0, 0x1

    .line 479
    :cond_18
    :goto_18
    const-string v1, "network_manual_selection_when_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 481
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    :cond_2d
    return v0

    .line 466
    :cond_2e
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-ne p2, v1, :cond_37

    .line 467
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkDataConnectionAutoSelect()V

    .line 468
    const/4 v0, 0x1

    goto :goto_18

    .line 469
    :cond_37
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_48

    .line 470
    const/4 v0, 0x1

    .line 471
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 472
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    goto :goto_18

    .line 475
    :cond_48
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkDataConnectionSelectList()V

    .line 476
    const/4 v0, 0x1

    goto :goto_18
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 830
    const/16 v0, 0x64

    if-eq p1, v0, :cond_10

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_10

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_10

    const/16 v0, 0x190

    if-ne p1, v0, :cond_18

    .line 834
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 836
    :cond_18
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 606
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 607
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 609
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    .line 611
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    if-eqz v0, :cond_18

    .line 612
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkCspPlmn()V

    .line 615
    :cond_18
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_4c

    .line 616
    const-string v0, "phone"

    const-string v1, "onResume - Menu is disabled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_4c

    .line 618
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 619
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume - setToAutomaticMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultSetupLp setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 627
    const-string v0, "enabled"

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v2, "FAKE_PLMN_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 628
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 631
    :cond_65
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 645
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 647
    const-string v1, "networksearching_in_can"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 648
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_19

    .line 650
    :try_start_f
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_21

    .line 654
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 656
    :cond_19
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v1, :cond_20

    .line 657
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->enableMobileData()V

    .line 660
    :cond_20
    return-void

    .line 651
    :catch_21
    move-exception v0

    .line 652
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
