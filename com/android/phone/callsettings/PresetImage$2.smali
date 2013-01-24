.class Lcom/android/phone/callsettings/PresetImage$2;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PresetImage;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 247
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v3, v3, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v3, v3, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 248
    const-string v3, "PresetImage"

    const-string v4, " Change Preset Dialog is Showing."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_18
    return-void

    .line 252
    :cond_19
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 254
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e02a1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 256
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, preset_Name:Ljava/lang/String;
    const-string v3, "photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 261
    :cond_46
    const-string v3, "PresetImage"

    const-string v4, "current preset name != defaul image"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v3, "rearrange_preset_image_setting"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 263
    const v3, 0x7f08004a

    new-instance v4, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v4, v5, v6}, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    :goto_62
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 284
    const v3, 0x7f0e02cd

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    goto :goto_18

    .line 265
    :cond_75
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$100(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v4, v5, v6}, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_62

    .line 269
    :cond_86
    const-string v3, "PresetImage"

    const-string v4, "current preset name == defaul image"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v3, "rearrange_preset_image_setting"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 271
    const v3, 0x7f08004b

    new-instance v4, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v4, v5, v6}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_62

    .line 273
    :cond_a3
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$300(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v4, v5, v6}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_62
.end method
