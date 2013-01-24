.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$MyHandler;
    }
.end annotation


# instance fields
.field private buttonPreferredNetworkMode:I

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

.field private mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworks:Landroid/preference/Preference;

.field private mButtonRoamingState:Landroid/preference/Preference;

.field private mButtonSignalStrength:Landroid/preference/Preference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataClicked:Z

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mDataWarningDialog:Landroid/app/AlertDialog$Builder;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

.field private objValuePreferredNetworkMode:Ljava/lang/String;

.field private settingsPreferredNetworkMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 173
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    .line 1147
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$14;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$14;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter

    .prologue
    const v1, 0x7f0e00b2

    .line 984
    packed-switch p1, :pswitch_data_c6

    .line 1059
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1062
    :goto_b
    return-void

    .line 986
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 990
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 994
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 998
    :pswitch_27
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 999
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00b4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1002
    :cond_38
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1007
    :pswitch_41
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_e4

    .line 1014
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00ab

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1009
    :pswitch_53
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1020
    :pswitch_5c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1024
    :pswitch_65
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1028
    :pswitch_6e
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00af

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1032
    :pswitch_77
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1036
    :pswitch_80
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 1040
    :pswitch_89
    const-string v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1041
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 1043
    :cond_98
    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1044
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00b5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 1046
    :cond_aa
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00ae

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 1051
    :pswitch_b4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 1055
    :pswitch_bb
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00b3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 984
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_41
        :pswitch_5c
        :pswitch_65
        :pswitch_b4
        :pswitch_80
        :pswitch_77
        :pswitch_89
        :pswitch_6e
        :pswitch_bb
    .end packed-switch

    .line 1007
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_53
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MobileNetworkSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/MobileNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/MobileNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/MobileNetworkSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/MobileNetworkSettings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->objValuePreferredNetworkMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MobileNetworkSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->buttonPreferredNetworkMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1098
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void
.end method

.method private onDisplayMobileDataOffAlert()V
    .registers 5

    .prologue
    .line 1304
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1306
    const v1, 0x7f040083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1309
    const v0, 0x7f0901f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1311
    new-instance v2, Lcom/android/phone/MobileNetworkSettings$15;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$15;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 1326
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e04e5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$17;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$17;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$16;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$16;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1347
    return-void
.end method

.method private setDataRoamingforATT()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1124
    const-string v0, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1129
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 1130
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 1133
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1144
    :goto_50
    return-void

    .line 1142
    :cond_51
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_50
.end method

