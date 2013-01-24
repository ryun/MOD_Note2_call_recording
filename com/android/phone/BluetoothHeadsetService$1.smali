.class Lcom/android/phone/BluetoothHeadsetService$1;
.super Landroid/os/Handler;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .parameter "msg"

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 157
    :try_start_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    .line 158
    .local v11, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    if-eqz v11, :cond_13

    iget-object v2, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1a

    .line 159
    :cond_13
    const-string v2, "info or info.mRemoteDevice is null in mIncomingConnectionHandler handleMessage()"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 160
    monitor-exit v16

    .line 264
    :goto_19
    return-void

    .line 162
    :cond_1a
    const/4 v15, 0x0

    .line 163
    .local v15, type:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1d2

    .line 172
    :goto_22
    const-string v2, "Bluetooth HSHFP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incoming rfcomm ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/android/phone/BluetoothHandsfree;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") connection from mRemoteDevice on channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v12, 0x0

    .line 177
    .local v12, priority:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 178
    if-gtz v12, :cond_b5

    .line 179
    const-string v2, "Bluetooth HSHFP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting incoming connection because priority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v1, Landroid/bluetooth/HeadsetBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v6, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 185
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V
    :try_end_8e
    .catchall {:try_start_7 .. :try_end_8e} :catchall_a3

    .line 187
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;Z)Z
    :try_end_a0
    .catchall {:try_start_8e .. :try_end_a0} :catchall_a3
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_a0} :catch_ac

    .line 192
    :goto_a0
    :try_start_a0
    monitor-exit v16

    goto/16 :goto_19

    .line 263
    .end local v1           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v11           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    .end local v12           #priority:I
    .end local v15           #type:I
    :catchall_a3
    move-exception v2

    monitor-exit v16
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_a3

    throw v2

    .line 165
    .restart local v11       #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    .restart local v15       #type:I
    :pswitch_a6
    const/4 v15, 0x1

    .line 166
    goto/16 :goto_22

    .line 168
    :pswitch_a9
    const/4 v15, 0x2

    goto/16 :goto_22

    .line 189
    .restart local v1       #headset:Landroid/bluetooth/HeadsetBase;
    .restart local v12       #priority:I
    :catch_ac
    move-exception v10

    .line 190
    .local v10, e:Landroid/os/RemoteException;
    :try_start_ad
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "notifyIncomingConnection"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 196
    .end local v1           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 198
    .local v9, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v14, 0x0

    .line 199
    .local v14, state:I
    if-eqz v9, :cond_d2

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v14

    .line 203
    :cond_d2
    packed-switch v14, :pswitch_data_1da

    .line 263
    :goto_d5
    monitor-exit v16

    goto/16 :goto_19

    .line 206
    :pswitch_d8
    new-instance v13, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v13, v2, v15, v11}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;ILandroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    .line 207
    .local v13, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catchall {:try_start_ad .. :try_end_ee} :catchall_a3

    .line 213
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_149

    invoke-static {}, Lcom/android/phone/BluetoothHeadsetService;->access$800()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_149

    .line 215
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "Incoming state is not bonded, try again after 100ms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 217
    .local v8, delayedMsg:Landroid/os/Message;
    const/4 v2, 0x2

    if-ne v15, v2, :cond_144

    .line 218
    const/16 v2, 0x65

    iput v2, v8, Landroid/os/Message;->what:I

    .line 221
    :goto_124
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/android/phone/BluetoothHeadsetService;->access$808()I

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_13a
    .catchall {:try_start_ee .. :try_end_13a} :catchall_a3
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_13a} :catch_13b

    goto :goto_d5

    .line 227
    .end local v8           #delayedMsg:Landroid/os/Message;
    :catch_13b
    move-exception v10

    .line 228
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_13c
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "notifyIncomingConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_13c .. :try_end_143} :catchall_a3

    goto :goto_d5

    .line 220
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v8       #delayedMsg:Landroid/os/Message;
    :cond_144
    const/16 v2, 0x64

    :try_start_146
    iput v2, v8, Landroid/os/Message;->what:I

    goto :goto_124

    .line 225
    .end local v8           #delayedMsg:Landroid/os/Message;
    :cond_149
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$802(I)I
    :try_end_14d
    .catchall {:try_start_146 .. :try_end_14d} :catchall_a3
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_14d} :catch_13b

    goto :goto_d5

    .line 233
    .end local v13           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :pswitch_14e
    :try_start_14e
    iget-object v2, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17e

    .line 235
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "Already attempting connect to device disconnecting RemoteDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v1, Landroid/bluetooth/HeadsetBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v6, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 241
    .restart local v1       #headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    goto/16 :goto_d5

    .line 248
    .end local v1           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v2, v15}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$1002(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v2, v11}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$1102(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :try_end_1a4
    .catchall {:try_start_14e .. :try_end_1a4} :catchall_a3

    .line 252
    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;Z)Z
    :try_end_1b6
    .catchall {:try_start_1a4 .. :try_end_1b6} :catchall_a3
    .catch Landroid/os/RemoteException; {:try_start_1a4 .. :try_end_1b6} :catch_1b8

    goto/16 :goto_d5

    .line 254
    :catch_1b8
    move-exception v10

    .line 255
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_1b9
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "notifyIncomingConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d5

    .line 259
    .end local v10           #e:Landroid/os/RemoteException;
    :pswitch_1c2
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "Already connected to device, disconnecting mRemoteDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    invoke-static {v2, v11}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    :try_end_1d0
    .catchall {:try_start_1b9 .. :try_end_1d0} :catchall_a3

    goto/16 :goto_d5

    .line 163
    :pswitch_data_1d2
    .packed-switch 0x64
        :pswitch_a6
        :pswitch_a9
    .end packed-switch

    .line 203
    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_14e
        :pswitch_1c2
    .end packed-switch
.end method
