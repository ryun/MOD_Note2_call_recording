.class Lcom/android/phone/NetworkQueryService$2;
.super Lcom/android/phone/INetworkQueryService$Stub;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .registers 6
    .parameter "cb"

    .prologue
    .line 123
    if-eqz p1, :cond_39

    .line 125
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 126
    :try_start_7
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 127
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 145
    :goto_38
    monitor-exit v1

    .line 147
    :cond_39
    return-void

    .line 133
    :pswitch_3a
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$400(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v2, -0x2

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v0, v2}, Lcom/android/phone/NetworkQueryService;->access$302(Lcom/android/phone/NetworkQueryService;I)I

    .line 136
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const-string v2, "starting new query"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;Ljava/lang/String;Z)V

    goto :goto_38

    .line 145
    :catchall_5c
    move-exception v0

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    throw v0

    .line 141
    :pswitch_5f
    :try_start_5f
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const-string v2, "query already in progress"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;Ljava/lang/String;Z)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5c

    goto :goto_38

    .line 129
    :pswitch_data_68
    .packed-switch -0x2
        :pswitch_5f
        :pswitch_3a
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .registers 10
    .parameter "cb"

    .prologue
    .line 160
    if-eqz p1, :cond_30

    .line 161
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v4, v3, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 162
    :try_start_7
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregistering callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v6}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;Ljava/lang/String;Z)V

    .line 163
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v3, v3, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 164
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_7b

    .line 168
    :cond_30
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_7a

    .line 169
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_43
    sget v3, Lcom/android/phone/NetworkQueryService;->OEM_FUNCTION_ID_NETWORK:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 174
    sget v3, Lcom/android/phone/NetworkQueryService;->OEM_NETWORK_SCAN_CANCEL:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 175
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_99

    .line 180
    if-eqz v1, :cond_56

    .line 182
    :try_start_53
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_7e

    .line 190
    :cond_56
    :goto_56
    const-string v3, "NetworkQuery"

    const-string v4, "Canceling network scan"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v4, v3, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 193
    :try_start_62
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$400(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v6, v6, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 195
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_e4

    .line 198
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_7a
    return-void

    .line 164
    :catchall_7b
    move-exception v3

    :try_start_7c
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v3

    .line 183
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_7e
    move-exception v2

    .line 184
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopNetworkQuery : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$500(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 177
    .end local v2           #e:Ljava/io/IOException;
    :catch_99
    move-exception v2

    .line 178
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_9a
    const-string v3, "NetworkQuery"

    const-string v4, "IOException in stopNetworkQuery()"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_c2

    .line 180
    if-eqz v1, :cond_56

    .line 182
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_56

    .line 183
    :catch_a7
    move-exception v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopNetworkQuery : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$500(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 180
    .end local v2           #e:Ljava/io/IOException;
    :catchall_c2
    move-exception v3

    if-eqz v1, :cond_c8

    .line 182
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 186
    :cond_c8
    :goto_c8
    throw v3

    .line 183
    :catch_c9
    move-exception v2

    .line 184
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkQuery : close fail - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/NetworkQueryService;->access$500(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c8

    .line 195
    .end local v2           #e:Ljava/io/IOException;
    :catchall_e4
    move-exception v3

    :try_start_e5
    monitor-exit v4
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v3
.end method
