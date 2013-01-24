.class public Lcom/android/phone/LGTNetworkSelectMode;
.super Landroid/preference/PreferenceActivity;
.source "LGTNetworkSelectMode.java"


# static fields
.field private static mSelect:I


# instance fields
.field private auto_select:Landroid/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mManualMode:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private manual_select:Landroid/preference/CheckBoxPreference;

.field private msg2:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->msg2:Landroid/os/Message;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z

    .line 50
    new-instance v0, Lcom/android/phone/LGTNetworkSelectMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkSelectMode$1;-><init>(Lcom/android/phone/LGTNetworkSelectMode;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTNetworkSelectMode;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTNetworkSelectMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMode;->updateScreen()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/LGTNetworkSelectMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z

    return p1
.end method

.method private checkAuto(Z)V
    .registers 5
    .parameter "setAuto"

    .prologue
    .line 171
    const-string v0, "LGTNetworkSelectMode"

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

    .line 172
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_26

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    return-void

    .line 173
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private final isNotRegisteredOnNetwork()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 274
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "isNotRegisteredOnNetwork() -------- start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v3, "ril.skt.network_regist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, rilTemp:Ljava/lang/String;
    const-string v3, "LGTNetworkSelectMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotRegisteredOnNetwork() - rilTemp.length() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_57

    .line 278
    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, ril:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4e

    .line 281
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "isNotRegisteredOnNetwork() - compare routine  return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0           #ril:Ljava/lang/String;
    :goto_4d
    return v2

    .line 284
    .restart local v0       #ril:Ljava/lang/String;
    :cond_4e
    const-string v2, "LGTNetworkSelectMode"

    const-string v3, "isNotRegisteredOnNetwork() - compare routine  return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v2, 0x0

    goto :goto_4d

    .line 288
    .end local v0           #ril:Ljava/lang/String;
    :cond_57
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "isNotRegisteredOnNetwork() -------- end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private networkSelectDialog()V
    .registers 4

    .prologue
    .line 195
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "networkSelectDialog() --------- start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, networkSelectDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 198
    const v1, 0x7f0e05d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 199
    const v1, 0x7f0e05d6

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMode$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMode$2;-><init>(Lcom/android/phone/LGTNetworkSelectMode;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    const v1, 0x7f0e05c0

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMode$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMode$3;-><init>(Lcom/android/phone/LGTNetworkSelectMode;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 216
    return-void
.end method

.method private updateScreen()V
    .registers 14

    .prologue
    const v12, 0x7f0e05d1

    const v11, 0x7f0e05cf

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 218
    const-string v3, "LGTNetworkSelectMode"

    const-string v6, "updateScreen() -------- start"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-boolean v5, p0, Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z

    .line 220
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 221
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 222
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x0

    .line 224
    .local v0, cOperatorName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 225
    .local v1, cOperatorSummary:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMode;->isNotRegisteredOnNetwork()Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ae

    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSelectMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e05d7

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cOperatorName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_ae
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_ee

    move v3, v4

    :goto_bb
    sput v3, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    .line 236
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSelect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget v3, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    packed-switch v3, :pswitch_data_142

    .line 267
    const-string v3, "LGTNetworkSelectMode"

    const-string v5, "updateScreen() - mSelect - DEFAULT"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMode;->checkAuto(Z)V

    .line 271
    :goto_e6
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() -------- end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    :cond_ee
    move v3, v5

    .line 235
    goto :goto_bb

    .line 239
    :pswitch_f0
    const-string v3, "LGTNetworkSelectMode"

    const-string v5, "updateScreen() - mSelect - AUTO"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMode;->checkAuto(Z)V

    .line 241
    if-eqz v1, :cond_10e

    .line 243
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() - mSelect - AUTO - cOperatorSummary is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_e6

    .line 248
    :cond_10e
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 249
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_e6

    .line 253
    :pswitch_119
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() - mSelect - MANUAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, v5}, Lcom/android/phone/LGTNetworkSelectMode;->checkAuto(Z)V

    .line 255
    if-eqz v1, :cond_137

    .line 257
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() - mSelect - MANUAL - cOperatorSummary is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_e6

    .line 262
    :cond_137
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 263
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_e6

    .line 237
    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_119
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "onCreate() ---------- start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMode;->addPreferencesFromResource(I)V

    .line 94
    const-string v0, "auto_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v0, "manual_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    .line 96
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v0, :cond_3f

    .line 100
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    .line 101
    :cond_3f
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "onCreate() ---------- end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 177
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "onCreateDialog() --------- start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, dialog:Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_2e

    .line 191
    :goto_f
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "onCreateDialog() --------- end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-object v0

    .line 186
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSelectMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_f

    .line 179
    :pswitch_data_2e
    .packed-switch 0x64
        :pswitch_17
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 160
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "onPause()....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "LGTNetworkSelectMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() --- auto_select.isChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "LGTNetworkSelectMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() --- manual_select.isChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 164
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 118
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "onPreferenceTreeClick() --- auto_select click"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v3, "LGTNetworkSelectMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick() --- auto_select click  isChecked() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 121
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    :goto_3c
    const-string v2, "LGTNetworkSelectMode"

    const-string v3, "click Auto Select Mode ------- start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, msg:Landroid/os/Message;
    const-string v2, "LGTNetworkSelectMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/phone/LGTNetworkSelectMode;->showDialog(I)V

    .line 129
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 130
    const-string v2, "LGTNetworkSelectMode"

    const-string v3, "click Auto Select Mode ------- end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0           #msg:Landroid/os/Message;
    :goto_80
    return v1

    .line 123
    :cond_81
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3c

    .line 132
    :cond_87
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 133
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "onPreferenceTreeClick() --- manual_select click"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v3, "LGTNetworkSelectMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick() --- manual_select click  isChecked() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 136
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    :goto_c1
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMode;->networkSelectDialog()V

    goto :goto_80

    .line 138
    :cond_c5
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_c1

    .line 143
    :cond_cb
    const-string v1, "LGTNetworkSelectMode"

    const-string v3, "onPreferenceTreeClick() --- else"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 144
    goto :goto_80
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 149
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "onResume()....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v1, "LGTNetworkSelectMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() --- auto_select.isChecked() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "LGTNetworkSelectMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() --- manual_select.isChecked() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 153
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 154
    .local v0, state:I
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 168
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "[LGTNetworkSelectMode] onStop..............."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method
