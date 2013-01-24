.class Lcom/android/phone/CallReminderPlayer$6;
.super Ljava/lang/Object;
.source "CallReminderPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallReminderPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallReminderPlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 7
    .parameter "focusChange"

    .prologue
    .line 890
    const-string v2, "CallReminderPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioFocusChange - focusChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    packed-switch p1, :pswitch_data_6a

    .line 957
    :cond_1b
    :goto_1b
    return-void

    .line 896
    :pswitch_1c
    const-string v2, "CallReminderPlayer"

    const-string v3, "case AudioManager.AUDIOFOCUS_LOSS:"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    .line 900
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    #getter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/phone/CallReminderPlayer;->access$100(Lcom/android/phone/CallReminderPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 902
    :try_start_30
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    #getter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/phone/CallReminderPlayer;->access$100(Lcom/android/phone/CallReminderPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 903
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    #getter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/phone/CallReminderPlayer;->access$100(Lcom/android/phone/CallReminderPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 904
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    #getter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/phone/CallReminderPlayer;->access$100(Lcom/android/phone/CallReminderPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 905
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    #getter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/phone/CallReminderPlayer;->access$100(Lcom/android/phone/CallReminderPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_56} :catch_5d

    .line 909
    :goto_56
    iget-object v2, p0, Lcom/android/phone/CallReminderPlayer$6;->this$0:Lcom/android/phone/CallReminderPlayer;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2, v3}, Lcom/android/phone/CallReminderPlayer;->access$102(Lcom/android/phone/CallReminderPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_1b

    .line 906
    :catch_5d
    move-exception v1

    .line 907
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 921
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_62
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, country_code:Ljava/lang/String;
    goto :goto_1b

    .line 891
    nop

    :pswitch_data_6a
    .packed-switch -0x2
        :pswitch_62
        :pswitch_1c
    .end packed-switch
.end method
