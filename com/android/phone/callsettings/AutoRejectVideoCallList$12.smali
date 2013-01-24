.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteDialog()V
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
    .line 537
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

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

    .line 539
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 540
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteAutoRejectNumber(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)V

    .line 541
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 542
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1502(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 543
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 545
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 546
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateCount()V
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    .line 547
    return-void
.end method
