.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;
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
    .line 878
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 881
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v1

    if-nez v1, :cond_43

    .line 882
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-lez v1, :cond_44

    move v1, v2

    :goto_15
    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 883
    const v1, 0x7f09002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object v0, v1

    check-cast v0, Landroid/widget/CheckBox;

    .line 885
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_46

    :goto_29
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 886
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 887
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_videocall_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 895
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_43
    :goto_43
    return-void

    :cond_44
    move v1, v3

    .line 882
    goto :goto_15

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_46
    move v3, v2

    .line 885
    goto :goto_29

    .line 891
    :cond_48
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_43
.end method
