.class Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalNetworkSelectAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalNetworkSelectAlertDialog;
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
    .line 136
    iput-object p1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .parameter "serviceState"

    .prologue
    .line 140
    if-eqz p1, :cond_16

    .line 141
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 142
    .local v0, state:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 143
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v1, v1, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_16

    .line 144
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v1, v1, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    .end local v0           #state:I
    :cond_16
    return-void
.end method
