.class Lcom/android/phone/callsettings/VideoCallBarring$6;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$002(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1100(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 481
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1200(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 482
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1300(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    :goto_38
    return-void

    .line 484
    :cond_39
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1300(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$6;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38
.end method
