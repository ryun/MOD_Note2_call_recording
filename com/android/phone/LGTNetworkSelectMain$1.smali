.class Lcom/android/phone/LGTNetworkSelectMain$1;
.super Landroid/os/Handler;
.source "LGTNetworkSelectMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkSelectMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMain;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 116
    const-string v0, "LGTNetworkSelectMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_bc

    .line 165
    :cond_22
    :goto_22
    return-void

    .line 121
    :sswitch_23
    const-string v0, "LGTNetworkSelectMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_22

    .line 124
    invoke-static {v3}, Lcom/android/phone/LGTNetworkSelectMain;->access$002(Z)Z

    .line 125
    const-string v0, "ril.autonetwork"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->successToast()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$100(Lcom/android/phone/LGTNetworkSelectMain;)V

    goto :goto_22

    .line 132
    :sswitch_53
    const-string v0, "LGTNetworkSelectMain"

    const-string v1, "EVENT_BAND_SELECTION_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v3}, Lcom/android/phone/LGTNetworkSelectMain;->access$202(Z)Z

    .line 134
    const-string v0, "ril.roaming.networkmode"

    const-string v1, "AUTO"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->successToast()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$100(Lcom/android/phone/LGTNetworkSelectMain;)V

    goto :goto_22

    .line 140
    :sswitch_6a
    const-string v0, "LGTNetworkSelectMain"

    const-string v1, "EVENT_EF_WRITE_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "gsm.sim.roaming"

    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #getter for: Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkSelectMain;->access$300(Lcom/android/phone/LGTNetworkSelectMain;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v3}, Lcom/android/phone/LGTNetworkSelectMain;->access$402(Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->successToast()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$100(Lcom/android/phone/LGTNetworkSelectMain;)V

    goto :goto_22

    .line 148
    :sswitch_85
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-virtual {v0, v4}, Lcom/android/phone/LGTNetworkSelectMain;->removeDialog(I)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #getter for: Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$500(Lcom/android/phone/LGTNetworkSelectMain;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    const-string v0, "LGTNetworkSelectMain"

    const-string v1, "EVENT_AUTO_SETTING_REBOOT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->rebootAfterAutoSetting()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$600(Lcom/android/phone/LGTNetworkSelectMain;)V

    goto :goto_22

    .line 155
    :sswitch_a2
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-virtual {v0, v4}, Lcom/android/phone/LGTNetworkSelectMain;->removeDialog(I)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->rebootAfterAutoSetting()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$600(Lcom/android/phone/LGTNetworkSelectMain;)V

    goto/16 :goto_22

    .line 159
    :sswitch_ae
    const-string v0, "LGTNetworkSelectMain"

    const-string v1, "EVENT_GET_PREFERRED_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$1;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/LGTNetworkSelectMain;->access$700(Lcom/android/phone/LGTNetworkSelectMain;Landroid/os/Message;)V

    goto/16 :goto_22

    .line 117
    :sswitch_data_bc
    .sparse-switch
        0xc8 -> :sswitch_53
        0x12c -> :sswitch_6a
        0x190 -> :sswitch_23
        0x1f4 -> :sswitch_23
        0x258 -> :sswitch_85
        0x259 -> :sswitch_a2
        0x2bc -> :sswitch_ae
    .end sparse-switch
.end method
