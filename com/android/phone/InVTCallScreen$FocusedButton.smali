.class final enum Lcom/android/phone/InVTCallScreen$FocusedButton;
.super Ljava/lang/Enum;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FocusedButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallScreen$FocusedButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallScreen$FocusedButton;

.field public static final enum END_CALL:Lcom/android/phone/InVTCallScreen$FocusedButton;

.field public static final enum HIDE:Lcom/android/phone/InVTCallScreen$FocusedButton;

.field public static final enum NONE:Lcom/android/phone/InVTCallScreen$FocusedButton;

.field public static final enum SWITCH_CAMERA:Lcom/android/phone/InVTCallScreen$FocusedButton;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16470
    new-instance v0, Lcom/android/phone/InVTCallScreen$FocusedButton;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$FocusedButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$FocusedButton;->NONE:Lcom/android/phone/InVTCallScreen$FocusedButton;

    new-instance v0, Lcom/android/phone/InVTCallScreen$FocusedButton;

    const-string v1, "SWITCH_CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallScreen$FocusedButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$FocusedButton;->SWITCH_CAMERA:Lcom/android/phone/InVTCallScreen$FocusedButton;

    new-instance v0, Lcom/android/phone/InVTCallScreen$FocusedButton;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallScreen$FocusedButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$FocusedButton;->HIDE:Lcom/android/phone/InVTCallScreen$FocusedButton;

    new-instance v0, Lcom/android/phone/InVTCallScreen$FocusedButton;

    const-string v1, "END_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallScreen$FocusedButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$FocusedButton;->END_CALL:Lcom/android/phone/InVTCallScreen$FocusedButton;

    .line 16469
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/InVTCallScreen$FocusedButton;

    sget-object v1, Lcom/android/phone/InVTCallScreen$FocusedButton;->NONE:Lcom/android/phone/InVTCallScreen$FocusedButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InVTCallScreen$FocusedButton;->SWITCH_CAMERA:Lcom/android/phone/InVTCallScreen$FocusedButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallScreen$FocusedButton;->HIDE:Lcom/android/phone/InVTCallScreen$FocusedButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallScreen$FocusedButton;->END_CALL:Lcom/android/phone/InVTCallScreen$FocusedButton;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/InVTCallScreen$FocusedButton;->$VALUES:[Lcom/android/phone/InVTCallScreen$FocusedButton;

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
    .line 16469
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallScreen$FocusedButton;
    .registers 2
    .parameter

    .prologue
    .line 16469
    const-class v0, Lcom/android/phone/InVTCallScreen$FocusedButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InVTCallScreen$FocusedButton;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InVTCallScreen$FocusedButton;
    .registers 1

    .prologue
    .line 16469
    sget-object v0, Lcom/android/phone/InVTCallScreen$FocusedButton;->$VALUES:[Lcom/android/phone/InVTCallScreen$FocusedButton;

    invoke-virtual {v0}, [Lcom/android/phone/InVTCallScreen$FocusedButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallScreen$FocusedButton;

    return-object v0
.end method
