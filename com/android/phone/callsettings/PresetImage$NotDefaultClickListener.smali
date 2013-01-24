.class Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PresetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotDefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x2

    .line 294
    const-string v3, "rearrange_preset_image_setting"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 295
    if-le p2, v4, :cond_c

    const/4 p2, 0x2

    .line 298
    :cond_c
    if-nez p2, :cond_70

    .line 300
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 301
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-boolean v4, v4, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 302
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clickable attr. for the Default image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_path"

    const-string v5, "data/data/com.android.phone/files/preset_defaultimage.png"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v6, 0x7f0e02a8

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f0201ec

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 333
    :goto_6f
    return-void

    .line 310
    :cond_70
    const/4 v3, 0x1

    if-ne p2, v3, :cond_81

    .line 312
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x32

    invoke-virtual {v3, v0, v4}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6f

    .line 314
    .end local v0           #intent:Landroid/content/Intent;
    :cond_81
    if-ne p2, v4, :cond_91

    .line 316
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x34

    invoke-virtual {v3, v0, v4}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6f

    .line 318
    .end local v0           #intent:Landroid/content/Intent;
    :cond_91
    const/4 v3, 0x3

    if-ne p2, v3, :cond_a2

    .line 320
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 321
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x33

    invoke-virtual {v3, v0, v4}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6f

    .line 324
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a2
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J
    invoke-static {v3}, Lcom/android/phone/callsettings/PresetImage;->access$800(Lcom/android/phone/callsettings/PresetImage;)J

    move-result-wide v1

    .line 326
    .local v1, sizeLimit:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_bc

    .line 327
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v3, v1, v2}, Lcom/android/phone/callsettings/PresetImage;->access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;

    move-result-object v0

    .line 328
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v4, 0x35

    invoke-virtual {v3, v0, v4}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6f

    .line 330
    .end local v0           #intent:Landroid/content/Intent;
    :cond_bc
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v5, 0x7f0e02a3

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_6f
.end method
