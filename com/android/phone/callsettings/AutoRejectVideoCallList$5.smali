.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V
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
    .line 359
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

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

    .line 362
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 363
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateDeleteScreenItems()V
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    .line 373
    :cond_f
    :goto_f
    return-void

    .line 365
    :cond_10
    if-nez p3, :cond_f

    .line 366
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_23

    move v0, v2

    .line 367
    .local v0, checked:I
    :cond_23
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iput v0, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 368
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_videocall_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    goto :goto_f
.end method
