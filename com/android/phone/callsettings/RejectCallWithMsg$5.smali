.class Lcom/android/phone/callsettings/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 350
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_4e

    .line 351
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 352
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V

    .line 354
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$700(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 355
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 356
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 357
    const/4 v2, 0x1

    .line 358
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 350
    .end local v0           #del_id:I
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 362
    :cond_4e
    if-nez v2, :cond_51

    .line 379
    :cond_50
    :goto_50
    return-void

    .line 367
    :cond_51
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const v5, 0x7f0e034a

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    .line 368
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 369
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->notifyDataSetInvalidated()V

    .line 370
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    :goto_7d
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 377
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_50

    .line 378
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_50

    .line 372
    :cond_9d
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 373
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7d
.end method
