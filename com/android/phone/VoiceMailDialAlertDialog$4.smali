.class Lcom/android/phone/VoiceMailDialAlertDialog$4;
.super Ljava/lang/Object;
.source "VoiceMailDialAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VoiceMailDialAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailDialAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/phone/VoiceMailDialAlertDialog$4;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/phone/VoiceMailDialAlertDialog$4;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/VoiceMailDialAlertDialog;->finish()V

    .line 116
    return-void
.end method
