.class Lcom/android/phone/BluetoothHandsfree$34;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 4736
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 9
    .parameter "args"

    .prologue
    const/4 v2, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4742
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "Bluetooth HS/HF"

    const-string v4, "Receiving AT+BIA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    :cond_10
    array-length v3, p1

    if-le v3, v2, :cond_30

    .line 4744
    .local v2, size:I
    :goto_13
    const/4 v0, 0x0

    .local v0, ai:I
    const/4 v1, 0x1

    .local v1, ii:I
    :goto_15
    if-ge v0, v2, :cond_41

    .line 4745
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2b

    .line 4746
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_32

    .line 4747
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    aput-boolean v6, v3, v1

    .line 4744
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 4743
    .end local v0           #ai:I
    .end local v1           #ii:I
    .end local v2           #size:I
    :cond_30
    array-length v2, p1

    goto :goto_13

    .line 4748
    .restart local v0       #ai:I
    .restart local v1       #ii:I
    .restart local v2       #size:I
    :cond_32
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2b

    .line 4749
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    aput-boolean v5, v3, v1

    goto :goto_2b

    .line 4753
    :cond_41
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v3
.end method
