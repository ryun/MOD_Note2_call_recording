.class Lcom/android/phone/PreferredNetworkDetailView$10;
.super Ljava/lang/Object;
.source "PreferredNetworkDetailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferredNetworkDetailView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworkDetailView;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworkDetailView;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/phone/PreferredNetworkDetailView$10;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView$10;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/PreferredNetworkDetailView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 429
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView$10;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v1, v1, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 430
    return-void
.end method
