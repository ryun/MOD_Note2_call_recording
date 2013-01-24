.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

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

    .line 960
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 961
    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-lez v2, :cond_43

    move v2, v3

    :goto_11
    iput v2, v5, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 962
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f09002a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 964
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v2, :cond_45

    :goto_2e
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 965
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_videocall_mode"

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 978
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :goto_42
    return-void

    :cond_43
    move v2, v4

    .line 961
    goto :goto_11

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_45
    move v4, v3

    .line 964
    goto :goto_2e

    .line 968
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_47
    const/4 v1, 0x0

    .line 969
    .local v1, i:I
    :goto_48
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 970
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    if-ne v2, v3, :cond_95

    .line 975
    :cond_86
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1502(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 976
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->callMatchCriteriaToEditNum()V
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    goto :goto_42

    .line 969
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_48
.end method
