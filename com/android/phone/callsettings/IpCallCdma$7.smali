.class Lcom/android/phone/callsettings/IpCallCdma$7;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;)V
    .registers 2
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 779
    packed-switch p2, :pswitch_data_54

    .line 797
    :goto_3
    return-void

    .line 781
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1202(Lcom/android/phone/callsettings/IpCallCdma;I)I

    .line 782
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$1402(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 785
    const-string v0, "SELECTED_ITEM"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 787
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-class v2, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0442

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCallCdma;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_3

    .line 792
    :pswitch_4e
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$7;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCallCdma;->deleteDialog()V

    goto :goto_3

    .line 779
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4e
    .end packed-switch
.end method
