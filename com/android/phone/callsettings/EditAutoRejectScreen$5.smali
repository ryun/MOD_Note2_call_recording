.class Lcom/android/phone/callsettings/EditAutoRejectScreen$5;
.super Ljava/lang/Object;
.source "EditAutoRejectScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectScreen;->alertdialogSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 419
    packed-switch p2, :pswitch_data_54

    .line 439
    :goto_4
    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    #getter for: Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->access$000(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    iget-object v2, v2, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 440
    :goto_16
    return-void

    .line 421
    :pswitch_17
    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->isAdded()Z

    move-result v1

    if-nez v1, :cond_27

    .line 422
    const-string v1, "EditAutoRejectScreen"

    const-string v2, "Fragment finished. We ignore alertdialogSearch."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 425
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "contacts.com.sec.android.app.dialertab.calllog.LogsSelectActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "OPTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 430
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_39
    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->isAdded()Z

    move-result v1

    if-nez v1, :cond_49

    .line 431
    const-string v1, "EditAutoRejectScreen"

    const-string v2, "Fragment finished. We ignore alertdialogSearch."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 434
    :cond_49
    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-static {}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->access$200()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 419
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_17
        :pswitch_39
    .end packed-switch
.end method
