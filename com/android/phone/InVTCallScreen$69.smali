.class synthetic Lcom/android/phone/InVTCallScreen$69;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16387
    invoke-static {}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->values()[Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->PARTY:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_290

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ANIMAL:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_28d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->GLASSES:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_28a

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->HAT:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_287

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->MUSTACHE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_284

    .line 9996
    :goto_40
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_49
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_281

    :goto_54
    :try_start_54
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_27e

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_27b

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_278

    :goto_75
    :try_start_75
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_275

    .line 9218
    :goto_80
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->values()[Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    :try_start_89
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_272

    :goto_94
    :try_start_94
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_26f

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_26c

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_269

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_266

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_263

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_260

    .line 8434
    :goto_d6
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->values()[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    :try_start_df
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_ea} :catch_25d

    :goto_ea
    :try_start_ea
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f5} :catch_25a

    :goto_f5
    :try_start_f5
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_100} :catch_257

    :goto_100
    :try_start_100
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10b} :catch_254

    :goto_10b
    :try_start_10b
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_116} :catch_251

    :goto_116
    :try_start_116
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_121} :catch_24e

    :goto_121
    :try_start_121
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121 .. :try_end_12c} :catch_24b

    :goto_12c
    :try_start_12c
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_248

    :goto_138
    :try_start_138
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_245

    :goto_144
    :try_start_144
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_242

    :goto_150
    :try_start_150
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_23f

    :goto_15c
    :try_start_15c
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_23c

    :goto_168
    :try_start_168
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_239

    :goto_174
    :try_start_174
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->IMSI_UNKNOWN:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_236

    :goto_180
    :try_start_180
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_MS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_233

    :goto_18c
    :try_start_18c
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_ME:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_230

    :goto_198
    :try_start_198
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REG_FAIL:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_22d

    :goto_1a4
    :try_start_1a4
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REGSTERING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_22b

    .line 5781
    :goto_1b0
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_1b9
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b9 .. :try_end_1c4} :catch_229

    :goto_1c4
    :try_start_1c4
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c4 .. :try_end_1cf} :catch_227

    :goto_1cf
    :try_start_1cf
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cf .. :try_end_1da} :catch_225

    :goto_1da
    :try_start_1da
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1da .. :try_end_1e5} :catch_223

    :goto_1e5
    :try_start_1e5
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e5 .. :try_end_1f0} :catch_221

    .line 4369
    :goto_1f0
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_1f9
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f9 .. :try_end_204} :catch_21f

    :goto_204
    :try_start_204
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_20f} :catch_21d

    :goto_20f
    :try_start_20f
    sget-object v0, Lcom/android/phone/InVTCallScreen$69;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_21a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20f .. :try_end_21a} :catch_21b

    :goto_21a
    return-void

    :catch_21b
    move-exception v0

    goto :goto_21a

    :catch_21d
    move-exception v0

    goto :goto_20f

    :catch_21f
    move-exception v0

    goto :goto_204

    .line 5781
    :catch_221
    move-exception v0

    goto :goto_1f0

    :catch_223
    move-exception v0

    goto :goto_1e5

    :catch_225
    move-exception v0

    goto :goto_1da

    :catch_227
    move-exception v0

    goto :goto_1cf

    :catch_229
    move-exception v0

    goto :goto_1c4

    .line 8434
    :catch_22b
    move-exception v0

    goto :goto_1b0

    :catch_22d
    move-exception v0

    goto/16 :goto_1a4

    :catch_230
    move-exception v0

    goto/16 :goto_198

    :catch_233
    move-exception v0

    goto/16 :goto_18c

    :catch_236
    move-exception v0

    goto/16 :goto_180

    :catch_239
    move-exception v0

    goto/16 :goto_174

    :catch_23c
    move-exception v0

    goto/16 :goto_168

    :catch_23f
    move-exception v0

    goto/16 :goto_15c

    :catch_242
    move-exception v0

    goto/16 :goto_150

    :catch_245
    move-exception v0

    goto/16 :goto_144

    :catch_248
    move-exception v0

    goto/16 :goto_138

    :catch_24b
    move-exception v0

    goto/16 :goto_12c

    :catch_24e
    move-exception v0

    goto/16 :goto_121

    :catch_251
    move-exception v0

    goto/16 :goto_116

    :catch_254
    move-exception v0

    goto/16 :goto_10b

    :catch_257
    move-exception v0

    goto/16 :goto_100

    :catch_25a
    move-exception v0

    goto/16 :goto_f5

    :catch_25d
    move-exception v0

    goto/16 :goto_ea

    .line 9218
    :catch_260
    move-exception v0

    goto/16 :goto_d6

    :catch_263
    move-exception v0

    goto/16 :goto_cb

    :catch_266
    move-exception v0

    goto/16 :goto_c0

    :catch_269
    move-exception v0

    goto/16 :goto_b5

    :catch_26c
    move-exception v0

    goto/16 :goto_aa

    :catch_26f
    move-exception v0

    goto/16 :goto_9f

    :catch_272
    move-exception v0

    goto/16 :goto_94

    .line 9996
    :catch_275
    move-exception v0

    goto/16 :goto_80

    :catch_278
    move-exception v0

    goto/16 :goto_75

    :catch_27b
    move-exception v0

    goto/16 :goto_6a

    :catch_27e
    move-exception v0

    goto/16 :goto_5f

    :catch_281
    move-exception v0

    goto/16 :goto_54

    .line 16387
    :catch_284
    move-exception v0

    goto/16 :goto_40

    :catch_287
    move-exception v0

    goto/16 :goto_35

    :catch_28a
    move-exception v0

    goto/16 :goto_2a

    :catch_28d
    move-exception v0

    goto/16 :goto_1f

    :catch_290
    move-exception v0

    goto/16 :goto_14
.end method
