.class Lcom/android/phone/BluetoothAtPhonebook$3;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .registers 2
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 9
    .parameter "args"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$700(Lcom/android/phone/BluetoothAtPhonebook;)I

    move-result v3

    if-eq v3, v6, :cond_17

    .line 305
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 337
    :goto_16
    return-object v0

    .line 311
    :cond_17
    array-length v3, p1

    if-lt v3, v4, :cond_20

    aget-object v3, p1, v5

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_26

    .line 312
    :cond_20
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_16

    .line 314
    :cond_26
    aget-object v3, p1, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 317
    .local v1, index1:I
    array-length v3, p1

    if-ne v3, v4, :cond_60

    .line 318
    move v2, v1

    .line 325
    .local v2, index2:I
    :goto_32
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I

    .line 326
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I

    .line 327
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$902(Lcom/android/phone/BluetoothAtPhonebook;Z)Z

    .line 329
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->checkAccessPermission()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$1000(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 330
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z
    invoke-static {v3, v5}, Lcom/android/phone/BluetoothAtPhonebook;->access$902(Lcom/android/phone/BluetoothAtPhonebook;Z)Z

    .line 331
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$1100(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 332
    .local v0, atResult:Landroid/bluetooth/AtCommandResult;
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothAtPhonebook;->access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I

    move-result v4

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I

    goto :goto_16

    .line 319
    .end local v0           #atResult:Landroid/bluetooth/AtCommandResult;
    .end local v2           #index2:I
    :cond_60
    aget-object v3, p1, v4

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_73

    .line 320
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_16

    .line 322
    :cond_73
    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2       #index2:I
    goto :goto_32

    .line 337
    :cond_7c
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_16
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 6

    .prologue
    .line 349
    const-string v2, "SM"

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 350
    const/4 v1, 0x0

    .line 359
    .local v1, size:I
    :goto_17
    if-nez v1, :cond_1a

    .line 362
    const/4 v1, 0x1

    .line 364
    :cond_1a
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBR: (1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),30,30"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .end local v1           #size:I
    :goto_38
    return-object v2

    .line 352
    :cond_39
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    .line 353
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_54

    .line 354
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_38

    .line 356
    :cond_54
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .restart local v1       #size:I
    goto :goto_17
.end method
