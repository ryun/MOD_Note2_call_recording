.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;->val$input:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 646
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 650
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 654
    const/4 v0, 0x1

    .line 655
    .local v0, enablePositiveButton:Z
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 656
    :cond_1d
    const/4 v0, 0x0

    .line 658
    :cond_1e
    invoke-static {}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 659
    invoke-static {}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 660
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$202(Z)Z

    .line 662
    :cond_34
    return-void
.end method
