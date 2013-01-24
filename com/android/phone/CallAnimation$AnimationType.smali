.class final enum Lcom/android/phone/CallAnimation$AnimationType;
.super Ljava/lang/Enum;
.source "CallAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallAnimation$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallAnimation$AnimationType;

.field public static final enum CLOSE_DIALPAD:Lcom/android/phone/CallAnimation$AnimationType;

.field public static final enum END_CALL:Lcom/android/phone/CallAnimation$AnimationType;

.field public static final enum INCOMING_CALL:Lcom/android/phone/CallAnimation$AnimationType;

.field public static final enum OPEN_DIALPAD:Lcom/android/phone/CallAnimation$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/android/phone/CallAnimation$AnimationType;

    const-string v1, "OPEN_DIALPAD"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallAnimation$AnimationType;->OPEN_DIALPAD:Lcom/android/phone/CallAnimation$AnimationType;

    new-instance v0, Lcom/android/phone/CallAnimation$AnimationType;

    const-string v1, "CLOSE_DIALPAD"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallAnimation$AnimationType;->CLOSE_DIALPAD:Lcom/android/phone/CallAnimation$AnimationType;

    new-instance v0, Lcom/android/phone/CallAnimation$AnimationType;

    const-string v1, "END_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallAnimation$AnimationType;->END_CALL:Lcom/android/phone/CallAnimation$AnimationType;

    new-instance v0, Lcom/android/phone/CallAnimation$AnimationType;

    const-string v1, "INCOMING_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CallAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallAnimation$AnimationType;->INCOMING_CALL:Lcom/android/phone/CallAnimation$AnimationType;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/CallAnimation$AnimationType;

    sget-object v1, Lcom/android/phone/CallAnimation$AnimationType;->OPEN_DIALPAD:Lcom/android/phone/CallAnimation$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallAnimation$AnimationType;->CLOSE_DIALPAD:Lcom/android/phone/CallAnimation$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CallAnimation$AnimationType;->END_CALL:Lcom/android/phone/CallAnimation$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/CallAnimation$AnimationType;->INCOMING_CALL:Lcom/android/phone/CallAnimation$AnimationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/CallAnimation$AnimationType;->$VALUES:[Lcom/android/phone/CallAnimation$AnimationType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallAnimation$AnimationType;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/android/phone/CallAnimation$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallAnimation$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CallAnimation$AnimationType;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/phone/CallAnimation$AnimationType;->$VALUES:[Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v0}, [Lcom/android/phone/CallAnimation$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallAnimation$AnimationType;

    return-object v0
.end method
