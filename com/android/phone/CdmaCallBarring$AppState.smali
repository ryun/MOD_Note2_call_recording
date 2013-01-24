.class final enum Lcom/android/phone/CdmaCallBarring$AppState;
.super Ljava/lang/Enum;
.source "CdmaCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CdmaCallBarring$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CdmaCallBarring$AppState;

.field public static final enum BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

.field public static final enum DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

.field public static final enum INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

.field public static final enum INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

.field public static final enum NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

.field public static final enum WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    new-instance v0, Lcom/android/phone/CdmaCallBarring$AppState;

    const-string v1, "INPUT_READY"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CdmaCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 144
    new-instance v0, Lcom/android/phone/CdmaCallBarring$AppState;

    const-string v1, "DIALOG_OPEN"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CdmaCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 145
    new-instance v0, Lcom/android/phone/CdmaCallBarring$AppState;

    const-string v1, "WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CdmaCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 146
    new-instance v0, Lcom/android/phone/CdmaCallBarring$AppState;

    const-string v1, "BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/CdmaCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 147
    new-instance v0, Lcom/android/phone/CdmaCallBarring$AppState;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/CdmaCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 148
    new-instance v0, Lcom/android/phone/CdmaCallBarring$AppState;

    const-string v1, "INITIAL_QUERY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CdmaCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 142
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->$VALUES:[Lcom/android/phone/CdmaCallBarring$AppState;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CdmaCallBarring$AppState;
    .registers 2
    .parameter

    .prologue
    .line 142
    const-class v0, Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaCallBarring$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CdmaCallBarring$AppState;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->$VALUES:[Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v0}, [Lcom/android/phone/CdmaCallBarring$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CdmaCallBarring$AppState;

    return-object v0
.end method
