.class final enum Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
.super Ljava/lang/Enum;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CdmaAdditionalCallOptions$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field public static final enum BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field public static final enum INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field public static final enum INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field public static final enum NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    const-string v1, "INPUT_READY"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    .line 133
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    const-string v1, "BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    .line 134
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    .line 135
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    const-string v1, "INITIAL_QUERY"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->$VALUES:[Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
    .registers 2
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->$VALUES:[Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0}, [Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    return-object v0
.end method
