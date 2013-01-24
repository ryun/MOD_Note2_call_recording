.class public Lcom/android/phone/LGTServiceProvider;
.super Landroid/preference/PreferenceActivity;
.source "LGTServiceProvider.java"


# static fields
.field private static final DBG:Z

.field private static mSelect:I


# instance fields
.field private mAutoSelect:Landroid/preference/CheckBoxPreference;

.field private mCard:Lcom/android/internal/telephony/IccCard;

.field private mEfRoaming:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingSponsor:Ljava/lang/String;

.field private mSearchButton:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_a
    sput-boolean v0, Lcom/android/phone/LGTServiceProvider;->DBG:Z

    .line 90
    sput v1, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    return-void

    :cond_f
    move v0, v1

    .line 64
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    .line 367
    new-instance v0, Lcom/android/phone/LGTServiceProvider$3;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTServiceProvider$3;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTServiceProvider;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTServiceProvider;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTServiceProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->updateScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTServiceProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->reboot()V

    return-void
.end method

.method private checkAuto(Z)V
    .registers 4
    .parameter "setAuto"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 253
    return-void

    .line 252
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getAutoTitle()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 206
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProvider;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 207
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 208
    .local v1, result:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    .line 209
    .local v5, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_8d

    .line 210
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v5

    .line 217
    :goto_16
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, imsi:Ljava/lang/String;
    aget-object v2, v5, v8

    .line 219
    .local v2, spon1:Ljava/lang/String;
    aget-object v3, v5, v9

    .line 220
    .local v3, spon2:Ljava/lang/String;
    aget-object v4, v5, v10

    .line 221
    .local v4, spon3:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/LGTServiceProvider;->DBG:Z

    if-eqz v7, :cond_5a

    const-string v7, "LGTServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_5a
    if-eqz v0, :cond_66

    const-string v7, "45006"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 223
    const-string v1, "LG U+"

    .line 225
    :cond_66
    if-eqz v2, :cond_9b

    const-string v7, "imsi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 226
    invoke-direct {p0, v2}, Lcom/android/phone/LGTServiceProvider;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_74
    :goto_74
    const-string v7, "LGTServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v1

    .line 212
    .end local v0           #imsi:Ljava/lang/String;
    .end local v2           #spon1:Ljava/lang/String;
    .end local v3           #spon2:Ljava/lang/String;
    .end local v4           #spon3:Ljava/lang/String;
    :cond_8d
    const-string v7, ""

    aput-object v7, v5, v8

    .line 213
    const-string v7, ""

    aput-object v7, v5, v9

    .line 214
    const-string v7, ""

    aput-object v7, v5, v10

    goto/16 :goto_16

    .line 227
    .restart local v0       #imsi:Ljava/lang/String;
    .restart local v2       #spon1:Ljava/lang/String;
    .restart local v3       #spon2:Ljava/lang/String;
    .restart local v4       #spon3:Ljava/lang/String;
    :cond_9b
    if-eqz v3, :cond_aa

    const-string v7, "imsi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 228
    invoke-direct {p0, v3}, Lcom/android/phone/LGTServiceProvider;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_74

    .line 229
    :cond_aa
    if-eqz v4, :cond_74

    const-string v7, "imsi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 230
    invoke-direct {p0, v4}, Lcom/android/phone/LGTServiceProvider;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_74
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 398
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v1, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 400
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    move-result-object p1

    move-object v2, p1

    .line 405
    .end local v1           #str1:Ljava/util/StringTokenizer;
    :goto_f
    return-object v2

    .line 401
    :catch_10
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_f
.end method

.method private reboot()V
    .registers 5

    .prologue
    .line 410
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 411
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTServiceProvider$4;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTServiceProvider$4;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    return-void
.end method

