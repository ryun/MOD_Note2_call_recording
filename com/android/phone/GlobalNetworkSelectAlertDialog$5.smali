.class Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 112
    iput-object p1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    #getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$200(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v1, v1, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 115
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->finish()V

    .line 116
    return-void
.end method
