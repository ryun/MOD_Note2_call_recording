.class final Lcom/android/phone/RcsShare$4;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 788
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 791
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 792
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 796
    :goto_6
    const/4 v1, 0x0

    return v1

    .line 793
    :catch_8
    move-exception v0

    .line 794
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onError"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
