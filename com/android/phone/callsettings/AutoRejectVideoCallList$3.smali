.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 338
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 341
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 342
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v0, :cond_26

    const/4 v2, 0x1

    :goto_20
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 342
    :cond_26
    const/4 v2, 0x0

    goto :goto_20

    .line 345
    :cond_28
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    .line 346
    return-void
.end method
