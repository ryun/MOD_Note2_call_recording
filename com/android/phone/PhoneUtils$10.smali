.class final Lcom/android/phone/PhoneUtils$10;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 4564
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 4566
    const-string v0, "onError: playMediaTone error"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;Z)V

    .line 4567
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4568
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4569
    :cond_f
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 4570
    return v1
.end method
