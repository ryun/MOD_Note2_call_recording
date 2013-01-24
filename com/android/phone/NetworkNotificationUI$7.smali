.class Lcom/android/phone/NetworkNotificationUI$7;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 2
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 757
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 759
    packed-switch p2, :pswitch_data_50

    .line 772
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_2c
    return-void

    .line 763
    :pswitch_2d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2c

    .line 768
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_43
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v1, v2}, Lcom/android/phone/NetworkNotificationUI;->access$1202(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 769
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->NotifyNetworkRegistering()V
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$2700(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_2c

    .line 759
    nop

    :pswitch_data_50
    .packed-switch -0x2
        :pswitch_43
        :pswitch_2d
    .end packed-switch
.end method
