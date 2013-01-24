.class final enum Lcom/android/phone/CFStatus;
.super Ljava/lang/Enum;
.source "CallForwardAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CFStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CFStatus;

.field public static final enum NUM_NOT_SET:Lcom/android/phone/CFStatus;

.field public static final enum OFF:Lcom/android/phone/CFStatus;

.field public static final enum ON:Lcom/android/phone/CFStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/android/phone/CFStatus;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CFStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    .line 52
    new-instance v0, Lcom/android/phone/CFStatus;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CFStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    .line 53
    new-instance v0, Lcom/android/phone/CFStatus;

    const-string v1, "NUM_NOT_SET"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CFStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CFStatus;->$VALUES:[Lcom/android/phone/CFStatus;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CFStatus;
    .registers 2
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/android/phone/CFStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CFStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CFStatus;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/phone/CFStatus;->$VALUES:[Lcom/android/phone/CFStatus;

    invoke-virtual {v0}, [Lcom/android/phone/CFStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CFStatus;

    return-object v0
.end method
