.class Lcom/android/phone/callsettings/AutoRejectList$7;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 427
    const/4 v2, 0x0

    .line 429
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$800(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_d
    const/4 v3, -0x1

    if-le v1, v3, :cond_40

    .line 430
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$800(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 431
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 432
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1200(Lcom/android/phone/callsettings/AutoRejectList;I)V

    .line 433
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 434
    const/4 v2, 0x1

    .line 429
    .end local v0           #del_id:I
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 438
    :cond_40
    if-nez v2, :cond_4a

    .line 440
    const-string v3, "AutoRejectList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_49
    return-void

    .line 444
    :cond_4a
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1002(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 445
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const v5, 0x7f0e034a

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1400(Lcom/android/phone/callsettings/AutoRejectList;)V

    goto :goto_49
.end method
