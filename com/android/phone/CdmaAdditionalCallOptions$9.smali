.class Lcom/android/phone/CdmaAdditionalCallOptions$9;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$9;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 708
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 709
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 710
    :cond_6
    const/4 v0, 0x0

    return v0
.end method
