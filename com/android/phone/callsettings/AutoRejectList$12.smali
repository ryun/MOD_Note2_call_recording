.class Lcom/android/phone/callsettings/AutoRejectList$12;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->deleteDialog()V
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
    .line 571
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 573
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1600(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 574
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1200(Lcom/android/phone/callsettings/AutoRejectList;I)V

    .line 575
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1600(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1602(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 577
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 579
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1002(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 580
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->updateCount()V
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1700(Lcom/android/phone/callsettings/AutoRejectList;)V

    .line 581
    return-void
.end method
