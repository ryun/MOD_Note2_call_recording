.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;
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

.field final synthetic val$alarm_hour:Ljava/lang/String;

.field final synthetic val$alarm_min:Ljava/lang/String;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$mainView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$button:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$alarm_min:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$alarm_hour:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$mainView:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 686
    const/4 v1, 0x0

    .line 688
    .local v1, alarm_input:I
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 689
    if-gtz v1, :cond_13

    .line 716
    :goto_12
    return-void

    .line 692
    :cond_13
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$button:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 693
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_24} :catch_9c

    move-result v4

    if-eqz v4, :cond_91

    .line 694
    mul-int/lit8 v1, v1, 0x1

    .line 703
    :cond_29
    :goto_29
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 704
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I
    invoke-static {v4, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$402(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 705
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/preference/ListPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I
    invoke-static {v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 706
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_70

    .line 707
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    const/4 v5, 0x6

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 708
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I
    invoke-static {v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v5

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mBackupRemind:I
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$702(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 711
    :cond_70
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customTimeSummary:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$802(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v5

    #calls: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateRemind(I)V
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$600(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)V

    .line 713
    invoke-static {v7}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$202(Z)Z

    .line 714
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_12

    .line 695
    :cond_91
    :try_start_91
    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_96} :catch_9c

    move-result v4

    if-eqz v4, :cond_29

    .line 696
    mul-int/lit8 v1, v1, 0x3c

    goto :goto_29

    .line 698
    .end local v3           #text:Ljava/lang/String;
    :catch_9c
    move-exception v2

    .line 699
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 700
    goto/16 :goto_12
.end method
