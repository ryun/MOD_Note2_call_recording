.class final enum Lcom/android/phone/CdmaCallForwardOptions$AppState;
.super Ljava/lang/Enum;
.source "CdmaCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CdmaCallForwardOptions$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field public static final enum BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field public static final enum DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field public static final enum INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field public static final enum INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field public static final enum NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field public static final enum WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v1, "INPUT_READY"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CdmaCallForwardOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 157
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v1, "DIALOG_OPEN"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CdmaCallForwardOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 158
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v1, "WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CdmaCallForwardOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 159
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v1, "BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/CdmaCallForwardOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 160
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/CdmaCallForwardOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 161
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v1, "INITIAL_QUERY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CdmaCallForwardOptions$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->$VALUES:[Lcom/android/phone/CdmaCallForwardOptions$AppState;

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
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CdmaCallForwardOptions$AppState;
    .registers 2
    .parameter

    .prologue
    .line 155
    const-class v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CdmaCallForwardOptions$AppState;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->$VALUES:[Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v0}, [Lcom/android/phone/CdmaCallForwardOptions$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CdmaCallForwardOptions$AppState;

    return-object v0
.end method
