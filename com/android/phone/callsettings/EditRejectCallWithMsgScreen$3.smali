.class Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 215
    if-eqz p2, :cond_19

    .line 216
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 221
    :cond_18
    :goto_18
    return-void

    .line 218
    :cond_19
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_18
.end method
