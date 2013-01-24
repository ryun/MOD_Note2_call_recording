.class Lcom/android/phone/callsettings/RejectCallWithMsg$9;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 903
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$9;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$9;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_11

    .line 906
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$9;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 911
    :goto_10
    return-void

    .line 910
    :cond_11
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$9;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    goto :goto_10
.end method
