.class Lcom/android/phone/InCallScreen$25;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V
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
    .line 5183
    iput-object p1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 5185
    iget-object v1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->showRadioOnDialog()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3600(Lcom/android/phone/InCallScreen;)V

    .line 5186
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5188
    iget-object v1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5192
    iget-object v1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 5193
    iget-object v1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v1, v2, :cond_40

    .line 5194
    iget-object v1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 5196
    :cond_40
    return-void
.end method