.method private updateScreen()V
    .registers 14

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 119
    const-string v8, "gsm.sim.roaming"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, efRoaming:Ljava/lang/String;
    const-string v7, ""

    .line 121
    .local v7, title:Ljava/lang/String;
    const-string v5, ""

    .line 122
    .local v5, summary:Ljava/lang/String;
    const-string v8, "00"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    move v8, v9

    :goto_16
    sput v8, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0e05c9

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0e05ca

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    .line 126
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 127
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/String;

    .line 128
    .local v3, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_4e

    .line 129
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 136
    :goto_43
    sget v8, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    packed-switch v8, :pswitch_data_1c0

    .line 199
    invoke-direct {p0, v10}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 203
    :goto_4b
    return-void

    .end local v3           #sponIMSI:[Ljava/lang/String;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4c
    move v8, v10

    .line 122
    goto :goto_16

    .line 131
    .restart local v3       #sponIMSI:[Ljava/lang/String;
    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4e
    const-string v8, ""

    aput-object v8, v3, v9

    .line 132
    const-string v8, ""

    aput-object v8, v3, v10

    .line 133
    const-string v8, ""

    aput-object v8, v3, v12

    goto :goto_43

    .line 138
    :pswitch_5b
    invoke-direct {p0, v10}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 139
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->getAutoTitle()Ljava/lang/String;

    move-result-object v7

    .line 140
    move-object v5, v7

    .line 141
    const-string v8, "LG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    :goto_7e
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Final AUTO title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4b

    .line 144
    :cond_a9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7e

    .line 155
    :pswitch_bd
    invoke-direct {p0, v9}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 158
    const-string v8, "10"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_120

    .line 159
    const-string v7, "01;LG U+"

    .line 180
    :goto_ca
    :try_start_ca
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v8, ";"

    invoke-direct {v4, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v4, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 182
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d7} :catch_190

    move-result-object v7

    .line 186
    .end local v4           #str1:Ljava/util/StringTokenizer;
    :goto_d8
    move-object v5, v7

    .line 187
    const-string v8, "LG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ab

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    :goto_f4
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Final title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4b

    .line 160
    :cond_120
    const-string v8, "11"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12b

    .line 161
    aget-object v7, v3, v9

    goto :goto_ca

    .line 162
    :cond_12b
    const-string v8, "12"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_136

    .line 163
    aget-object v7, v3, v10

    goto :goto_ca

    .line 164
    :cond_136
    const-string v8, "13"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 165
    aget-object v7, v3, v12

    goto :goto_ca

    .line 167
    :cond_141
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnKnown case efRoaming = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, imsi:Ljava/lang/String;
    if-eqz v2, :cond_17c

    const-string v8, "45006"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17c

    .line 170
    const-string v5, "LG U+"

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 174
    :cond_17c
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4b

    .line 183
    .end local v2           #imsi:Ljava/lang/String;
    :catch_190
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1ab
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_f4

    .line 136
    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_bd
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const-string v2, "gsm.sim.roaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, efRoaming:Ljava/lang/String;
    if-eqz v0, :cond_63

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 100
    .local v1, isSetEfRoaming:Ljava/lang/Boolean;
    const-string v2, "LGTServiceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "efRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSetEfRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v2, 0x7f060031

    invoke-virtual {p0, v2}, Lcom/android/phone/LGTServiceProvider;->addPreferencesFromResource(I)V

    .line 104
    const-string v2, "button_srch_provider_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v2, "button_auto_select_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/LGTServiceProvider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 107
    iget-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mCard:Lcom/android/internal/telephony/IccCard;

    .line 108
    return-void

    .line 99
    .end local v1           #isSetEfRoaming:Ljava/lang/Boolean;
    :cond_63
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_1a

    .line 364
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 355
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 353
    nop

    :pswitch_data_1a
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x64

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 264
    const-string v0, "ril.initPB"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "LGTServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.initPB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 267
    const v0, 0x7f0e05f3

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    :cond_34
    :goto_34
    return v7

    .line 271
    :cond_35
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 272
    sput v7, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    .line 274
    invoke-direct {p0, v4}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 277
    new-array v1, v4, [B

    .line 278
    aput-byte v7, v1, v7

    .line 279
    const-string v2, "00"

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;

    .line 284
    :try_start_50
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_7b} :catch_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_7b} :catch_d6
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_7b} :catch_d4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_7b} :catch_d2

    .line 293
    :goto_7b
    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProvider;->showDialog(I)V

    goto :goto_34

    .line 301
    :cond_7f
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 304
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 305
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    :goto_94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    const v1, 0x7f0e05c2

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTServiceProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 311
    const v1, 0x7f0e05f4

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTServiceProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 312
    const v1, 0x7f0e05f5

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTServiceProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LGTServiceProvider$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTServiceProvider$1;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    const v1, 0x7f0e05f6

    new-instance v2, Lcom/android/phone/LGTServiceProvider$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTServiceProvider$2;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_34

    .line 307
    :cond_cc
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_94

    .line 289
    :catch_d2
    move-exception v0

    goto :goto_7b

    .line 288
    :catch_d4
    move-exception v0

    goto :goto_7b

    .line 287
    :catch_d6
    move-exception v0

    goto :goto_7b

    .line 286
    :catch_d8
    move-exception v0

    goto :goto_7b
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->updateScreen()V

    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    return-void
.end method
