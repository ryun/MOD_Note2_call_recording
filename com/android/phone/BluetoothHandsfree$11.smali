.class Lcom/android/phone/BluetoothHandsfree$11;
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
    .line 3958
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 2

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResultWithVoIP()Landroid/bluetooth/AtCommandResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$8300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 2

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$8400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method
