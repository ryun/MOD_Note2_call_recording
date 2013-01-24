.class public Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;
.super Landroid/preference/ListPreference;
.source "GlobalGsmUmtsSystemSelectListPreference.java"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v1, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference$1;-><init>(Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;)V

    iput-object v1, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 63
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 66
    iget-object v1, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "global_gsm_umts_set_value"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, mGlobalval:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    .end local v0           #mGlobalval:I
    :cond_3e
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 123
    const-string v0, "GlobalGsmUmtsSystemSelectListPreference"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 127
    const-string v0, "GlobalGsmUmtsSystemSelectListPreference"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 128
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 8
    .parameter "positiveResult"

    .prologue
    const v5, 0x7f0e073a

    const/4 v4, 0x1

    .line 87
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 89
    if-nez p1, :cond_a

    .line 120
    :goto_9
    return-void

    .line 92
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    .local v0, buttonSystemSelectMode:I
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "global_gsm_umts_set_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    packed-switch v0, :pswitch_data_bc

    .line 119
    :goto_28
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isResetGlobalPopupTimer()V

    goto :goto_9

    .line 97
    :pswitch_30
    const-string v2, "choose SYSYEM_SELECTION_AUTOMATIC"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;Z)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v4, :cond_6c

    .line 100
    const-string v2, "no sim state"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;Z)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_28

    .line 104
    :cond_6c
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_28

    .line 107
    :pswitch_7e
    const-string v2, "choose SYSYEM_SELECTION_MANUAL"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;Z)V

    .line 108
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v4, :cond_9e

    .line 109
    const-string v2, "no sim state"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;Z)V

    .line 110
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_28

    .line 113
    :cond_9e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, networkSettingIntent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 95
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_30
        :pswitch_7e
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 77
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    :goto_c
    return-void

    .line 81
    :cond_d
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_c
.end method
