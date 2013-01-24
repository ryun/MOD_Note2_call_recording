.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 2
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1217
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1218
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1321
    .end local v1           #msg:Landroid/os/Message;
    :cond_2c
    :goto_2c
    return-void

    .line 1219
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SIG_STR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1221
    :cond_45
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    invoke-virtual {v4, v8, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1222
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c

    .line 1224
    .end local v1           #msg:Landroid/os/Message;
    :cond_5d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1226
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1230
    .local v3, state:I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1235
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2c

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_91

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1239
    :cond_91
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 1241
    if-nez v3, :cond_ae

    .line 1242
    :try_start_98
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1243
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v6, 0xb

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1259
    :goto_a9
    monitor-exit v5

    goto :goto_2c

    :catchall_ab
    move-exception v4

    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_ab

    throw v4

    .line 1245
    :cond_ae
    :try_start_ae
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_ab

    goto :goto_a9

    .line 1260
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #state:I
    :cond_b6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c9

    .line 1262
    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1263
    .restart local v3       #state:I
    const-string v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1265
    .local v2, oldState:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v6, v6, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    .line 1266
    :try_start_d3
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v7, v3}, Lcom/android/phone/BluetoothHandsfree;->access$602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1267
    if-ne v2, v8, :cond_1a9

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    if-ne v7, v9, :cond_1a9

    .line 1269
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-eqz v7, :cond_1a9

    .line 1270
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-eqz v7, :cond_1a9

    .line 1271
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 1272
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v7

    if-eqz v7, :cond_111

    const-string v7, "A2DP suspended, completing SCO"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1275
    :cond_111
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1276
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1af

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_1af

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1af

    .line 1279
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    if-nez v7, :cond_18e

    .line 1280
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1281
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1282
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v7

    if-eqz v7, :cond_162

    const-string v7, "+BCS:2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1283
    :cond_162
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v8, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1284
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "+BCS:2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1285
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1286
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1293
    .end local v1           #msg:Landroid/os/Message;
    :cond_18e
    :goto_18e
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-nez v7, :cond_1a9

    .line 1294
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v8, v8, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v8

    if-ne v10, v8, :cond_1c7

    :goto_1a6
    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v7, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;Z)V

    .line 1301
    :cond_1a9
    monitor-exit v6

    goto/16 :goto_2c

    :catchall_1ac
    move-exception v4

    monitor-exit v6
    :try_end_1ae
    .catchall {:try_start_d3 .. :try_end_1ae} :catchall_1ac

    throw v4

    .line 1290
    :cond_1af
    :try_start_1af
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    if-eqz v7, :cond_18e

    .line 1291
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v7

    const-string v8, "bt_samplerate=8000"

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_1c6
    .catchall {:try_start_1af .. :try_end_1c6} :catchall_1ac

    goto :goto_18e

    :cond_1c7
    move v4, v5

    .line 1294
    goto :goto_1a6

    .line 1303
    .end local v2           #oldState:I
    .end local v3           #state:I
    :cond_1c9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1305
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/phone/BluetoothAtPhonebook;->handleAccessPermissionResult(Landroid/content/Intent;)V

    goto/16 :goto_2c
.end method
