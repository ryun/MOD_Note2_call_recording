.class Lcom/android/phone/callsettings/IpCall$11;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .registers 2
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v1

    if-nez v1, :cond_10

    .line 825
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v2, "Fragment finished. We ignore onClick."

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 839
    :goto_f
    return-void

    .line 829
    :cond_10
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 830
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v2, ""

    #calls: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 832
    :cond_33
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 833
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;I)V

    .line 834
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 835
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 836
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 838
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_f
.end method
