.class public final enum Lcom/android/phone/RcsTransferConstants$SessionType;
.super Ljava/lang/Enum;
.source "RcsTransferConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RcsTransferConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/RcsTransferConstants$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/RcsTransferConstants$SessionType;

.field public static final enum FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

.field public static final enum IM:Lcom/android/phone/RcsTransferConstants$SessionType;

.field public static final enum IMAGE_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

.field public static final enum IM_GROUP:Lcom/android/phone/RcsTransferConstants$SessionType;

.field public static final enum VIDEO_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    const-string v1, "FILE_TRANSFER"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/phone/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 39
    new-instance v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    const-string v1, "IMAGE_SHARE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/phone/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 43
    new-instance v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    const-string v1, "VIDEO_SHARE"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/phone/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 47
    new-instance v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    const-string v1, "IM"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/phone/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->IM:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 52
    new-instance v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    const-string v1, "IM_GROUP"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/phone/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->IM_GROUP:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/RcsTransferConstants$SessionType;

    sget-object v1, Lcom/android/phone/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/RcsTransferConstants$SessionType;->IM:Lcom/android/phone/RcsTransferConstants$SessionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/RcsTransferConstants$SessionType;->IM_GROUP:Lcom/android/phone/RcsTransferConstants$SessionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->$VALUES:[Lcom/android/phone/RcsTransferConstants$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/android/phone/RcsTransferConstants$SessionType;->value:I

    .line 58
    return-void
.end method

.method public static getFromInt(I)Lcom/android/phone/RcsTransferConstants$SessionType;
    .registers 2
    .parameter "type"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/phone/RcsTransferConstants$SessionType;->values()[Lcom/android/phone/RcsTransferConstants$SessionType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/RcsTransferConstants$SessionType;
    .registers 2
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RcsTransferConstants$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/RcsTransferConstants$SessionType;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/phone/RcsTransferConstants$SessionType;->$VALUES:[Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v0}, [Lcom/android/phone/RcsTransferConstants$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/RcsTransferConstants$SessionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/android/phone/RcsTransferConstants$SessionType;->value:I

    return v0
.end method
