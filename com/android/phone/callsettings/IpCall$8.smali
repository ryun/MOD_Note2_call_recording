.class Lcom/android/phone/callsettings/IpCall$8;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 801
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v0

    if-nez v0, :cond_10

    .line 804
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 809
    :goto_f
    return-void

    .line 808
    :cond_10
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)V

    goto :goto_f
.end method
