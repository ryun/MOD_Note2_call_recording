.class final Lcom/android/phone/RcsShare$3;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RcsShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 776
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "player"

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 780
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 784
    :goto_6
    return-void

    .line 781
    :catch_7
    move-exception v0

    .line 782
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCompletion"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
