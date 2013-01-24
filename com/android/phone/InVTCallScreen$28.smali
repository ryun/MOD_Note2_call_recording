.class Lcom/android/phone/InVTCallScreen$28;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 9756
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 8
    .parameter "profile"
    .parameter "proxy"

    .prologue
    const/4 v4, 0x1

    .line 9758
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, p2}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 9759
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Got BluetoothHeadset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 9760
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 9763
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_5c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 9764
    const-string v1, "InVTCallScreen"

    const-string v2, " in onServiceConnected:: headset is null "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9765
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 9766
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSpk:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 9767
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSpk:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 9781
    :cond_5b
    :goto_5b
    return-void

    .line 9769
    :cond_5c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8d

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2600()Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 9770
    const-string v1, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9775
    const-string v1, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9776
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_5b

    .line 9779
    :cond_8d
    const-string v1, "InVTCallScreen"

    const-string v2, " in onServiceConnected:: All case failed "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 9784
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 9785
    return-void
.end method
