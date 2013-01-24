.class public Lcom/android/phone/BootupListener;
.super Landroid/content/BroadcastReceiver;
.source "BootupListener.java"


# instance fields
.field private final FACTORYMODE_KEY:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const-string v0, "999999999999999"

    iput-object v0, p0, Lcom/android/phone/BootupListener;->FACTORYMODE_KEY:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/android/phone/BootupListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BootupListener$1;-><init>(Lcom/android/phone/BootupListener;)V

    iput-object v0, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 3
    .parameter "tm"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, iccid:Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 143
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_7
    return-object v0
.end method

.method private getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 4
    .parameter "sp"

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_9

    .line 135
    const-string v1, "sim_iccid"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_9
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x1000

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 54
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v4, "ril.FS"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string v5, "bootup_data_connection_popup"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, "bootup_data_tariff_rate_popup"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    :cond_2a
    const-string v5, "999999999999999"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3a

    const-string v1, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_82

    :cond_3a
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 63
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v3, :cond_82

    .line 65
    const-string v1, "pref_first_Time_boot"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 68
    invoke-direct {p0, v1}, Lcom/android/phone/BootupListener;->getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-direct {p0, v0}, Lcom/android/phone/BootupListener;->getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    .line 73
    if-eqz v1, :cond_68

    if-eqz v5, :cond_130

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    :cond_68
    move v1, v3

    .line 79
    :goto_69
    if-eqz v1, :cond_82

    if-eqz v5, :cond_82

    .line 80
    const-string v1, "sim_iccid"

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    :cond_82
    const-string v1, "network_manual_selection_when_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 91
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 94
    const-string v1, "BootupListener"

    const-string v4, "IsManualSelection : start network setting."

    invoke-static {v1, v4, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 95
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/phone/NetworkSetting;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    const-string v4, "network_manual_selection_when_bootup"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 103
    :cond_c1
    const-string v1, "set_network_mode_when_no_sim_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 104
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_10a

    .line 105
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10b

    .line 106
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 120
    :cond_10a
    :goto_10a
    return-void

    .line 112
    :cond_10b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_10a

    :cond_130
    move v1, v2

    goto/16 :goto_69
.end method
