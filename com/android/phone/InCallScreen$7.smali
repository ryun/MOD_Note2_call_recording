.class Lcom/android/phone/InCallScreen$7;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/InCallScreen;->access$2902(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1017
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1018
    :cond_2b
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2902(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1023
    return-void
.end method
