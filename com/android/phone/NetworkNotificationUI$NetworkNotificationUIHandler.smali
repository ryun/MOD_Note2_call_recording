.class Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
.super Landroid/os/Handler;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkNotificationUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 2
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 741
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 751
    :cond_5
    :goto_5
    return-void

    .line 743
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_network_transition"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 746
    const-string v0, "NetworkNotificationUI"

    const-string v1, "display showNoServiceAndManualSelecionDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2600(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_5

    .line 741
    :pswitch_data_2e
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
