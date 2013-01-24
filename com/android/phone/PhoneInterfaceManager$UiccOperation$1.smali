.class Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 2034
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 2037
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2038
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_60

    .line 2054
    :goto_9
    return-void

    .line 2043
    :pswitch_a
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UICC operation complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    monitor-enter v2

    .line 2045
    :try_start_27
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->access$902(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Z)Z

    .line 2046
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_38

    .line 2047
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->access$1002(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    :cond_38
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_56

    .line 2049
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_56
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2051
    monitor-exit v2

    goto :goto_9

    :catchall_5d
    move-exception v1

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_5d

    throw v1

    .line 2038
    :pswitch_data_60
    .packed-switch 0x65
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
