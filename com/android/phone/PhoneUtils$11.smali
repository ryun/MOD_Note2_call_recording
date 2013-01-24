.class final Lcom/android/phone/PhoneUtils$11;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 10
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 5183
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->access$802(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 5184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Got BluetoothHeadset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 5186
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 5187
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 5189
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_59

    .line 5190
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "answeringmode_auto_time"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5192
    .local v0, autoTimeMode:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5193
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "automatic_answering_enable_sharedpref"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5196
    .local v2, isOn:Z
    if-eqz v2, :cond_59

    .line 5197
    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    #calls: Lcom/android/phone/PhoneUtils;->startAutoAnswer(J)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->access$900(J)V

    .line 5202
    .end local v0           #autoTimeMode:I
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #isOn:Z
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_59
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 5203
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1000()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 5204
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->access$802(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 5206
    :cond_6f
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 5209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$802(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 5210
    return-void
.end method
