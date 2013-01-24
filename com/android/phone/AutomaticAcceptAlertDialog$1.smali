.class Lcom/android/phone/AutomaticAcceptAlertDialog$1;
.super Ljava/lang/Object;
.source "AutomaticAcceptAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutomaticAcceptAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog$1;->this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/AutomaticAcceptAlertDialog$1;->this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptAlertDialogInit()V

    return-void
.end method
