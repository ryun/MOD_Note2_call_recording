.class Lcom/android/phone/callsettings/VideoCallBarring$12;
.super Landroid/os/Handler;
.source "VideoCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/VideoCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mNetworkServiceHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->isAdded()Z

    move-result v0

    if-nez v0, :cond_68

    .line 1172
    const-class v0, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkServiceHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_67
    :goto_67
    return-void

    .line 1176
    :cond_68
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b2

    goto :goto_67

    .line 1178
    :sswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1179
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_67

    .line 1180
    invoke-static {}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1181
    const-string v1, "mNetworkServiceHandler: network available for queries."

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2200(Ljava/lang/String;)V

    .line 1184
    :cond_87
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$100(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2300(Lcom/android/phone/callsettings/VideoCallBarring;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1400(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_67

    .line 1192
    :sswitch_a0
    invoke-static {}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1193
    const-string v0, "mNetworkServiceHandler: cancel query requested."

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2200(Ljava/lang/String;)V

    .line 1194
    :cond_ab
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->dismissCallWaiting()V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2400(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto :goto_67

    .line 1176
    nop

    :sswitch_data_b2
    .sparse-switch
        0x64 -> :sswitch_6e
        0x258 -> :sswitch_a0
    .end sparse-switch
.end method
