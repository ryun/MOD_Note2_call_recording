.class Lcom/android/phone/callsettings/EditAutoRejectScreen$6;
.super Ljava/lang/Object;
.source "EditAutoRejectScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectScreen;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 595
    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$6;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$6;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    #getter for: Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->access$000(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$6;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 598
    return-void
.end method
