.class Lcom/android/phone/callsettings/IpCall$7;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .registers 2
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 776
    packed-switch p2, :pswitch_data_7a

    .line 797
    :goto_4
    return-void

    .line 778
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1202(Lcom/android/phone/callsettings/IpCall;I)I

    .line 779
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$1402(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 782
    const-string v0, "SELECTED_ITEM"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 785
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 786
    :cond_53
    const-string v0, "IP_CALL_LIST_SIZE"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-class v2, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0442

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCall;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_4

    .line 792
    :pswitch_74
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$7;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->deleteDialog()V

    goto :goto_4

    .line 776
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_74
    .end packed-switch
.end method
