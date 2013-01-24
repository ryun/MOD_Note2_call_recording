.class synthetic Lcom/android/phone/InCallScreen$44;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$Constants$CallStatusCode:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 6149
    invoke-static {}, Lcom/android/phone/InCallUiState$InCallScreenMode;->values()[Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_32c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_329

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_326

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_323

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_320

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_31d

    .line 5550
    :goto_4b
    invoke-static {}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->values()[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    :try_start_54
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_31a

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_317

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_314

    .line 4845
    :goto_75
    invoke-static {}, Lcom/android/phone/Constants$CallStatusCode;->values()[Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    :try_start_7e
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_311

    :goto_89
    :try_start_89
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_30e

    :goto_94
    :try_start_94
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_30b

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_308

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_305

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_302

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_2ff

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d7} :catch_2fc

    :goto_d7
    :try_start_d7
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e3} :catch_2f9

    :goto_e3
    :try_start_e3
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ef} :catch_2f6

    :goto_ef
    :try_start_ef
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_fb} :catch_2f3

    :goto_fb
    :try_start_fb
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_107} :catch_2f0

    :goto_107
    :try_start_107
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_WITH_POP_UP:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_113} :catch_2ed

    :goto_113
    :try_start_113
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11f} :catch_2ea

    :goto_11f
    :try_start_11f
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_12b} :catch_2e7

    :goto_12b
    :try_start_12b
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_137
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_137} :catch_2e4

    :goto_137
    :try_start_137
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_143} :catch_2e1

    :goto_143
    :try_start_143
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_14f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_143 .. :try_end_14f} :catch_2de

    :goto_14f
    :try_start_14f
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_15b} :catch_2db

    :goto_15b
    :try_start_15b
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_167
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_167} :catch_2d8

    :goto_167
    :try_start_167
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_173
    .catch Ljava/lang/NoSuchFieldError; {:try_start_167 .. :try_end_173} :catch_2d5

    :goto_173
    :try_start_173
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_17f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_173 .. :try_end_17f} :catch_2d2

    :goto_17f
    :try_start_17f
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17f .. :try_end_18b} :catch_2cf

    :goto_18b
    :try_start_18b
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_197} :catch_2cc

    :goto_197
    :try_start_197
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a3} :catch_2c9

    :goto_1a3
    :try_start_1a3
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a3 .. :try_end_1af} :catch_2c6

    .line 4418
    :goto_1af
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallAudioMode;->values()[Lcom/android/phone/InCallScreen$InCallAudioMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    :try_start_1b8
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b8 .. :try_end_1c3} :catch_2c3

    :goto_1c3
    :try_start_1c3
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c3 .. :try_end_1ce} :catch_2c0

    :goto_1ce
    :try_start_1ce
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ce .. :try_end_1d9} :catch_2bd

    .line 3453
    :goto_1d9
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_1e2
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ed} :catch_2ba

    :goto_1ed
    :try_start_1ed
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ed .. :try_end_1f8} :catch_2b7

    :goto_1f8
    :try_start_1f8
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_203
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_203} :catch_2b4

    :goto_203
    :try_start_203
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20e} :catch_2b1

    :goto_20e
    :try_start_20e
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_219
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20e .. :try_end_219} :catch_2ae

    .line 3290
    :goto_219
    invoke-static {}, Lcom/android/internal/telephony/Connection$DisconnectCause;->values()[Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    :try_start_222
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_22d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_222 .. :try_end_22d} :catch_2ac

    :goto_22d
    :try_start_22d
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_238
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22d .. :try_end_238} :catch_2aa

    :goto_238
    :try_start_238
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_243
    .catch Ljava/lang/NoSuchFieldError; {:try_start_238 .. :try_end_243} :catch_2a8

    .line 2777
    :goto_243
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_24c
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_257
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24c .. :try_end_257} :catch_2a6

    :goto_257
    :try_start_257
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_262
    .catch Ljava/lang/NoSuchFieldError; {:try_start_257 .. :try_end_262} :catch_2a4

    :goto_262
    :try_start_262
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_26d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_262 .. :try_end_26d} :catch_2a2

    :goto_26d
    :try_start_26d
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_278
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26d .. :try_end_278} :catch_2a0

    :goto_278
    :try_start_278
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_283
    .catch Ljava/lang/NoSuchFieldError; {:try_start_278 .. :try_end_283} :catch_29e

    :goto_283
    :try_start_283
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_28e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_283 .. :try_end_28e} :catch_29c

    :goto_28e
    :try_start_28e
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_299
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28e .. :try_end_299} :catch_29a

    :goto_299
    return-void

    :catch_29a
    move-exception v0

    goto :goto_299

    :catch_29c
    move-exception v0

    goto :goto_28e

    :catch_29e
    move-exception v0

    goto :goto_283

    :catch_2a0
    move-exception v0

    goto :goto_278

    :catch_2a2
    move-exception v0

    goto :goto_26d

    :catch_2a4
    move-exception v0

    goto :goto_262

    :catch_2a6
    move-exception v0

    goto :goto_257

    .line 3290
    :catch_2a8
    move-exception v0

    goto :goto_243

    :catch_2aa
    move-exception v0

    goto :goto_238

    :catch_2ac
    move-exception v0

    goto :goto_22d

    .line 3453
    :catch_2ae
    move-exception v0

    goto/16 :goto_219

    :catch_2b1
    move-exception v0

    goto/16 :goto_20e

    :catch_2b4
    move-exception v0

    goto/16 :goto_203

    :catch_2b7
    move-exception v0

    goto/16 :goto_1f8

    :catch_2ba
    move-exception v0

    goto/16 :goto_1ed

    .line 4418
    :catch_2bd
    move-exception v0

    goto/16 :goto_1d9

    :catch_2c0
    move-exception v0

    goto/16 :goto_1ce

    :catch_2c3
    move-exception v0

    goto/16 :goto_1c3

    .line 4845
    :catch_2c6
    move-exception v0

    goto/16 :goto_1af

    :catch_2c9
    move-exception v0

    goto/16 :goto_1a3

    :catch_2cc
    move-exception v0

    goto/16 :goto_197

    :catch_2cf
    move-exception v0

    goto/16 :goto_18b

    :catch_2d2
    move-exception v0

    goto/16 :goto_17f

    :catch_2d5
    move-exception v0

    goto/16 :goto_173

    :catch_2d8
    move-exception v0

    goto/16 :goto_167

    :catch_2db
    move-exception v0

    goto/16 :goto_15b

    :catch_2de
    move-exception v0

    goto/16 :goto_14f

    :catch_2e1
    move-exception v0

    goto/16 :goto_143

    :catch_2e4
    move-exception v0

    goto/16 :goto_137

    :catch_2e7
    move-exception v0

    goto/16 :goto_12b

    :catch_2ea
    move-exception v0

    goto/16 :goto_11f

    :catch_2ed
    move-exception v0

    goto/16 :goto_113

    :catch_2f0
    move-exception v0

    goto/16 :goto_107

    :catch_2f3
    move-exception v0

    goto/16 :goto_fb

    :catch_2f6
    move-exception v0

    goto/16 :goto_ef

    :catch_2f9
    move-exception v0

    goto/16 :goto_e3

    :catch_2fc
    move-exception v0

    goto/16 :goto_d7

    :catch_2ff
    move-exception v0

    goto/16 :goto_cb

    :catch_302
    move-exception v0

    goto/16 :goto_c0

    :catch_305
    move-exception v0

    goto/16 :goto_b5

    :catch_308
    move-exception v0

    goto/16 :goto_aa

    :catch_30b
    move-exception v0

    goto/16 :goto_9f

    :catch_30e
    move-exception v0

    goto/16 :goto_94

    :catch_311
    move-exception v0

    goto/16 :goto_89

    .line 5550
    :catch_314
    move-exception v0

    goto/16 :goto_75

    :catch_317
    move-exception v0

    goto/16 :goto_6a

    :catch_31a
    move-exception v0

    goto/16 :goto_5f

    .line 6149
    :catch_31d
    move-exception v0

    goto/16 :goto_4b

    :catch_320
    move-exception v0

    goto/16 :goto_40

    :catch_323
    move-exception v0

    goto/16 :goto_35

    :catch_326
    move-exception v0

    goto/16 :goto_2a

    :catch_329
    move-exception v0

    goto/16 :goto_1f

    :catch_32c
    move-exception v0

    goto/16 :goto_14
.end method
