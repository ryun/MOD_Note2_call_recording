.class Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 121
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 124
    return-void
.end method
