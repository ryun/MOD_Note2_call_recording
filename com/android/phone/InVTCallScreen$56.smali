.class Lcom/android/phone/InVTCallScreen$56;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;

.field final synthetic val$mDialogCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 12588
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$56;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-object p2, p0, Lcom/android/phone/InVTCallScreen$56;->val$mDialogCheckbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 12590
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$56;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videoAlertShowNeverAgain"

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$56;->val$mDialogCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12592
    return-void

    .line 12590
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
