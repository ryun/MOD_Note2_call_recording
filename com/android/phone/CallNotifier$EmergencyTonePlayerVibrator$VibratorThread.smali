.class Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field private mContinueVibrating:Z

.field final synthetic this$1:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .registers 3
    .parameter

    .prologue
    .line 3974
    iput-object p1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->this$1:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->mContinueVibrating:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;Lcom/android/phone/CallNotifier$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3974
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;-><init>(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3980
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->mContinueVibrating:Z

    if-eqz v0, :cond_15

    .line 3981
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->this$1:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #getter for: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$2000(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3982
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 3984
    :cond_15
    return-void
.end method

.method public stopThread()V
    .registers 2

    .prologue
    .line 3977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator$VibratorThread;->mContinueVibrating:Z

    .line 3978
    return-void
.end method
