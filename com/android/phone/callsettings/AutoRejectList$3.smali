.class Lcom/android/phone/callsettings/AutoRejectList$3;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 356
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$700(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 359
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$800(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 360
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$800(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v0, :cond_26

    const/4 v2, 0x1

    :goto_20
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 360
    :cond_26
    const/4 v2, 0x0

    goto :goto_20

    .line 363
    :cond_28
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)V

    .line 364
    return-void
.end method
