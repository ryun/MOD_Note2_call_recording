.class Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GlobalNetworkSelectAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v3, 0xa

    .line 88
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    #getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    #getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    #getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$100(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->finish()V

    .line 95
    return-void
.end method
