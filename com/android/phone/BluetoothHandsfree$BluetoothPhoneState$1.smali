.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;
.super Landroid/os/Handler;
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
    .line 974
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 977
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_50

    .line 1000
    :cond_5
    :goto_5
    return-void

    .line 979
    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    .line 980
    .local v1, result:Landroid/bluetooth/AtCommandResult;
    if-eqz v1, :cond_5

    .line 981
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v3, v3, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_5

    .line 985
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :pswitch_1a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    .line 987
    .local v2, state:Landroid/telephony/ServiceState;
    if-eqz v2, :cond_5

    .line 988
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v4

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V

    goto :goto_5

    .line 993
    .end local v2           #state:Landroid/telephony/ServiceState;
    :pswitch_30
    const/4 v0, 0x0

    .line 994
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/Connection;

    if-eqz v3, :cond_43

    .line 995
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 997
    .restart local v0       #connection:Lcom/android/internal/telephony/Connection;
    :cond_43
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v4

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    invoke-static {v3, v4, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V

    goto :goto_5

    .line 977
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_30
        :pswitch_6
        :pswitch_30
    .end packed-switch
.end method
