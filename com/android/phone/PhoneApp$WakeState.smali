.class public final enum Lcom/android/phone/PhoneApp$WakeState;
.super Ljava/lang/Enum;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneApp$WakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum FULL:Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum SCREEN_BRIGHT:Lcom/android/phone/PhoneApp$WakeState;

.field public static final enum SLEEP:Lcom/android/phone/PhoneApp$WakeState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "SLEEP"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    .line 244
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "PARTIAL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    .line 245
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    .line 247
    new-instance v0, Lcom/android/phone/PhoneApp$WakeState;

    const-string v1, "SCREEN_BRIGHT"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneApp$WakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneApp$WakeState;

    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneApp$WakeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/PhoneApp$WakeState;->$VALUES:[Lcom/android/phone/PhoneApp$WakeState;

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
    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneApp$WakeState;
    .registers 2
    .parameter

    .prologue
    .line 242
    const-class v0, Lcom/android/phone/PhoneApp$WakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp$WakeState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneApp$WakeState;
    .registers 1

    .prologue
    .line 242
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->$VALUES:[Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneApp$WakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneApp$WakeState;

    return-object v0
.end method
