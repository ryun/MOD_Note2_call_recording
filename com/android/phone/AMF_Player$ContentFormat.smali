.class public final enum Lcom/android/phone/AMF_Player$ContentFormat;
.super Ljava/lang/Enum;
.source "AMF_Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AMF_Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/AMF_Player$ContentFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/AMF_Player$ContentFormat;

.field public static final enum AM3:Lcom/android/phone/AMF_Player$ContentFormat;

.field public static final enum DMF:Lcom/android/phone/AMF_Player$ContentFormat;

.field public static final enum SKM:Lcom/android/phone/AMF_Player$ContentFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/android/phone/AMF_Player$ContentFormat;

    const-string v1, "DMF"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/AMF_Player$ContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/AMF_Player$ContentFormat;->DMF:Lcom/android/phone/AMF_Player$ContentFormat;

    new-instance v0, Lcom/android/phone/AMF_Player$ContentFormat;

    const-string v1, "AM3"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/AMF_Player$ContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/AMF_Player$ContentFormat;->AM3:Lcom/android/phone/AMF_Player$ContentFormat;

    new-instance v0, Lcom/android/phone/AMF_Player$ContentFormat;

    const-string v1, "SKM"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/AMF_Player$ContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/AMF_Player$ContentFormat;->SKM:Lcom/android/phone/AMF_Player$ContentFormat;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/AMF_Player$ContentFormat;

    sget-object v1, Lcom/android/phone/AMF_Player$ContentFormat;->DMF:Lcom/android/phone/AMF_Player$ContentFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/AMF_Player$ContentFormat;->AM3:Lcom/android/phone/AMF_Player$ContentFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/AMF_Player$ContentFormat;->SKM:Lcom/android/phone/AMF_Player$ContentFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/AMF_Player$ContentFormat;->$VALUES:[Lcom/android/phone/AMF_Player$ContentFormat;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/AMF_Player$ContentFormat;
    .registers 2
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/android/phone/AMF_Player$ContentFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/AMF_Player$ContentFormat;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/AMF_Player$ContentFormat;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/phone/AMF_Player$ContentFormat;->$VALUES:[Lcom/android/phone/AMF_Player$ContentFormat;

    invoke-virtual {v0}, [Lcom/android/phone/AMF_Player$ContentFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/AMF_Player$ContentFormat;

    return-object v0
.end method
