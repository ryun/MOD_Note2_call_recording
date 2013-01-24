.class Lcom/android/phone/callsettings/CaptureImageViewer$4;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 467
    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 468
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const v3, 0x7f0e03fe

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 470
    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const v3, 0x7f0e04f6

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 471
    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const v3, 0x7f0e01f8

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const v3, 0x7f0e01f9

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/CaptureImageViewer$4$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$4$2;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 517
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 519
    return-void
.end method
