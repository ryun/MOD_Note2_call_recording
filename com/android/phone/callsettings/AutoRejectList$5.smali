.class Lcom/android/phone/callsettings/AutoRejectList$5;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->initLayout(Landroid/view/View;)V
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
    .line 377
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 380
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 381
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->updateDeleteScreenItems()V
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)V

    .line 391
    :cond_f
    :goto_f
    return-void

    .line 383
    :cond_10
    if-nez p3, :cond_f

    .line 384
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_23

    move v0, v2

    .line 385
    .local v0, checked:I
    :cond_23
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iput v0, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 386
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    goto :goto_f
.end method
