.class Lcom/android/phone/InVTCallScreen$23;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 8731
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$23;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 8733
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$23;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 8734
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$23;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)V

    .line 8735
    return-void
.end method
