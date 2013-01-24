.class Lcom/android/phone/callsettings/IpCallCdma$11;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;)V
    .registers 2
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

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
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCallCdma;->isAdded()Z

    move-result v1

    if-nez v1, :cond_10

    .line 825
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-string v2, "Fragment finished. We ignore onClick."

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 839
    :goto_f
    return-void

    .line 828
    :cond_10
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 829
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-string v2, ""

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$800(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 830
    :cond_33
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 831
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->deleteIpNumber(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$500(Lcom/android/phone/callsettings/IpCallCdma;I)V

    .line 832
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 833
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 836
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1000(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1100(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 838
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$11;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1100(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_f
.end method
