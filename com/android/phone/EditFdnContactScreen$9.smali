.class Lcom/android/phone/EditFdnContactScreen$9;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v5, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 730
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    .line 731
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 783
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 784
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 785
    return-void

    .line 732
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_4f

    .line 733
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_16

    .line 734
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_61

    .line 735
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_16

    .line 736
    :cond_61
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_151

    .line 740
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a3

    .line 741
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0e017f

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 742
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 743
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 744
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$9$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$9$1;-><init>(Lcom/android/phone/EditFdnContactScreen$9;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_16

    .line 749
    :cond_a3
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_dd

    .line 750
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0e0148

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 751
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 752
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 753
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$9$2;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$9$2;-><init>(Lcom/android/phone/EditFdnContactScreen$9;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_16

    .line 758
    :cond_dd
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->validatePin2(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 759
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0e0175

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 760
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 761
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 762
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$9$3;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$9$3;-><init>(Lcom/android/phone/EditFdnContactScreen$9;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_16

    .line 768
    :cond_119
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 769
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1200(Lcom/android/phone/EditFdnContactScreen;)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z
    invoke-static {v0, v8}, Lcom/android/phone/EditFdnContactScreen;->access$1302(Lcom/android/phone/EditFdnContactScreen;Z)Z

    .line 773
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 774
    .local v3, tempUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1500(Lcom/android/phone/EditFdnContactScreen;)Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/EditFdnContactScreen;->access$1400()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v8}, Lcom/android/phone/EditFdnContactScreen;->access$1600(Lcom/android/phone/EditFdnContactScreen;Z)V

    goto/16 :goto_16

    .line 779
    .end local v3           #tempUri:Landroid/net/Uri;
    :cond_151
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_16

    .line 780
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto/16 :goto_16
.end method
