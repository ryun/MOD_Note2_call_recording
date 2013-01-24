.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    const/16 v4, 0x64

    .line 1022
    const/4 v0, 0x0

    .line 1024
    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 1025
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-ne v1, v2, :cond_98

    .line 1030
    :cond_41
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 1032
    if-nez v0, :cond_79

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$300(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 1033
    :cond_79
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1602(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 1035
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1002(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 1036
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/AutoRejectList;->removeDialog(I)V

    .line 1037
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/AutoRejectList;->showDialog(I)V

    .line 1039
    const/4 v1, 0x1

    .line 1042
    :goto_97
    return v1

    .line 1024
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1042
    :cond_9c
    const/4 v1, 0x0

    goto :goto_97
.end method
