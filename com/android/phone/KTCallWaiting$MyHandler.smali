.class Lcom/android/phone/KTCallWaiting$MyHandler;
.super Landroid/os/Handler;
.source "KTCallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/KTCallWaiting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallWaiting;


# direct methods
.method private constructor <init>(Lcom/android/phone/KTCallWaiting;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/KTCallWaiting;Lcom/android/phone/KTCallWaiting$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallWaiting$MyHandler;-><init>(Lcom/android/phone/KTCallWaiting;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 411
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_30

    .line 412
    const-string v2, "KTCallWaiting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lcom/android/phone/KTCallWaiting;->showReturnError(Ljava/lang/Throwable;)V

    .line 414
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    invoke-virtual {v2, v5}, Lcom/android/phone/KTCallWaiting;->handleSetCallWaitingResult(I)V

    .line 420
    :goto_2f
    return-void

    .line 416
    :cond_30
    const-string v2, "KTCallWaiting"

    const-string v3, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v5

    add-int/lit8 v1, v2, 0x1

    .line 418
    .local v1, result:I
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    invoke-virtual {v2, v1}, Lcom/android/phone/KTCallWaiting;->handleGetCallWaitingResult(I)V

    goto :goto_2f
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 423
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 425
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_30

    .line 426
    const-string v1, "KTCallWaiting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lcom/android/phone/KTCallWaiting;->showReturnError(Ljava/lang/Throwable;)V

    .line 428
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/KTCallWaiting;->handleSetCallWaitingResult(I)V

    .line 433
    :goto_2f
    return-void

    .line 430
    :cond_30
    const-string v1, "KTCallWaiting"

    const-string v2, "handleSetCallWaitingResponse: CW state successfully queried."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/KTCallWaiting;->handleSetCallWaitingResult(I)V

    goto :goto_2f
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 398
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 406
    :goto_5
    return-void

    .line 400
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallWaiting$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 403
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallWaiting$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 398
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
