.class Lcom/android/phone/CallCard$3;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .registers 2
    .parameter

    .prologue
    .line 3592
    iput-object p1, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 3594
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3596
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_d4

    .line 3632
    :goto_e
    return-void

    .line 3600
    :pswitch_f
    const-string v2, "CallCard"

    const-string v3, "SET_TOTAL_CALL_TIME_DONE"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_e

    .line 3605
    :pswitch_17
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_cb

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_cb

    .line 3607
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 3609
    .local v1, buf:[B
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_TOTAL_CALL_TIME_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-byte v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-byte v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    iget-object v2, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    const/16 v3, 0xc

    #calls: Lcom/android/phone/CallCard;->byteArrayToInt([BI)J
    invoke-static {v1, v3}, Lcom/android/phone/CallCard;->access$1400([BI)J

    move-result-wide v3

    #setter for: Lcom/android/phone/CallCard;->mTotalCallTime:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/CallCard;->access$1302(Lcom/android/phone/CallCard;J)J

    .line 3612
    iget-object v2, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->fgDuration:J
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$1500(Lcom/android/phone/CallCard;)J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b4

    .line 3613
    iget-object v2, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    iget-object v3, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->fgDuration:J
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1500(Lcom/android/phone/CallCard;)J

    move-result-wide v3

    div-long/2addr v3, v7

    invoke-static {v2, v3, v4}, Lcom/android/phone/CallCard;->access$1314(Lcom/android/phone/CallCard;J)J

    .line 3617
    :cond_89
    :goto_89
    const-string v2, "Call Time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total call time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mTotalCallTime:J
    invoke-static {v4}, Lcom/android/phone/CallCard;->access$1300(Lcom/android/phone/CallCard;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    iget-object v2, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->SetTotalCallTime()V
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$1700(Lcom/android/phone/CallCard;)V

    goto/16 :goto_e

    .line 3614
    :cond_b4
    iget-object v2, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->bgDuration:J
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$1600(Lcom/android/phone/CallCard;)J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_89

    .line 3615
    iget-object v2, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    iget-object v3, p0, Lcom/android/phone/CallCard$3;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->bgDuration:J
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1600(Lcom/android/phone/CallCard;)J

    move-result-wide v3

    div-long/2addr v3, v7

    invoke-static {v2, v3, v4}, Lcom/android/phone/CallCard;->access$1314(Lcom/android/phone/CallCard;J)J

    goto :goto_89

    .line 3623
    .end local v1           #buf:[B
    :cond_cb
    const-string v2, "CallCard"

    const-string v3, "GET_TOTAL_CALL_TIME_DONE error#2"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_e

    .line 3596
    :pswitch_data_d4
    .packed-switch 0x3f3
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method
