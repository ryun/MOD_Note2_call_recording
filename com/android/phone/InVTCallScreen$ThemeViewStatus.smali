.class final enum Lcom/android/phone/InVTCallScreen$ThemeViewStatus;
.super Ljava/lang/Enum;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ThemeViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallScreen$ThemeViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

.field public static final enum ANIMAL:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

.field public static final enum GLASSES:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

.field public static final enum HAT:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

.field public static final enum MUSTACHE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

.field public static final enum NONE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

.field public static final enum PARTY:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1182
    new-instance v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->NONE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    const-string v1, "PARTY"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->PARTY:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    const-string v1, "ANIMAL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ANIMAL:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    const-string v1, "GLASSES"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->GLASSES:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    const-string v1, "HAT"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->HAT:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    new-instance v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    const-string v1, "MUSTACHE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->MUSTACHE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    .line 1181
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->NONE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->PARTY:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ANIMAL:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->GLASSES:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->HAT:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->MUSTACHE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->$VALUES:[Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

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
    .line 1181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallScreen$ThemeViewStatus;
    .registers 2
    .parameter

    .prologue
    .line 1181
    const-class v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InVTCallScreen$ThemeViewStatus;
    .registers 1

    .prologue
    .line 1181
    sget-object v0, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->$VALUES:[Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v0}, [Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    return-object v0
.end method
