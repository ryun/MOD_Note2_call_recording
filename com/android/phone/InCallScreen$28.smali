.class Lcom/android/phone/InCallScreen$28;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 5211
    iput-object p1, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 5213
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_2d

    .line 5214
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5215
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)V

    .line 5223
    :cond_2d
    :goto_2d
    return-void

    .line 5217
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 5218
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5219
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2602(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_2d
.end method
