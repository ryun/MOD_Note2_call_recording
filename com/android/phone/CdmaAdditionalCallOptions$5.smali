.class Lcom/android/phone/CdmaAdditionalCallOptions$5;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 422
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v1, 0x64

    .line 423
    .local v1, status:I
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage() msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 425
    :cond_22
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$400(Lcom/android/phone/CdmaAdditionalCallOptions;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 426
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_33

    const-string v2, "mVoiceCallVisible is False"

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 445
    :cond_33
    :goto_33
    return-void

    .line 430
    :cond_34
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5e

    goto :goto_33

    .line 432
    :pswitch_3a
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetCWMessage(Landroid/os/AsyncResult;)I
    invoke-static {v2, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$500(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/AsyncResult;)I

    move-result v1

    .line 433
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_49

    const-string v2, "mGetCallWaitingComplete: CW query done"

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 434
    :cond_49
    const/16 v2, 0x64

    if-eq v1, v2, :cond_55

    .line 435
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    sget-object v3, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$600(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    goto :goto_33

    .line 437
    :cond_55
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    sget-object v3, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    invoke-static {v2, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$000(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    goto :goto_33

    .line 430
    nop

    :pswitch_data_5e
    .packed-switch 0x190
        :pswitch_3a
    .end packed-switch
.end method