.method private setMobileData(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileData() isPopupChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1290
    if-nez p1, :cond_29

    if-nez v0, :cond_29

    .line 1291
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->onDisplayMobileDataOffAlert()V

    .line 1295
    :goto_28
    return-void

    .line 1293
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    goto :goto_28
.end method

.method private setMobileDataEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1298
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1300
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1301
    return-void
.end method

.method private setPreferredNetworkMode(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1254
    .line 1256
    if-ltz p1, :cond_8

    const/16 v2, 0xc

    if-le p1, v2, :cond_46

    :cond_8
    move v2, v1

    .line 1264
    :goto_9
    if-nez v2, :cond_10

    const/16 v3, 0xb

    if-ne p2, v3, :cond_10

    .line 1281
    :goto_f
    return v0

    .line 1269
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 1270
    const-string v3, "kor_phone_via_chip"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1271
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1275
    :cond_2a
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1279
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v0}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    move v0, v1

    .line 1281
    goto :goto_f

    :cond_46
    move v2, p1

    goto :goto_9
.end method

.method private setSelectedDataRoamingMode(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 825
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    const-string v1, "gsm.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_national_roaming_mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 833
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 834
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 835
    if-nez p1, :cond_3e

    .line 836
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 847
    :cond_3d
    :goto_3d
    return-void

    .line 837
    :cond_3e
    if-ne p1, v5, :cond_52

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 839
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_3d

    .line 841
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_3d

    .line 844
    :cond_52
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_3d
.end method

.method private setSprintForceLTE()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1196
    .line 1199
    :try_start_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SprintForceLTE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_18

    move-result v0

    .line 1205
    :goto_c
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_17

    .line 1206
    if-ne v0, v3, :cond_22

    .line 1207
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1212
    :cond_17
    :goto_17
    return-void

    .line 1200
    :catch_18
    move-exception v0

    .line 1202
    const-string v0, "NetworkSettings"

    const-string v2, "SprintForceLTE - SettingNotFoundException"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_c

    .line 1209
    :cond_22
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_17
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1188
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1189
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e06d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1191
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1193
    :cond_1c
    return-void
.end method

.method private showGsmUmtsDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1178
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->globalGsmSystemSelectShowDialog()V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v2, :cond_30

    .line 1181
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    .line 1185
    :goto_2f
    return-void

    .line 1183
    :cond_30
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto :goto_2f
.end method


# virtual methods
.method checkAbsentSimStateAndDisplayToast()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1215
    const-string v1, "checkAbsentSimStateAndDisplayToast()"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_24

    .line 1217
    const-string v1, "no sim state"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1218
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e073a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1221
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1066
    packed-switch p1, :pswitch_data_1e

    .line 1081
    :cond_3
    :goto_3
    return-void

    .line 1068
    :pswitch_4
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_3

    .line 1066
    nop

    :pswitch_data_1e
    .packed-switch 0x11
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 187
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 189
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 194
    :goto_b
    return-void

    .line 192
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 338
    const-string v9, "custom_setting"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 343
    :try_start_b
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    const-string v9, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 345
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.android.phone"

    const-string v11, "com.android.phone.LGTGlobalAutoRoaming"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 559
    :goto_38
    return-void

    .line 352
    :cond_39
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.samsung.android.phone"

    const-string v11, "com.samsung.android.phone.MobileNetworkSettings"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_4e} :catch_4f

    goto :goto_38

    .line 357
    :catch_4f
    move-exception v9

    .line 362
    :cond_50
    const v9, 0x7f060026

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 364
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 365
    new-instance v9, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 368
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 369
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 370
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 372
    const-string v9, "button_data_enabled_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 373
    const-string v9, "button_roaming_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 374
    const-string v9, "feature_att"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 375
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0e00ba

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 376
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0e00ba

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 378
    :cond_9d
    const-string v9, "preferred_network_mode_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 380
    const-string v9, "button_data_usage_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 381
    const-string v9, "pref_roaming_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    .line 382
    const-string v9, "national_roaming_mode_menu"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c9

    const-string v9, "usa_spr_roaming_feature"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28e

    .line 384
    :cond_c9
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_d2

    .line 385
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_d2
    const-string v9, "usa_spr_roaming_feature"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f9

    .line 387
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 389
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_national_roaming_mode"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 392
    .local v6, settingsDataRoamingMode:I
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 399
    .end local v6           #settingsDataRoamingMode:I
    :cond_f9
    :goto_f9
    const-string v9, "usa_spr_roaming_feature"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10a

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_10a

    .line 400
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    :cond_10a
    const-string v9, "button_preferred_networks_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworks:Landroid/preference/Preference;

    .line 404
    const-string v9, "preferred_networks"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11f

    .line 405
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworks:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    :cond_11f
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_299

    const/4 v1, 0x1

    .line 409
    .local v1, isLteOnCdma:Z
    :goto_129
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_29c

    .line 412
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 423
    .local v7, settingsNetworkMode:I
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 424
    new-instance v9, Lcom/android/phone/CdmaOptions;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v9, p0, v5, v10}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 425
    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 506
    .end local v7           #settingsNetworkMode:I
    :cond_166
    :goto_166
    const-string v9, "throttle"

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ThrottleManager;

    .line 507
    .local v8, tm:Landroid/net/ThrottleManager;
    new-instance v9, Lcom/android/phone/DataUsageListener;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v9, p0, v10, v5}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 509
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 510
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_181

    .line 512
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 516
    :cond_181
    const-string v9, "feature_att"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_210

    .line 517
    const-string v9, "NetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIntent() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v10, "NetworkSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIntent().getExtras() = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_426

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    :goto_1c0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_210

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_210

    .line 520
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "enable_roaming"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 521
    .local v2, isRoaming:Z
    const-string v9, "NetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz v2, :cond_210

    .line 523
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_20d

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    :cond_20d
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataRoamingforATT()V

    .line 530
    .end local v2           #isRoaming:Z
    :cond_210
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 532
    const-string v9, "global_data_roaming_access_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/GlobalDataRoamingAccess;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    .line 533
    const-string v9, "roaming_state_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    .line 534
    const-string v9, "signal_strength"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    .line 536
    const-string v9, "global_data_roaming_access_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_429

    .line 537
    new-instance v9, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 538
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v10, 0xc8

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 539
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 540
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    :goto_258
    const-string v9, "sprint_connections_optimizer"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_269

    .line 548
    const-string v9, "connections_optimizer_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 550
    :cond_269
    const-string v9, "usa_spr_roaming_feature"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_274

    .line 551
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setSprintForceLTE()V

    .line 553
    :cond_274
    const-string v9, "sprint_mvno_mobile_network_feature"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_285

    .line 554
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-eqz v9, :cond_285

    .line 555
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_285
    const-string v9, "Settings"

    const-string v10, "Settings.onCreate()"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 395
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #isLteOnCdma:Z
    .end local v8           #tm:Landroid/net/ThrottleManager;
    :cond_28e
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_f9

    .line 396
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f9

    .line 408
    :cond_299
    const/4 v1, 0x0

    goto/16 :goto_129

    .line 427
    .restart local v1       #isLteOnCdma:Z
    :cond_29c
    if-nez v1, :cond_2a3

    .line 428
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_2a3
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 431
    .local v4, phoneType:I
    const/4 v9, 0x2

    if-eq v4, v9, :cond_2b4

    const-string v9, "global_network_cdma_gsm_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a2

    .line 432
    :cond_2b4
    const-string v9, "feature_ctc"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c1

    .line 433
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_2c1
    const-string v9, "usa_spr_roaming_feature"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d2

    .line 436
    new-instance v9, Lcom/android/phone/CdmaOptions;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v9, p0, v5, v10}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 438
    :cond_2d2
    if-eqz v1, :cond_166

    .line 439
    const-string v9, "apn_setting_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e4

    const-string v9, "global_network_cdma_gsm_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2eb

    .line 442
    :cond_2e4
    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 444
    :cond_2eb
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode_pst_vzw"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 446
    .local v3, mNetworkmode_enable:I
    const-string v9, "NetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Networkmode_enable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    const-string v9, "global_network_cdma_gsm_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_391

    .line 449
    const-string v9, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36c

    .line 450
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f08006a

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 452
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f08006b

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 471
    :goto_339
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 475
    .restart local v7       #settingsNetworkMode:I
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 478
    const-string v9, "feature_vzw"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_166

    if-nez v3, :cond_166

    .line 479
    const-string v9, "global_network_cdma_gsm_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_166

    .line 480
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_166

    .line 454
    .end local v7           #settingsNetworkMode:I
    :cond_36c
    const/4 v9, 0x1

    if-ne v3, v9, :cond_380

    .line 455
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f08006c

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 457
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f08006d

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_339

    .line 460
    :cond_380
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f08006e

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 462
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f08006f

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_339

    .line 466
    :cond_391
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f080068

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 468
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f080069

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_339

    .line 484
    .end local v3           #mNetworkmode_enable:I
    :cond_3a2
    const/4 v9, 0x1

    if-ne v4, v9, :cond_407

    .line 485
    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 486
    const-string v9, "button_prefer_2g_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    .line 487
    const-string v9, "button_prefer_networkmode_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/NetworkModePreference;

    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    .line 488
    const-string v9, "allow_select_network_mode"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3db

    .line 489
    const-string v9, "button_prefer_2g_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_166

    .line 490
    const-string v9, "button_prefer_2g_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_166

    .line 492
    :cond_3db
    const-string v9, "button_prefer_networkmode_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_3ec

    .line 493
    const-string v9, "button_prefer_networkmode_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_3ec
    const-string v9, "network_mode_disable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_166

    .line 496
    const-string v9, "button_prefer_2g_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_166

    .line 497
    const-string v9, "button_prefer_2g_key"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_166

    .line 501
    :cond_407
    const/4 v9, 0x1

    if-eq v4, v9, :cond_166

    const/4 v9, 0x2

    if-eq v4, v9, :cond_166

    .line 502
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 518
    .end local v4           #phoneType:I
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v8       #tm:Landroid/net/ThrottleManager;
    :cond_426
    const/4 v9, 0x0

    goto/16 :goto_1c0

    .line 542
    :cond_429
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_258
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 1084
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1090
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1094
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 1103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1104
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 1116
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 1117
    const/4 v0, 0x1

    .line 1119
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 663
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 664
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 665
    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 666
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 667
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 670
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 671
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x104000a

    const/high16 v6, 0x104

    const v5, 0x1010355

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_154

    move-object v0, p2

    .line 686
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 691
    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->buttonPreferredNetworkMode:I

    .line 692
    iput v1, p0, Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I

    .line 693
    const-string v2, "preferred_network_mode_reboot_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 694
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->objValuePreferredNetworkMode:Ljava/lang/String;

    .line 698
    :goto_39
    if-eq v0, v1, :cond_7a

    .line 699
    const-string v2, "preferred_network_mode_reboot_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    const/4 v2, 0x4

    if-eq v2, v0, :cond_4a

    const/16 v2, 0x8

    if-ne v2, v0, :cond_93

    .line 701
    :cond_4a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e071e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$7;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$6;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$6;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 728
    :cond_7a
    const-string v1, "system_selection_automatic_ab_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v1, 0x4

    if-ne v1, v0, :cond_9a

    .line 729
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaOptions;->cdmaSystemSelectShowDialog()V

    .line 821
    :cond_8a
    :goto_8a
    return v4

    .line 696
    :cond_8b
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_39

    .line 724
    :cond_93
    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_8a

    .line 730
    :cond_9a
    const-string v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 731
    const/4 v1, 0x3

    if-ne v1, v0, :cond_e9

    .line 732
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 733
    const-string v0, "NetworkSettings"

    const-string v1, "displayed gsm network change popup"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 734
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0739

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$9;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$9;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$8;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$8;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_8a

    .line 753
    :cond_e5
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    goto :goto_8a

    .line 755
    :cond_e9
    const/16 v1, 0xa

    if-ne v1, v0, :cond_106

    .line 756
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 757
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 758
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v3}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto :goto_8a

    .line 761
    :cond_106
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 762
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 763
    const-string v0, "NetworkSettings"

    const-string v1, "displayed cdma network change popup"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 764
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0738

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$11;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$11;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$10;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$10;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_8a

    .line 784
    :cond_14d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v3}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto/16 :goto_8a

    .line 788
    :cond_154
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_8a

    .line 789
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 793
    const-string v1, "data_roaming_option_national"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17f

    const-string v1, "data_roaming_option_all"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17f

    if-eq v0, v4, :cond_18a

    :cond_17f
    const-string v1, "data_roaming_option_all"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c0

    .line 796
    :cond_18a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 797
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e04e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e04e5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$13;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/MobileNetworkSettings$13;-><init>(Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$12;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$12;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_8a

    .line 816
    :cond_1c0
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V

    goto/16 :goto_8a
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v7, 0x7f0e04e7

    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v1, :cond_17

    .line 330
    :cond_16
    :goto_16
    return v1

    .line 212
    :cond_17
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v1, :cond_3f

    .line 214
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 217
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 220
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16

    .line 225
    :cond_3f
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_53

    .line 231
    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 232
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isResetGlobalPopupTimer()V

    goto :goto_16

    .line 235
    :cond_53
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b2

    .line 237
    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 238
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataRoamingforATT()V

    goto :goto_16

    .line 240
    :cond_63
    const-string v3, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 245
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 246
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_16

    .line 255
    :cond_ab
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_16

    .line 260
    :cond_b2
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_168

    .line 261
    const-string v3, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 264
    const-string v3, "display_mobiledata_off_alert"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 265
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->setMobileData(Z)V

    goto/16 :goto_16

    .line 266
    :cond_ce
    const-string v3, "disable_mobile_data_popup"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 267
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_121

    .line 268
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    .line 269
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 273
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$4;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$3;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$2;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_16

    .line 296
    :cond_121
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$5;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$5;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_16

    .line 311
    :cond_155
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 312
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_16

    .line 315
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_168
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eq p2, v3, :cond_16

    .line 317
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eq p2, v3, :cond_16

    .line 319
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-eq p2, v3, :cond_16

    .line 321
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-ne p2, v3, :cond_17d

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    goto/16 :goto_16

    .line 328
    :cond_17d
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v1, v2

    .line 330
    goto/16 :goto_16
.end method

.method protected onResume()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 563
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 567
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 569
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 571
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_22

    .line 572
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    :cond_22
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_31

    .line 579
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    :cond_31
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 586
    .local v2, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_90

    .line 587
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_53

    .line 588
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 589
    const-string v5, "MDM-Roaming-policy"

    const-string v8, "setEnabled"

    invoke-static {v5, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_53
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eqz v5, :cond_6b

    .line 593
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/phone/GlobalDataRoamingAccess;->setEnabled(Z)V

    .line 594
    const-string v5, "MDM-Roaming-policy"

    const-string v8, "global data setEnabled"

    invoke-static {v5, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_6b
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_90

    .line 598
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_156

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v5

    if-eqz v5, :cond_156

    move v5, v6

    :goto_86
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 600
    const-string v5, "MDM-Roaming-policy"

    const-string v8, "setEnabled"

    invoke-static {v5, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_90
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "preferred_network_mode_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_a7

    .line 608
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v8, v7}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 611
    :cond_a7
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v5}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 613
    const-string v5, "allow_select_network_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v5, :cond_bd

    .line 614
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v5}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    .line 616
    :cond_bd
    const-string v5, "global_data_roaming_access_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 617
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 618
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->roamingState(Landroid/telephony/ServiceState;)V

    .line 619
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 620
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    .line 623
    :cond_e4
    const-string v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 624
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "preferred_network_mode"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 628
    .local v4, settingsNetworkMode:I
    if-ne v10, v4, :cond_159

    .line 629
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v5, v6}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    .line 635
    .end local v4           #settingsNetworkMode:I
    :cond_103
    :goto_103
    const-string v5, "usa_spr_roaming_feature"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 636
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setSprintForceLTE()V

    .line 638
    :cond_10e
    const-string v5, "sprint_connections_optimizer"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 640
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.birdstep.android.cm"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 641
    .local v1, enabledState:I
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 642
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    if-eq v1, v10, :cond_129

    const/4 v5, 0x2

    if-ne v1, v5, :cond_15f

    .line 644
    :cond_129
    const-string v5, "connections_optimizer_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 645
    const-string v5, "Settings"

    const-string v7, "CO Optimizer disabled!"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v1           #enabledState:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :goto_139
    const-string v5, "Settings"

    const-string v7, "Settings.onResume()"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mobile_data"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 659
    return-void

    :cond_156
    move v5, v7

    .line 598
    goto/16 :goto_86

    .line 631
    .restart local v4       #settingsNetworkMode:I
    :cond_159
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v5, v7}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto :goto_103

    .line 647
    .end local v4           #settingsNetworkMode:I
    .restart local v1       #enabledState:I
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_15f
    const-string v5, "connections_optimizer_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 648
    const-string v5, "Settings"

    const-string v7, "CO Optimizer enabled!"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 651
    .end local v1           #enabledState:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_170
    const-string v5, "Settings"

    const-string v7, "Settings.onResume() has no CO Optimizer!"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139
.end method

.method roamingState(Landroid/telephony/ServiceState;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1159
    .line 1161
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    .line 1163
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1167
    if-nez v0, :cond_26

    if-nez v0, :cond_26

    .line 1168
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e06cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :goto_25
    return-void

    .line 1169
    :cond_26
    if-ne v2, v0, :cond_39

    if-nez v0, :cond_39

    .line 1170
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e06cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 1171
    :cond_39
    if-nez v0, :cond_4c

    if-ne v2, v0, :cond_4c

    .line 1172
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e06ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 1174
    :cond_4c
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e06cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method updateSignalStrength()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1229
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-eqz v0, :cond_78

    .line 1230
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1231
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1233
    const/4 v2, 0x1

    if-eq v2, v0, :cond_1a

    const/4 v2, 0x3

    if-ne v2, v0, :cond_21

    .line 1235
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1238
    :cond_21
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 1239
    if-ne v4, v0, :cond_2a

    move v0, v1

    .line 1242
    :cond_2a
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 1243
    if-ne v4, v2, :cond_79

    .line 1246
    :goto_32
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0e06d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e06d5

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1251
    :cond_78
    return-void

    :cond_79
    move v1, v2

    goto :goto_32
.end method
