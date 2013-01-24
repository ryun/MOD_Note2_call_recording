.class Lcom/android/phone/CdmaCallForwardOptions$3;
.super Landroid/os/Handler;
.source "CdmaCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallForwardOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 615
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 616
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v2, 0x64

    .line 617
    .local v2, status:I
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGetAllCFOptionsComplete: ar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mag.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 619
    :cond_2f
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_be

    .line 675
    :goto_34
    return-void

    .line 621
    :pswitch_35
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v3, v0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I

    move-result v2

    .line 622
    const/4 v1, -0x1

    .line 623
    .local v1, nextReason:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_c4

    .line 653
    :cond_43
    :goto_43
    :pswitch_43
    const/16 v3, 0x64

    if-eq v2, v3, :cond_8e

    .line 654
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/CdmaCallForwardOptions;->access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    goto :goto_34

    .line 625
    :pswitch_4f
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v3, "mGetAllOptionsComplete: CFU query done, querying CFB."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 626
    :cond_5a
    const/4 v1, 0x1

    .line 627
    goto :goto_43

    .line 629
    :pswitch_5c
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 630
    const-string v3, "mGetAllOptionsComplete: CFB query done, querying CFNRy."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 632
    :cond_67
    const/4 v1, 0x2

    .line 633
    goto :goto_43

    .line 635
    :pswitch_69
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 636
    const-string v3, "mGetAllOptionsComplete: CFNRy query done, querying CFNRc."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 638
    :cond_74
    const/4 v1, 0x3

    .line 639
    goto :goto_43

    .line 641
    :pswitch_76
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 642
    const-string v3, "mGetAllOptionsComplete: CFNRc query done, querying CLIR."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_43

    .line 646
    :pswitch_82
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 647
    const-string v3, "mGetAllOptionsComplete: CFNRc query done, querying CANCEL ALL."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_43

    .line 656
    :cond_8e
    const/4 v3, -0x1

    if-eq v1, v3, :cond_97

    .line 657
    const-string v3, "mGetAllOptionsComplete: nextReason != -1"

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_34

    .line 660
    :cond_97
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 661
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 662
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 663
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 664
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 665
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 666
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    invoke-static {v3, v4}, Lcom/android/phone/CdmaCallForwardOptions;->access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto/16 :goto_34

    .line 619
    :pswitch_data_be
    .packed-switch 0x190
        :pswitch_35
    .end packed-switch

    .line 623
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_5c
        :pswitch_69
        :pswitch_76
        :pswitch_43
        :pswitch_43
        :pswitch_82
    .end packed-switch
.end method
