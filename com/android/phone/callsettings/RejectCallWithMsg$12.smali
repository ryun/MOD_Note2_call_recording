.class Lcom/android/phone/callsettings/RejectCallWithMsg$12;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteDialog()V
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
    .line 924
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v1

    if-nez v1, :cond_11

    .line 927
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string v2, "Fragment finished. We ignore onClick."

    const/4 v3, 0x1

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 944
    :goto_10
    return-void

    .line 930
    :cond_11
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 931
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V

    .line 932
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$700(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 933
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 934
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 936
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    .line 937
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 938
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->notifyDataSetInvalidated()V

    .line 939
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_10

    .line 941
    :cond_86
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 942
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$12;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_10
.end method
