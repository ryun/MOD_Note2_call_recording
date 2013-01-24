.class public Lcom/android/phone/DataRoamingGuard;
.super Landroid/app/Activity;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DataRoamingGuard$RoamHandler;
    }
.end annotation


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingSettingsExtra:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoamHandler:Lcom/android/phone/DataRoamingGuard$RoamHandler;

.field private mRoamListener:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-instance v0, Lcom/android/phone/DataRoamingGuard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$1;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 107
    new-instance v0, Lcom/android/phone/DataRoamingGuard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$2;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/android/phone/DataRoamingGuard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$3;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    .line 219
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DataRoamingGuard;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DataRoamingGuard;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/DataRoamingGuard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/DataRoamingGuard;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private setCdmaRoaming()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 241
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 242
    .local v0, domesticRoamCall:Z
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 246
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_37

    if-nez v1, :cond_37

    .line 247
    const/4 v2, 0x5

    .line 256
    .local v2, statusCdmaRoamingMode:I
    :goto_12
    const-string v3, "DataRoamingGuard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/DataRoamingGuard$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/DataRoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 258
    return-void

    .line 248
    .end local v2           #statusCdmaRoamingMode:I
    :cond_37
    if-nez v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 249
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12

    .line 250
    .end local v2           #statusCdmaRoamingMode:I
    :cond_3d
    if-eqz v0, :cond_43

    if-eqz v1, :cond_43

    .line 251
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12

    .line 253
    .end local v2           #statusCdmaRoamingMode:I
    :cond_43
    const/16 v2, 0x8

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12
.end method

.method private setSecureRoamGuardDataValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 178
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "domestic_data_roaming_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 179
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 188
    :cond_13
    :goto_13
    return-void

    .line 180
    :cond_14
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "international_data_roaming_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 181
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13

    .line 183
    :cond_24
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 184
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13

    .line 185
    :cond_30
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 186
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13
.end method

.method private setSecureRoamSettingCallValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 193
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "domestic_data_roaming_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 194
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 203
    :cond_13
    :goto_13
    return-void

    .line 195
    :cond_14
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "international_data_roaming_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 196
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13

    .line 198
    :cond_24
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 199
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13

    .line 200
    :cond_30
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 201
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13
.end method

.method private setSecureRoamSettingDataValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 164
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "domestic_data_roaming_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 165
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 174
    :cond_13
    :goto_13
    return-void

    .line 166
    :cond_14
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "international_data_roaming_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    const-string v0, "roam_setting_data_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13

    .line 169
    :cond_24
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 170
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13

    .line 171
    :cond_30
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 172
    const-string v0, "roam_setting_data_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_13
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f04001e

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->setContentView(I)V

    .line 69
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/PhoneApp;->setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    const-string v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 73
    new-instance v2, Lcom/android/phone/DataRoamingGuard$RoamHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/DataRoamingGuard;Lcom/android/phone/DataRoamingGuard$1;)V

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/DataRoamingGuard$RoamHandler;

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingGuard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_roaming_settings_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingGuard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_roaming_settings_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    .line 78
    :cond_3e
    const v2, 0x7f090098

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 79
    .local v1, mRoamButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, mCancelButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_7e

    const-string v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 87
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 88
    :cond_7e
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_f

    .line 94
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    :cond_f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 149
    packed-switch p1, :pswitch_data_1c

    .line 159
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 151
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    .line 152
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 153
    invoke-direct {p0, v1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    .line 154
    invoke-direct {p0}, Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V

    .line 156
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingGuard;->finish()V

    goto :goto_4

    .line 149
    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method
