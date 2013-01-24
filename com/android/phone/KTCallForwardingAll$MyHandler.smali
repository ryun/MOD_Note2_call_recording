.class Lcom/android/phone/KTCallForwardingAll$MyHandler;
.super Landroid/os/Handler;
.source "KTCallForwardingAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/KTCallForwardingAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingAll;


# direct methods
.method private constructor <init>(Lcom/android/phone/KTCallForwardingAll;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/KTCallForwardingAll;Lcom/android/phone/KTCallForwardingAll$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallForwardingAll$MyHandler;-><init>(Lcom/android/phone/KTCallForwardingAll;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 511
    const-string v4, "KTCallForwardingAll"

    const-string v5, "handleGetCFResponse: done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 515
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 516
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_36

    .line 517
    const-string v4, "KTCallForwardingAll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse: ar.exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v4, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Lcom/android/phone/KTCallForwardingAll;->showReturnError(Ljava/lang/Throwable;)Z

    .line 534
    :cond_35
    :goto_35
    return-void

    .line 520
    :cond_36
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v4

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 521
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v4, v1

    if-nez v4, :cond_48

    .line 522
    const-string v4, "KTCallForwardingAll"

    const-string v5, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 524
    :cond_48
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v1

    .local v3, length:I
    :goto_4a
    if-ge v2, v3, :cond_35

    .line 525
    const-string v4, "KTCallForwardingAll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v4, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    #getter for: Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I
    invoke-static {v4}, Lcom/android/phone/KTCallForwardingAll;->access$100(Lcom/android/phone/KTCallForwardingAll;)I

    move-result v4

    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_84

    .line 529
    iget-object v4, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/phone/KTCallForwardingAll;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 524
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 537
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 539
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2d

    .line 540
    const-string v2, "KTCallForwardingAll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v2, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lcom/android/phone/KTCallForwardingAll;->showReturnError(Ljava/lang/Throwable;)Z

    move-result v1

    .line 542
    .local v1, returnError:Z
    if-eqz v1, :cond_2d

    .line 550
    .end local v1           #returnError:Z
    :goto_2c
    return-void

    .line 547
    :cond_2d
    const-string v2, "KTCallForwardingAll"

    const-string v3, "handleSetCFResponse: re get"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    #getter for: Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/KTCallForwardingAll;->access$500(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iget v3, v3, Lcom/android/phone/KTCallForwardingAll;->reason:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iget v5, v5, Lcom/android/phone/KTCallForwardingAll;->reason:I

    const/4 v6, 0x1

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_2c
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 500
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 508
    :goto_5
    return-void

    .line 502
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 505
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 500
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
