.class Lcom/android/phone/LGTServiceProvider$3;
.super Landroid/os/Handler;
.source "LGTServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTServiceProvider;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTServiceProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_50

    .line 392
    :goto_5
    return-void

    .line 373
    :sswitch_6
    const-string v0, "LGTServiceProvider"

    const-string v1, "EVENT_EF_WRITE_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #getter for: Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LGTServiceProvider;->access$000(Lcom/android/phone/LGTServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 377
    :sswitch_1b
    const-string v0, "LGTServiceProvider"

    const-string v1, "EVENT_EF_WRITE_COMPLETED_DELAY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/LGTServiceProvider;->removeDialog(I)V

    .line 381
    const-string v0, "gsm.sim.roaming"

    iget-object v1, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #getter for: Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProvider;->access$100(Lcom/android/phone/LGTServiceProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    invoke-virtual {v0}, Lcom/android/phone/LGTServiceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05d2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #calls: Lcom/android/phone/LGTServiceProvider;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/LGTServiceProvider;->access$200(Lcom/android/phone/LGTServiceProvider;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #calls: Lcom/android/phone/LGTServiceProvider;->reboot()V
    invoke-static {v0}, Lcom/android/phone/LGTServiceProvider;->access$300(Lcom/android/phone/LGTServiceProvider;)V

    goto :goto_5

    .line 371
    :sswitch_data_50
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_1b
    .end sparse-switch
.end method
