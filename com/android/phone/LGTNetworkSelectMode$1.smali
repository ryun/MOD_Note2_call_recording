.class Lcom/android/phone/LGTNetworkSelectMode$1;
.super Landroid/os/Handler;
.source "LGTNetworkSelectMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkSelectMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMode;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMode;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x4e20

    const/16 v5, 0x258

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 54
    const-string v0, "LGTNetworkSelectMode"

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

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_82

    .line 86
    :cond_26
    :goto_26
    return-void

    .line 59
    :sswitch_27
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_37

    .line 60
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    #getter for: Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMode;->access$000(Lcom/android/phone/LGTNetworkSelectMode;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_26

    .line 61
    :cond_37
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_26

    .line 62
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    #getter for: Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMode;->access$000(Lcom/android/phone/LGTNetworkSelectMode;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_26

    .line 68
    :sswitch_47
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "mHandler -- EVENT_AUTO_SELECT_DONE/AFTER_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/LGTNetworkSelectMode;->removeDialog(I)V

    .line 70
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    #calls: Lcom/android/phone/LGTNetworkSelectMode;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMode;->access$100(Lcom/android/phone/LGTNetworkSelectMode;)V

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_6b

    .line 72
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const v1, 0x7f0e05d2

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 74
    :cond_6b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_26

    .line 75
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const v1, 0x7f0e05d3

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 80
    :sswitch_7c
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$1;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    #calls: Lcom/android/phone/LGTNetworkSelectMode;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMode;->access$100(Lcom/android/phone/LGTNetworkSelectMode;)V

    goto :goto_26

    .line 55
    :sswitch_data_82
    .sparse-switch
        0x12c -> :sswitch_27
        0x190 -> :sswitch_27
        0x1f4 -> :sswitch_47
        0x258 -> :sswitch_47
        0x2bc -> :sswitch_7c
    .end sparse-switch
.end method
