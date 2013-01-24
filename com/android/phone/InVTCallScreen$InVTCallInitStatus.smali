.class final enum Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
.super Ljava/lang/Enum;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InVTCallInitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum ILLEGAL_ME:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum ILLEGAL_MS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum IMSI_UNKNOWN:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum LOCATION_REGSTERING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum LOCATION_REG_FAIL:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 611
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "PHONE_NOT_IN_USE"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "CALL_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "OUT_OF_3G_NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 614
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "NOT_REGISTERED_NUMBER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 616
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 618
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 620
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "STATE_OUT_OF_SERVICE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 621
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "IMSI_UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->IMSI_UNKNOWN:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 622
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "ILLEGAL_MS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_MS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 623
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "ILLEGAL_ME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_ME:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 624
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "LOCATION_REG_FAIL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REG_FAIL:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 625
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "LOCATION_REGSTERING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REGSTERING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 626
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "EMERGENCY_SKT_ONLY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 610
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->IMSI_UNKNOWN:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_MS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_ME:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REG_FAIL:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REGSTERING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->$VALUES:[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .registers 2
    .parameter

    .prologue
    .line 610
    const-class v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .registers 1

    .prologue
    .line 610
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->$VALUES:[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0}, [Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    return-object v0
.end method
