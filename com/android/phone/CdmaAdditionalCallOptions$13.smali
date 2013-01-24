.class Lcom/android/phone/CdmaAdditionalCallOptions$13;
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
    .line 832
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$13;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$13;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "area_code_value"

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$13;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 837
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$13;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode()V
    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$200(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    .line 838
    return-void
.end method
