.class public Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;
.super Landroid/app/Activity;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;
    }
.end annotation


# static fields
.field private static final mOverturnDrawable:[I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationIndex:I

.field private mCallStateLayout:Landroid/view/View;

.field private mContinueRinging:Z

.field private mImgView:Landroid/widget/ImageView;

.field private mIsForegroundActivity:Z

.field private mMainLayout:Landroid/view/View;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

.field private mOverturnHandler:Landroid/os/Handler;

.field private mPreviousMsg:I

.field private mRingerType:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mTutorialDialogON:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xb0t 0x3t 0x2t 0x7ft
        0xb1t 0x3t 0x2t 0x7ft
        0xb2t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    .line 64
    iput v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 65
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 68
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 69
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 70
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

    .line 72
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 73
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 75
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 86
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopAnimation()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    return p1
.end method

.method private controlRing(Z)V
    .registers 6
    .parameter "mContinueRinging"

    .prologue
    .line 216
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 219
    .local v0, ringtoneUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_c

    .line 220
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 224
    :cond_c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_38

    .line 225
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1f

    .line 226
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 236
    :cond_1e
    :goto_1e
    return-void

    .line 229
    :cond_1f
    const-string v1, "OverturnTutorialIncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRingtones: failed to load ringtone from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 232
    :cond_38
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1e

    .line 233
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_1e
.end method

.method private controlVibration()V
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    if-nez v0, :cond_2b

    .line 241
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    .line 242
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;->start()V

    .line 245
    :cond_2b
    return-void
.end method

.method private isForegroundActivity()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method private startAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 405
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 407
    iput v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 408
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V

    .line 410
    :cond_11
    return-void
.end method

.method private startIncomingSound()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 291
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    if-ne v0, v1, :cond_d

    .line 292
    iput-boolean v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 293
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 297
    :goto_c
    return-void

    .line 296
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlVibration()V

    goto :goto_c
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    .line 414
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 416
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    :cond_12
    return-void
.end method

.method private stopRingingOrVibration()V
    .registers 4

    .prologue
    .line 259
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Ring or Vibration, mRingerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 262
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 267
    :goto_27
    return-void

    .line 264
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    .line 265
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_27
.end method

.method private updateAnimation(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/16 v4, 0x14

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, animation_size:I
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    .line 388
    sget-object v1, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    array-length v0, v1

    .line 389
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 392
    :cond_13
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 393
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v1, :cond_29

    .line 394
    iget v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    if-lt v1, v0, :cond_2a

    .line 395
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 396
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 401
    :cond_29
    :goto_29
    return-void

    .line 398
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_29
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 273
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 274
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_11

    .line 275
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 277
    :cond_11
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 283
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 285
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_11

    .line 286
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 288
    :cond_11
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 423
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->setContentView(I)V

    .line 117
    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    .line 118
    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    if-eqz v0, :cond_2f

    .line 121
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    if-eqz v0, :cond_43

    .line 123
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    :cond_43
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    .line 128
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 129
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 155
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_6a

    .line 156
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 158
    :cond_6a
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_11

    .line 306
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 307
    iput-object v8, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 310
    :cond_11
    sparse-switch p1, :sswitch_data_bc

    .line 381
    :goto_14
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v6

    .line 312
    :sswitch_17
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the SHOW_TUTORIAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 314
    .local v3, mContext:Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 315
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040020

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f09009b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    .line 317
    const v6, 0x7f09009a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 318
    .local v4, message:Landroid/widget/TextView;
    const v6, 0x7f0e032a

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 319
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 320
    const v6, 0x7f0e032b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 321
    new-instance v5, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 329
    .local v5, restartListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x7f0e05b5

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 331
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 332
    const/16 v6, 0x32

    iput v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 333
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 334
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startAnimation()V

    .line 335
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_14

    .line 351
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #mContext:Landroid/content/Context;
    .end local v4           #message:Landroid/widget/TextView;
    .end local v5           #restartListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_7f
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the ShowOkGoodJob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const v6, 0x7f0e0330

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e032f

    new-instance v8, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e017b

    new-instance v8, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$5;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$5;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 368
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 369
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$7;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$7;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_14

    .line 310
    nop

    :sswitch_data_bc
    .sparse-switch
        0x1e -> :sswitch_17
        0x28 -> :sswitch_7f
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 198
    const/4 v0, 0x1

    const v1, 0x7f0e02c7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0203af

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 206
    :pswitch_c
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->showDialog(I)V

    .line 207
    const/4 v0, 0x1

    goto :goto_b

    .line 204
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 186
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 187
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1b

    .line 188
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 190
    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-boolean v3, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 166
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2b

    .line 167
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 171
    :cond_2b
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_61

    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_61

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UseRing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 174
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingerType in onResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V

    .line 177
    :cond_61
    return-void
.end method
