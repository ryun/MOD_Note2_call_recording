.class Lcom/android/phone/CdmaAdditionalCallOptions$14;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->makeEQDialog()Landroid/app/Dialog;
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
    .line 919
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$14;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 921
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 922
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$14;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    .line 923
    return-void
.end method
