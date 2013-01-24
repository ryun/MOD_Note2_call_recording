.class public Lcom/android/phone/SprintPhoneExtension;
.super Ljava/lang/Object;
.source "SprintPhoneExtension.java"


# static fields
.field private static VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

.field private static VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

.field private static mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCscChameleonBit:I

.field private static mParser:Lcom/android/phone/CscParser;

.field private static mVisualVoicemailEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 64
    const-string v0, "com.coremobility.app.vnotes"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    .line 65
    const-string v0, "EnabledApps.VVM"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCscChameleonFile()V
    .registers 2

    .prologue
    .line 148
    invoke-static {}, Lcom/android/phone/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, cscChameleonPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->existsCscChameleonFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 150
    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 151
    invoke-static {v0}, Lcom/android/phone/CscParser;->getChameleonInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;

    move-result-object v1

    sput-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    .line 152
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v1, :cond_20

    .line 153
    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 155
    :cond_20
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putCscChameleonDatabase()V

    .line 156
    return-void
.end method

.method private static cscChameleonEnable()Z
    .registers 2

    .prologue
    .line 186
    const-string v0, "csc_chameleon_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    and-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static existsCscChameleonFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "cscChameleonFileName"

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 249
    if-eqz p0, :cond_15

    .line 250
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    if-eqz p0, :cond_15

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_15

    .line 253
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    :goto_14
    return-object v0

    :cond_15
    move-object v0, p0

    goto :goto_14
.end method

.method public static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getSecureSettingValueInt(Ljava/lang/String;I)I
    .registers 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 135
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVisualVoicemailEnabled()Z
    .registers 1

    .prologue
    .line 179
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    sget-boolean v0, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    .line 182
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v0

    goto :goto_8
.end method

.method public static hasVisualVoicemail()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 284
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 285
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    .line 286
    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15

    .line 287
    const/4 v2, 0x1

    .line 294
    :cond_12
    :goto_12
    return v2

    .line 289
    :catch_13
    move-exception v0

    .line 290
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12

    .line 291
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_15
    move-exception v0

    .line 292
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_12
.end method

.method public static isAbbreviatedDialingCodes(Ljava/lang/String;)Z
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 239
    if-eqz p0, :cond_13

    .line 240
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    if-eqz p0, :cond_13

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_13

    .line 243
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 245
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isDomesticRoamingInService()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 72
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    .line 73
    .local v0, isDomesticRoaming:Z
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_3a

    move v2, v3

    .line 75
    .local v2, stateInService:Z
    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 77
    if-eqz v2, :cond_3c

    if-eqz v0, :cond_3c

    :goto_39
    return v3

    .end local v2           #stateInService:Z
    :cond_3a
    move v2, v4

    .line 73
    goto :goto_15

    .restart local v2       #stateInService:Z
    :cond_3c
    move v3, v4

    .line 77
    goto :goto_39
.end method

.method public static isDomesticRoamingSettingInService()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 91
    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 92
    .local v0, domesticCallGuardEnabled:Z
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v1

    .line 94
    .local v1, isDomesticRoamingInService:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DomesticCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isDomesticRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 96
    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    :goto_2f
    return v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public static isInternationalRoamingInService()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 82
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    .line 83
    .local v0, isInternationalRoaming:Z
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_3a

    move v2, v3

    .line 85
    .local v2, stateInService:Z
    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 87
    if-eqz v2, :cond_3c

    if-eqz v0, :cond_3c

    :goto_39
    return v3

    .end local v2           #stateInService:Z
    :cond_3a
    move v2, v4

    .line 83
    goto :goto_15

    .restart local v2       #stateInService:Z
    :cond_3c
    move v3, v4

    .line 87
    goto :goto_39
.end method

