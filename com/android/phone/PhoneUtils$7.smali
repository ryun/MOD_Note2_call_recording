.class final Lcom/android/phone/PhoneUtils$7;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 4373
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 4375
    const-string v0, "call disconnect tone - excuted"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 4376
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->handleEndCallTunePlayCompleted(Landroid/media/MediaPlayer;)V

    .line 4377
    return-void
.end method
