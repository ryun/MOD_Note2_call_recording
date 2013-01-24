.class final Lcom/android/phone/PhoneUtils$9;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 4542
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 4544
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4545
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4546
    :cond_9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 4547
    const-string v2, "onCompletion : excuted "

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 4549
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4550
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4551
    const-string v2, " start videocall ringbacktone"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 4553
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 4554
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->sendPlayRingBackTone()V

    .line 4556
    .end local v1           #notifier:Lcom/android/phone/CallNotifier;
    :cond_2f
    return-void
.end method
