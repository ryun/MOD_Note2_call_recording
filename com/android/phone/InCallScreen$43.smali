.class Lcom/android/phone/InCallScreen$43;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showCallRoamingGuardDialog(Ljava/lang/String;)V
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
    .line 7313
    iput-object p1, p0, Lcom/android/phone/InCallScreen$43;->this$0:Lcom/android/phone/InCallScreen;

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

    .line 7315
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7316
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setCallRoamingGuardDialog(Z)V

    .line 7317
    iget-object v1, p0, Lcom/android/phone/InCallScreen$43;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Z)Z

    .line 7318
    return-void
.end method
