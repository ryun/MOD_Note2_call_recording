.class Lcom/android/phone/callsettings/RejectCallWithMsg$8;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 869
    packed-switch p2, :pswitch_data_92

    .line 899
    :goto_4
    return-void

    .line 871
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$502(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    .line 872
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$700(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$602(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 875
    const-string v0, "SELECTED_MESSAGE"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 878
    const v5, 0x7f0e02e8

    .line 879
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 880
    const v5, 0x7f0e0720

    .line 883
    :cond_4b
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 884
    const-string v1, "REMIND_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-class v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_4

    .line 887
    :cond_7c
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-class v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_4

    .line 894
    :pswitch_8b
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteDialog()V

    goto/16 :goto_4

    .line 869
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8b
    .end packed-switch
.end method
