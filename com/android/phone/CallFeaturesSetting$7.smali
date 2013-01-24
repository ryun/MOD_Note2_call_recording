.class Lcom/android/phone/CallFeaturesSetting$7;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1544
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1545
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_a6

    .line 1563
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_a3

    :cond_19
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1800(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_a3

    :cond_29
    const/4 v0, 0x1

    .line 1566
    .local v0, done:Z
    :goto_2a
    if-eqz v0, :cond_3d

    .line 1567
    const-string v2, "All VM reverts done"

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Ljava/lang/String;)V

    .line 1568
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v3, 0x25b

    #calls: Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->access$1900(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1569
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$2100(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1571
    :cond_3d
    return-void

    .line 1547
    .end local v0           #done:Z
    :pswitch_3e
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->access$902(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1548
    const-string v2, "VM revert complete msg"

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Ljava/lang/String;)V

    goto :goto_9

    .line 1551
    :pswitch_49
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1300(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8a

    .line 1553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in reverting fwd# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Ljava/lang/String;)V

    .line 1558
    :goto_84
    const-string v2, "FWD revert complete msg "

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Ljava/lang/String;)V

    goto :goto_9

    .line 1556
    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success in reverting fwd# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Ljava/lang/String;)V

    goto :goto_84

    .line 1563
    :cond_a3
    const/4 v0, 0x0

    goto :goto_2a

    .line 1545
    nop

    :pswitch_data_a6
    .packed-switch 0x1f4
        :pswitch_3e
        :pswitch_49
    .end packed-switch
.end method
