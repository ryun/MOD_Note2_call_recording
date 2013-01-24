.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->makeAreaCodeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 455
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 459
    .local v2, value:I
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, data:Ljava/lang/String;
    move-object v1, v0

    .line 461
    .local v1, tempareaCode:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2c

    .line 464
    const-string v0, ""

    .line 466
    :cond_2c
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_value"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;ILjava/lang/String;)V

    .line 469
    return-void
.end method
