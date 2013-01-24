.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->createAlarmCustomizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

.field final synthetic val$mainView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Landroid/widget/LinearLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->val$mainView:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->val$mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 722
    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$202(Z)Z

    .line 723
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 724
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I
    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 725
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    .line 726
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    const/4 v1, 0x6

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 728
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v1

    #calls: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateRemind(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$600(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)V

    .line 729
    return-void
.end method