.method public static isInternationalRoamingSettingInService()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 100
    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 101
    .local v0, internationalCallGuardEnabled:Z
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v1

    .line 103
    .local v1, isInternationalRoamingInService:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternationalCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isInternationalRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 105
    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    :goto_2f
    return v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public static isInternationalRoamingSettingInServiceGsm()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 110
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_50

    move v3, v4

    .line 111
    .local v3, stateInService:Z
    :goto_11
    const-string v6, "sprint_gsm_voice_guard"

    invoke-static {v6, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 112
    .local v0, internationalCallGuardEnabledGsm:Z
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 114
    .local v2, roaming:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateInService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / internationalCallGuardEnabledGsm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / roaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 115
    if-eqz v3, :cond_52

    if-eqz v0, :cond_52

    if-eqz v2, :cond_52

    :goto_4f
    return v4

    .end local v0           #internationalCallGuardEnabledGsm:Z
    .end local v2           #roaming:Z
    .end local v3           #stateInService:Z
    :cond_50
    move v3, v5

    .line 110
    goto :goto_11

    .restart local v0       #internationalCallGuardEnabledGsm:Z
    .restart local v2       #roaming:Z
    .restart local v3       #stateInService:Z
    :cond_52
    move v4, v5

    .line 115
    goto :goto_4f
.end method

.method public static isNorthAmericanDialingPlanCountry()Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 259
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 260
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v6, :cond_19

    .line 261
    const-string v8, "isNorthAmericanDialingPlanCountry - TelephonyManager is null"

    invoke-static {v8}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 279
    :cond_18
    :goto_18
    return v7

    .line 265
    :cond_19
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, networkCountryIso:Ljava/lang/String;
    if-nez v6, :cond_25

    .line 267
    const-string v8, "isNorthAmericanDialingPlanCountry - NetworkCountryIso is null"

    invoke-static {v8}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 271
    :cond_25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkCountryIso : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08005f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, northAmericanNumberingPlan:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4d
    if-ge v1, v2, :cond_5a

    aget-object v4, v0, v1

    .line 275
    .local v4, northAmericanDailingPlan:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 279
    .end local v4           #northAmericanDailingPlan:Ljava/lang/String;
    :cond_5a
    const/4 v7, 0x0

    goto :goto_18
.end method

.method public static isRoamingInService()Z
    .registers 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isRoamingSettingInService()Z
    .registers 1

    .prologue
    .line 123
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 298
    const-string v0, "SprintPhoneExtension"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method private static putAbbreviatedDialingCodesDefaultTable()V
    .registers 7

    .prologue
    .line 208
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 213
    .local v2, resources:Landroid/content/res/Resources;
    const-string v4, "abbreviated_dialing_codes_table_sprint"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 214
    const v4, 0x7f080059

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    const v4, 0x7f08005a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    sget v4, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v4, v4, 0x4

    sput v4, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 230
    :goto_24
    if-eqz v0, :cond_79

    if-eqz v1, :cond_79

    array-length v4, v0

    array-length v5, v1

    if-ne v4, v5, :cond_79

    .line 233
    const/4 v3, 0x0

    .local v3, row:I
    :goto_2d
    array-length v4, v0

    if-ge v3, v4, :cond_79

    .line 234
    sget-object v4, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 217
    .end local v0           #abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    .end local v1           #abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    .end local v3           #row:I
    :cond_3c
    const-string v4, "abbreviated_dialing_codes_table_virgin"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 218
    const v4, 0x7f08005b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0       #abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    const v4, 0x7f08005c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 220
    .restart local v1       #abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    sget v4, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v4, v4, 0x8

    sput v4, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    goto :goto_24

    .line 221
    .end local v0           #abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    .end local v1           #abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    :cond_59
    const-string v4, "abbreviated_dialing_codes_table_boost"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 222
    const v4, 0x7f08005d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0       #abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    const v4, 0x7f08005e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1       #abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    sget v4, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v4, v4, 0x10

    sput v4, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    goto :goto_24

    .line 226
    .end local v0           #abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    .end local v1           #abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    :cond_76
    const/4 v0, 0x0

    .line 227
    .restart local v0       #abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    goto :goto_24

    .line 236
    :cond_79
    return-void
.end method

.method private static putAbbreviatedDialingCodesTable()V
    .registers 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 192
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, abbreviatedDialingCodesNodes:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_54

    aget-object v0, v2, v3

    .line 195
    .local v0, abbreviatedDialingCodesNode:Ljava/lang/String;
    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    invoke-virtual {v7, v0}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, parserAbbreviatedDialingCodes:Ljava/lang/String;
    if-eqz v5, :cond_51

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 198
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, splitAbbreviatedDialingCodes:[Ljava/lang/String;
    if-eqz v6, :cond_51

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_51

    aget-object v7, v6, v10

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    aget-object v7, v6, v11

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 202
    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v8, v6, v10

    aget-object v9, v6, v11

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v6           #splitAbbreviatedDialingCodes:[Ljava/lang/String;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 205
    .end local v0           #abbreviatedDialingCodesNode:Ljava/lang/String;
    .end local v5           #parserAbbreviatedDialingCodes:Ljava/lang/String;
    :cond_54
    return-void
.end method

.method private static putCscChameleonDatabase()V
    .registers 1

    .prologue
    .line 164
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesTable()V

    .line 166
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putVisualVoicemailEnabled()V

    .line 170
    :goto_c
    return-void

    .line 168
    :cond_d
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesDefaultTable()V

    goto :goto_c
.end method

.method private static putVisualVoicemailEnabled()V
    .registers 3

    .prologue
    .line 173
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, visualVoicemailNode:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 175
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    .line 176
    :cond_12
    return-void
.end method

.method public static setSecureSettingDataRoaming()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "roam_setting_data_international"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 129
    :cond_11
    const-string v0, "data_roaming"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 132
    :goto_17
    return-void

    .line 131
    :cond_18
    const-string v0, "data_roaming"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_17
.end method

.method public static setSecureSettingValue(Ljava/lang/String;I)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 143
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    return-void
.end method
