.class synthetic Lcom/android/phone/BluetoothHandsfree$35;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1512
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_a2

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_9f

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_9d

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_9b

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_99

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_97

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_95

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_93

    .line 1496
    :goto_62
    invoke-static {}, Lcom/android/internal/telephony/Phone$State;->values()[Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    :try_start_6b
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_91

    :goto_76
    :try_start_76
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_8f

    :goto_81
    :try_start_81
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_8d

    :goto_8c
    return-void

    :catch_8d
    move-exception v0

    goto :goto_8c

    :catch_8f
    move-exception v0

    goto :goto_81

    :catch_91
    move-exception v0

    goto :goto_76

    .line 1512
    :catch_93
    move-exception v0

    goto :goto_62

    :catch_95
    move-exception v0

    goto :goto_56

    :catch_97
    move-exception v0

    goto :goto_4b

    :catch_99
    move-exception v0

    goto :goto_40

    :catch_9b
    move-exception v0

    goto :goto_35

    :catch_9d
    move-exception v0

    goto :goto_2a

    :catch_9f
    move-exception v0

    goto/16 :goto_1f

    :catch_a2
    move-exception v0

    goto/16 :goto_14
.end method
