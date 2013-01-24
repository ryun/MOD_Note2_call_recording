.class Lcom/android/phone/CdmaAdditionalCallOptions$12;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->makeAreaCodeDialog()Landroid/app/Dialog;
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
    .line 839
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 846
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 847
    .local v0, len:I
    if-lez v0, :cond_3d

    .line 848
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$12;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 851
    .end local v0           #len:I
    :cond_3d
    return-void
.end method
