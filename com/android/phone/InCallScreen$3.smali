.class Lcom/android/phone/InCallScreen$3;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "pos"

    .prologue
    const/4 v4, 0x1

    .line 715
    packed-switch p2, :pswitch_data_94

    .line 747
    :goto_4
    invoke-static {v4, v4}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 748
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 749
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 750
    :goto_f
    return-void

    .line 719
    :pswitch_10
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_direction"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_eq_list_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 724
    :pswitch_28
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_diagnosis"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_79

    .line 726
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 727
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0386

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 728
    const v1, 0x7f0e0388

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 729
    const v1, 0x7f0e002a

    new-instance v2, Lcom/android/phone/InCallScreen$3$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$3$1;-><init>(Lcom/android/phone/InCallScreen$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$2602(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 735
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 736
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 737
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_f

    .line 740
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_79
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_direction"

    add-int/lit8 v3, p2, -0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_eq_list_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 715
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method
