.class Lcom/android/phone/LGTNetworkSetting$5;
.super Landroid/os/Handler;
.source "LGTNetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSetting$5;->this$0:Lcom/android/phone/LGTNetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 463
    .local v2, error:I
    if-eqz v2, :cond_30

    .line 464
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception Occur!!!- error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 470
    .local v0, ar:Landroid/os/AsyncResult;
    :goto_2a
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_5e

    .line 484
    :goto_2f
    return-void

    .line 466
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_30
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "response"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    .line 467
    .local v1, buf:[B
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_2a

    .line 472
    .end local v1           #buf:[B
    :sswitch_42
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSetting$5;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #calls: Lcom/android/phone/LGTNetworkSetting;->selectedBandInformed(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/phone/LGTNetworkSetting;->access$300(Lcom/android/phone/LGTNetworkSetting;Landroid/os/AsyncResult;)V

    goto :goto_2f

    .line 475
    :sswitch_48
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSetting$5;->this$0:Lcom/android/phone/LGTNetworkSetting;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/LGTNetworkSetting;->displayBandSelectionResult(Ljava/lang/Throwable;)V
    invoke-static {v3, v4}, Lcom/android/phone/LGTNetworkSetting;->access$400(Lcom/android/phone/LGTNetworkSetting;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 478
    :sswitch_50
    const-string v3, "LGTNetworkSetting"

    const-string v4, "LGTNetworkSetting - EVENT_GET_PREFERRED_NETWORK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSetting$5;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #calls: Lcom/android/phone/LGTNetworkSetting;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/phone/LGTNetworkSetting;->access$500(Lcom/android/phone/LGTNetworkSetting;Landroid/os/Message;)V

    goto :goto_2f

    .line 470
    nop

    :sswitch_data_5e
    .sparse-switch
        0x64 -> :sswitch_42
        0xc8 -> :sswitch_48
        0x2bc -> :sswitch_50
    .end sparse-switch
.end method
