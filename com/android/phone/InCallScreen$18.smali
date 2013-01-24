.class Lcom/android/phone/InCallScreen$18;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 4951
    iput-object p1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4953
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "cdma out barring"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 4955
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4956
    .local v0, mIM:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4957
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4958
    return-void
.end method
