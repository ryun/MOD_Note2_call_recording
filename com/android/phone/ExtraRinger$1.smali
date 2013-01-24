.class Lcom/android/phone/ExtraRinger$1;
.super Landroid/os/Handler;
.source "ExtraRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ExtraRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ExtraRinger;


# direct methods
.method constructor <init>(Lcom/android/phone/ExtraRinger;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 74
    :cond_6
    :goto_6
    return-void

    .line 62
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    invoke-static {v0}, Lcom/android/phone/ExtraRinger;->access$008(Lcom/android/phone/ExtraRinger;)I

    .line 63
    iget-object v0, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_EXTRA_RINGTONE_VOLUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    #getter for: Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v2}, Lcom/android/phone/ExtraRinger;->access$000(Lcom/android/phone/ExtraRinger;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ExtraRinger;->access$100(Lcom/android/phone/ExtraRinger;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    #getter for: Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/ExtraRinger;->access$200(Lcom/android/phone/ExtraRinger;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    #getter for: Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v1}, Lcom/android/phone/ExtraRinger;->access$000(Lcom/android/phone/ExtraRinger;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    #getter for: Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v0}, Lcom/android/phone/ExtraRinger;->access$000(Lcom/android/phone/ExtraRinger;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    #getter for: Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/ExtraRinger;->access$200(Lcom/android/phone/ExtraRinger;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 68
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/phone/ExtraRinger$1;->this$0:Lcom/android/phone/ExtraRinger;

    #getter for: Lcom/android/phone/ExtraRinger;->mExtraRingerUpdateDelay:I
    invoke-static {v1}, Lcom/android/phone/ExtraRinger;->access$300(Lcom/android/phone/ExtraRinger;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/ExtraRinger$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 60
    nop

    :pswitch_data_5a
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method
