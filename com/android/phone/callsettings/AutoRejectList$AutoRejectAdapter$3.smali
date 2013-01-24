.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;
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
    .line 975
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 978
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v1

    if-nez v1, :cond_98

    .line 979
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%08X"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 981
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-lez v1, :cond_99

    move v1, v2

    :goto_6d
    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 982
    const v1, 0x7f09002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 984
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_9b

    :goto_7e
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 985
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_9d

    .line 986
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 994
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_98
    :goto_98
    return-void

    :cond_99
    move v1, v3

    .line 981
    goto :goto_6d

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_9b
    move v3, v2

    .line 984
    goto :goto_7e

    .line 989
    :cond_9d
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1900(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_98
.end method
