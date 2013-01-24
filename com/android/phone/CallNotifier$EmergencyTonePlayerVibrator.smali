.class Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyTonePlayerVibrator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;
    }
.end annotation


# instance fields
.field private final EMG_VIBRATE_LENGTH:I

.field private final EMG_VIBRATE_PAUSE:I

.field private mEmgVibrator:Landroid/os/Vibrator;

.field private mInCallVolume:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mVibratePattern:[J

.field private mVibratorThread:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x3e8

    .line 3907
    iput-object p1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3894
    iput v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->EMG_VIBRATE_LENGTH:I

    .line 3895
    iput v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->EMG_VIBRATE_PAUSE:I

    .line 3896
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratePattern:[J

    .line 3908
    return-void

    .line 3896
    :array_14
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$2000(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3893
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3893
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V

    return-void
.end method

.method private start()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3914
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v4, "call startEmergencyToneOrVibrate."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3915
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 3917
    .local v2, ringerMode:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 3919
    .local v1, mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)I

    move-result v3

    if-ne v3, v5, :cond_7b

    if-ne v2, v7, :cond_7b

    .line 3921
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v4, "EmergencyTonePlayerVibrator.start(): emergency tone..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3923
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_3f

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 3925
    :cond_3f
    const/16 v0, 0x32

    .line 3929
    .local v0, emergencyToneVol:I
    :goto_41
    new-instance v3, Landroid/media/ToneGenerator;

    invoke-direct {v3, v6, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 3930
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_77

    .line 3931
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mInCallVolume:I

    .line 3932
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v3, v6, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3935
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 3936
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v3, v5}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;I)I

    .line 3950
    .end local v0           #emergencyToneVol:I
    :cond_77
    :goto_77
    return-void

    .line 3927
    :cond_78
    const/16 v0, 0x64

    .restart local v0       #emergencyToneVol:I
    goto :goto_41

    .line 3938
    .end local v0           #emergencyToneVol:I
    :cond_7b
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)I

    move-result v3

    if-eq v3, v7, :cond_95

    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)I

    move-result v3

    if-ne v3, v5, :cond_77

    if-ne v2, v5, :cond_77

    const-string v3, "usa_cdma_smc_fac_req"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 3942
    :cond_95
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v4, "EmergencyTonePlayerVibrator.start(): emergency vibrate..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3943
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    .line 3944
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratorThread:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

    if-nez v3, :cond_77

    .line 3945
    new-instance v3, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;-><init>(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;Lcom/android/phone/CallNotifier$1;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratorThread:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

    .line 3946
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratorThread:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->start()V

    .line 3947
    iget-object v3, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v3, v7}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;I)I

    goto :goto_77
.end method

.method private stop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3956
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "call stopEmergencyToneOrVibrate."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3958
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)I

    move-result v0

    if-ne v0, v3, :cond_30

    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_30

    .line 3960
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3961
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3962
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mInCallVolume:I

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3971
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;I)I

    .line 3972
    return-void

    .line 3965
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2a

    .line 3967
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratorThread:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->stopThread()V

    .line 3968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratorThread:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;

    .line 3969
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_2a
.end method
