.class public Lcom/android/phone/PickImageFromGallery;
.super Landroid/app/Activity;
.source "PickImageFromGallery.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static myHandler:Landroid/os/Handler;


# instance fields
.field private selectImageFromGallery:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/phone/PickImageFromGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    return-void
.end method

.method protected static registerForImageGalleryResponse(Landroid/os/Handler;)V
    .registers 1
    .parameter "mHandlerforImageGallery"

    .prologue
    .line 98
    sput-object p0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method protected static unregisterForImageGalleryResponse()V
    .registers 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 109
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    iget-boolean v0, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    if-eqz v0, :cond_1f

    .line 75
    if-ne p2, v1, :cond_1b

    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 76
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 77
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/phone/PickImageFromGallery;->finish()V

    .line 87
    return-void

    .line 81
    :cond_1f
    if-ne p2, v1, :cond_1b

    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 82
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    .line 83
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 91
    const-string v0, "Ignore onConfigurationChanged for PickImageFromGallery"

    invoke-virtual {p0, v0}, Lcom/android/phone/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x800

    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "imageSelected"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    .line 43
    iget-boolean v2, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    if-eqz v2, :cond_51

    .line 44
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "select Image from the gallery "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "PickImageFromFallery : OnCreate()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, mImgIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "onlyJpg"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string v2, "senderIsVideoCall"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0, v4}, Lcom/android/phone/PickImageFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    .end local v0           #mImgIntent:Landroid/content/Intent;
    :goto_50
    return-void

    .line 57
    :cond_51
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "select Video from the gallery "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, mVideoIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "only3gp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string v2, "senderIsVideoCall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1, v4}, Lcom/android/phone/PickImageFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_50
.end method
