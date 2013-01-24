.class Lcom/android/phone/callsettings/VideoCallBarring$11;
.super Landroid/os/Handler;
.source "VideoCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/VideoCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 787
    .line 788
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    check-cast v0, Landroid/os/AsyncResult;

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCBHandler() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->isAdded()Z

    move-result v1

    if-nez v1, :cond_77

    .line 794
    const-class v0, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCBHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_76
    :goto_76
    return-void

    .line 798
    :cond_77
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_120

    .line 850
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ne v0, v6, :cond_76

    .line 851
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto :goto_76

    .line 800
    :sswitch_8a
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v1, v0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1600(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;I)I

    move-result v0

    .line 802
    if-ne v0, v7, :cond_ad

    .line 804
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a5

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ne v0, v6, :cond_7c

    .line 806
    :cond_a5
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1700(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    goto :goto_7c

    .line 814
    :cond_ad
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v2, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1800(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_7c

    .line 820
    :sswitch_b5
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1900(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;)I

    move-result v0

    .line 822
    if-eq v0, v7, :cond_f1

    .line 823
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v2, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1800(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    .line 826
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2000(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ge v0, v5, :cond_e6

    .line 827
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$308(Lcom/android/phone/callsettings/VideoCallBarring;)I

    .line 828
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1700(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 829
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto :goto_7c

    .line 831
    :cond_e6
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2002(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    .line 832
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto :goto_7c

    .line 835
    :cond_f1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1700(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 838
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2000(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ge v0, v5, :cond_114

    .line 839
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$308(Lcom/android/phone/callsettings/VideoCallBarring;)I

    .line 840
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto/16 :goto_7c

    .line 842
    :cond_114
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2002(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    .line 843
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$11;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto/16 :goto_7c

    .line 798
    :sswitch_data_120
    .sparse-switch
        0x1 -> :sswitch_8a
        0x5 -> :sswitch_b5
    .end sparse-switch
.end method
