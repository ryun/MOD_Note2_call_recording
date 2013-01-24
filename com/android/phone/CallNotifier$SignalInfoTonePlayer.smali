.class Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalInfoTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 3
    .parameter
    .parameter "toneId"

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 3407
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3408
    iput p2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    .line 3409
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x62

    .line 3413
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3415
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 3416
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurTID:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)I

    move-result v0

    if-ne v0, v3, :cond_53

    iget v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    if-ne v0, v3, :cond_53

    .line 3419
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 3420
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3448
    :cond_52
    :goto_52
    return-void

    .line 3424
    :cond_53
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3426
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3427
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "signalInfoTone=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3430
    :cond_6f
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 3432
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "pingring=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3434
    :cond_8a
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    iget v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    if-ne v0, v3, :cond_da

    .line 3436
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer Ignore toneID = ToneGenerator.TONE_CDMA_SIGNAL_OFF("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3441
    :goto_b6
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 3442
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "signalInfoTone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3445
    :cond_c9
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3446
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget v1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    #setter for: Lcom/android/phone/CallNotifier;->mCurTID:I
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1502(Lcom/android/phone/CallNotifier;I)I

    goto/16 :goto_52

    .line 3438
    :cond_da
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_b6
.end method
