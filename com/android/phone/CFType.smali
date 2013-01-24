.class final enum Lcom/android/phone/CFType;
.super Ljava/lang/Enum;
.source "CallForwardAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CFType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CFType;

.field public static final enum VIDEO:Lcom/android/phone/CFType;

.field public static final enum VOICE:Lcom/android/phone/CFType;

.field public static final enum VOICE_AND_VIDEO:Lcom/android/phone/CFType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/android/phone/CFType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CFType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    .line 46
    new-instance v0, Lcom/android/phone/CFType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CFType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    .line 47
    new-instance v0, Lcom/android/phone/CFType;

    const-string v1, "VOICE_AND_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CFType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CFType;

    sget-object v1, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CFType;->$VALUES:[Lcom/android/phone/CFType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CFType;
    .registers 2
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/android/phone/CFType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CFType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CFType;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/phone/CFType;->$VALUES:[Lcom/android/phone/CFType;

    invoke-virtual {v0}, [Lcom/android/phone/CFType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CFType;

    return-object v0
.end method
