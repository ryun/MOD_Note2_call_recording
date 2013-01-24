.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 409
    const/4 v2, 0x0

    .line 411
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_d
    const/4 v3, -0x1

    if-le v1, v3, :cond_40

    .line 412
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 413
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 414
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteAutoRejectNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)V

    .line 415
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 416
    const/4 v2, 0x1

    .line 411
    .end local v0           #del_id:I
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 420
    :cond_40
    if-nez v2, :cond_4a

    .line 422
    const-string v3, "AutoRejectVideoCallList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_49
    return-void

    .line 426
    :cond_4a
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 427
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const v5, 0x7f0e034a

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    goto :goto_49
.end method
