.class Lcom/android/phone/BluetoothHandsfree$20;
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
    .line 4446
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 4450
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 4451
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 4452
    :cond_16
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    .line 4454
    :goto_1e
    return-object v1

    :cond_1f
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_1e
.end method
