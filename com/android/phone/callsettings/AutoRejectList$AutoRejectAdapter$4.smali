.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 996
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 998
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 999
    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-lez v2, :cond_43

    move v2, v3

    :goto_11
    iput v2, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 1000
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$800(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f09002a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1002
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v2, :cond_45

    :goto_2e
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1003
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1016
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :goto_42
    return-void

    :cond_43
    move v2, v4

    .line 999
    goto :goto_11

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_45
    move v4, v3

    .line 1002
    goto :goto_2e

    .line 1006
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_47
    const/4 v1, 0x0

    .line 1007
    .local v1, i:I
    :goto_48
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 1008
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-ne v2, v3, :cond_95

    .line 1013
    :cond_86
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1602(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 1014
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->callMatchCriteriaToEditNum()V
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1500(Lcom/android/phone/callsettings/AutoRejectList;)V

    goto :goto_42

    .line 1007
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_48
.end method
