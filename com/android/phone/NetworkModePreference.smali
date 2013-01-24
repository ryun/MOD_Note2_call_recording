.class public Lcom/android/phone/NetworkModePreference;
.super Landroid/preference/ListPreference;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkModePreference$MyHandler;
    }
.end annotation


# instance fields
.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mFailDialog:Landroid/app/AlertDialog;

.field private mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

.field private mIsDisconnectingData:Z

.field private mNetworkType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NetworkModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7f080015

    const v2, 0x7f080014

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    .line 49
    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 56
    new-instance v1, Lcom/android/phone/NetworkModePreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$1;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 237
    new-instance v1, Lcom/android/phone/NetworkModePreference$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$2;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 259
    new-instance v1, Lcom/android/phone/NetworkModePreference$3;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$3;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 86
    :goto_35
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    .line 88
    const-string v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 89
    const-string v1, "remove_network_mode_gsm_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 90
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 91
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    .line 130
    :goto_53
    new-instance v1, Lcom/android/phone/NetworkModePreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    .line 132
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 133
    .local v0, phoneType:I
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 134
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18d

    if-ne v0, v4, :cond_18d

    .line 135
    const-string v1, "NetworkModePreference"

    const-string v2, "get TELEPHONY_SERVICE_2"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 140
    :goto_9a
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 142
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 143
    return-void

    .line 84
    .end local v0           #phoneType:I
    :cond_b0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_35

    .line 92
    :cond_b8
    const-string v1, "remove_network_mode_wcdma_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 93
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 94
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_53

    .line 95
    :cond_cd
    const-string v1, "remove_network_mode_lte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 98
    :cond_dd
    const-string v1, "cust_network_sel_menu4_orange"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 99
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 100
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 101
    :cond_f3
    const-string v1, "cust_network_sel_menu4_vodafone"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 102
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 103
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 104
    :cond_109
    const-string v1, "cust_network_sel_menu4_addauto"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 105
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 106
    const v1, 0x7f080029

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 108
    :cond_11f
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 109
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 111
    :cond_12d
    const-string v1, "network_mode_list_dcm_lte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 112
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 113
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 115
    :cond_143
    const-string v1, "remove_network_mode_gsm_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 116
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 117
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 118
    :cond_159
    const-string v1, "remove_network_mode_wcdma_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 119
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 120
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 121
    :cond_16f
    const-string v1, "cust_network_sel_menu4_vodafone"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 122
    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 123
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 125
    :cond_185
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_53

    .line 138
    .restart local v0       #phoneType:I
    :cond_18d
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_9a
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkModePreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/NetworkModePreference;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkModePreference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkModePreference;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkModePreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/NetworkModePreference;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return p1
.end method

.method private changeNetworkType()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 246
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    .line 249
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 251
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    :cond_38
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 257
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 154
    const-string v1, "dcm_change_data_enable_func"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 163
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 164
    .local v0, state:I
    const-string v1, "NetworkModePreference"

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

    .line 166
    if-eqz p1, :cond_42

    .line 167
    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    .line 168
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 188
    .end local v0           #state:I
    :cond_41
    :goto_41
    return-void

    .line 170
    .restart local v0       #state:I
    :cond_42
    if-eqz v0, :cond_41

    .line 171
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    goto :goto_41

    .line 175
    .end local v0           #state:I
    :cond_4e
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_41

    .line 176
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_41
.end method


# virtual methods
.method public getPreferredNetworkType()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 10
    .parameter "positiveResult"

    .prologue
    const v7, 0x7f0e02cc

    const v6, 0x7f0e02c7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 198
    if-eqz p1, :cond_19

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1a

    .line 235
    :cond_19
    :goto_19
    return-void

    .line 202
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 209
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 211
    .local v0, state:I
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 213
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_94

    .line 215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e042e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_19

    .line 222
    :cond_94
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_e6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a1

    if-ne v0, v5, :cond_e6

    .line 226
    :cond_a1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e011d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_19

    .line 233
    :cond_e6
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto/16 :goto_19
.end method
