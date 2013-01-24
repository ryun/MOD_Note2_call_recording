.class public final enum Lcom/android/phone/InVTCallScreen$VideoDisplayMode;
.super Ljava/lang/Enum;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoDisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallScreen$VideoDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

.field public static final enum DISPLAY_BIG_LOCAL:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

.field public static final enum DISPLAY_BIG_REMOTE:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

.field public static final enum DISPLAY_LOCAL_ONLY:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

.field public static final enum DISPLAY_REMOTE_ONLY:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1120
    new-instance v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    const-string v1, "DISPLAY_BIG_REMOTE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_BIG_REMOTE:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    .line 1121
    new-instance v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    const-string v1, "DISPLAY_BIG_LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_BIG_LOCAL:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    .line 1122
    new-instance v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    const-string v1, "DISPLAY_REMOTE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_REMOTE_ONLY:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    .line 1123
    new-instance v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    const-string v1, "DISPLAY_LOCAL_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_LOCAL_ONLY:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    .line 1119
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_BIG_REMOTE:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_BIG_LOCAL:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_REMOTE_ONLY:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->DISPLAY_LOCAL_ONLY:Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->$VALUES:[Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

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
    .line 1119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallScreen$VideoDisplayMode;
    .registers 2
    .parameter

    .prologue
    .line 1119
    const-class v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InVTCallScreen$VideoDisplayMode;
    .registers 1

    .prologue
    .line 1119
    sget-object v0, Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->$VALUES:[Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    invoke-virtual {v0}, [Lcom/android/phone/InVTCallScreen$VideoDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    return-object v0
.end method
