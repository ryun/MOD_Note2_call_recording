.class Lcom/android/phone/callsettings/IpCall$4;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V
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
    .line 303
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 307
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_62

    .line 308
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 309
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;I)V

    .line 311
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 312
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v4, ""

    #calls: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 313
    :cond_47
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 315
    const/4 v2, 0x1

    .line 316
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)V

    .line 307
    .end local v0           #del_id:I
    :cond_5f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 319
    :cond_62
    if-nez v2, :cond_65

    .line 329
    :cond_64
    :goto_64
    return-void

    .line 322
    :cond_65
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v5, 0x7f0e034a

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 324
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)V

    .line 327
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_64

    .line 328
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_64
.end method
