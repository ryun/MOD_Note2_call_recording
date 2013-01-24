.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$MissedCallRunnable;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static mSharedContentsPath:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private final CALLLOG_UPDATE_DELAY:I

.field defaultPreferences:Landroid/content/SharedPreferences;

.field filter:Landroid/content/IntentFilter;

.field private isRingerStartedRinging:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingToneCount:I

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCdmaVoicePrivacyState:Z

.field private mCurTID:I

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mGoToSleepMode:Z

.field private mImsCall:Lcom/android/internal/telephony/Call;

.field private mImsPhone:Lcom/android/internal/telephony/Phone;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsAutoRejectedCall:Z

.field public mIsCDMACallWaitingAutoRejectedCall:Z

.field public mIsCDMACallWaitingDormantRejectedCall:Z

.field private mIsCdmaRedialCall:Z

.field private mIsDormantRejectedCall:Z

.field private mIsEmergencyToneOn:I

.field private mIsGsmRedialCall:Z

.field private mLastCallNumber:Ljava/lang/String;

.field mLineCtrlCreateTime:J

.field mLineCtrlSavedDurationTime:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mRedialCallCount:I

.field mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mRedialProgressDialog:Landroid/app/ProgressDialog;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSignalInfoToneRequest:Z

.field private mSilentRingerRequested:Z

.field private mVoicePrivacyState:Z

.field myTask:Ljava/util/TimerTask;

.field nIncoming:I

.field timer:Ljava/util/Timer;

.field private ussdHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallNotifier;->mSharedContentsPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 379
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance v0, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    .line 161
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 242
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 249
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 250
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 251
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 255
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 259
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 268
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 269
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 270
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 271
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 272
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 287
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 290
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 291
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    .line 298
    iput-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 299
    iput-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    .line 302
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 306
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    .line 307
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    .line 309
    const/16 v0, 0x62

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    .line 767
    new-instance v0, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2799
    new-instance v0, Lcom/android/phone/CallNotifier$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 2854
    new-instance v0, Lcom/android/phone/CallNotifier$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$5;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 3818
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/CallNotifier;->CALLLOG_UPDATE_DELAY:I

    .line 382
    if-nez p2, :cond_5e

    .line 437
    :goto_5d
    return-void

    .line 386
    :cond_5e
    if-nez p2, :cond_d2

    .line 387
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 390
    :goto_62
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 391
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 392
    iput-object p6, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 393
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 394
    if-nez p3, :cond_7b

    .line 395
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 402
    :cond_7b
    :try_start_7b
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_85
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_85} :catch_d5

    .line 413
    :cond_85
    :goto_85
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 414
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 418
    if-nez p3, :cond_104

    .line 419
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 425
    :goto_93
    const/16 v1, 0x8

    .line 426
    const-string v2, "not_listen_mwi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 427
    const/16 v1, 0xc

    .line 428
    :cond_9f
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 429
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 430
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    .line 431
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 433
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    .line 436
    :cond_cf
    iput v4, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto :goto_5d

    .line 389
    :cond_d2
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_62

    .line 404
    :catch_d5
    move-exception v0

    .line 405
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier dual: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 407
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 408
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_85

    .line 410
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_85

    .line 422
    :cond_104
    const-string v0, "phone2"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    goto :goto_93
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 330
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance v0, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    .line 161
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 242
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 249
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 250
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 251
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 255
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 259
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 268
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 269
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 270
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 271
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 272
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 287
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 290
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 291
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    .line 298
    iput-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 299
    iput-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    .line 302
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 306
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    .line 307
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    .line 309
    const/16 v0, 0x62

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    .line 767
    new-instance v0, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2799
    new-instance v0, Lcom/android/phone/CallNotifier$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 2854
    new-instance v0, Lcom/android/phone/CallNotifier$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$5;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 3818
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/CallNotifier;->CALLLOG_UPDATE_DELAY:I

    .line 331
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 332
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 333
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 334
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 335
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 337
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 344
    :try_start_74
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_7e} :catch_c9

    .line 355
    :cond_7e
    :goto_7e
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 356
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 358
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 360
    const/16 v1, 0x8

    .line 361
    const-string v2, "not_listen_mwi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 362
    const/16 v1, 0xc

    .line 363
    :cond_96
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 364
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    .line 366
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    .line 370
    :cond_c6
    iput v4, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 371
    return-void

    .line 346
    :catch_c9
    move-exception v0

    .line 347
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 349
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 350
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_7e

    .line 352
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_7e
.end method

.method private AutoRedial(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 2812
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2813
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2814
    iput v4, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 2843
    :cond_f
    :goto_f
    return-void

    .line 2817
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_57

    .line 2818
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v1, 0x7f0e0193

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2819
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 2820
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    .line 2821
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2822
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2823
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2824
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2825
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2826
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2827
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2830
    :cond_57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2831
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/high16 v2, 0x800

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2833
    if-ne p1, v6, :cond_7e

    .line 2834
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2835
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_f

    .line 2836
    :cond_7e
    if-lt p1, v5, :cond_99

    const/4 v0, 0x4

    if-gt p1, v0, :cond_99

    .line 2837
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2838
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_f

    .line 2839
    :cond_99
    const/4 v0, 0x5

    if-lt p1, v0, :cond_f

    const/16 v0, 0xa

    if-gt p1, v0, :cond_f

    .line 2840
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2841
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_f
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/CallNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/CallNotifier;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/CallNotifier;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/CallNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/CallNotifier;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/CallNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private formatNumberForVideoConf(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 4106
    .line 4107
    const-string v1, ""

    .line 4108
    if-eqz p1, :cond_66

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_66

    .line 4109
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialVideoCall: dialStrings.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4112
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_2e
    array-length v2, v3

    if-ge v1, v2, :cond_67

    .line 4113
    aget-object v2, v3, v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_50

    .line 4116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4118
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_2e

    :cond_66
    move-object v0, p1

    .line 4124
    :cond_67
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 4125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatNumberForVideoConf: newDialString.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4128
    :cond_87
    return-object v0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 5
    .parameter "conn"

    .prologue
    .line 4138
    const/4 v0, 0x0

    .line 4139
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 4141
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_b

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    :cond_b
    move-object v0, v1

    .line 4142
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4146
    .end local v1           #o:Ljava/lang/Object;
    :goto_e
    return-object v0

    .line 4144
    .restart local v1       #o:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_e
.end method

.method private getCshInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4196
    sget-object v0, Lcom/android/phone/CallNotifier;->mSharedContentsPath:Ljava/lang/String;

    return-object v0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4033
    .line 4035
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4036
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4037
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4038
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4039
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4060
    :cond_20
    :goto_20
    if-nez v0, :cond_56

    .line 4061
    const/4 v0, 0x0

    .line 4093
    :cond_23
    :goto_23
    return-object v0

    .line 4047
    :cond_24
    if-eqz p2, :cond_3a

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 4049
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    .line 4051
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 4053
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 4056
    :cond_53
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_20

    .line 4063
    :cond_56
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 4065
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4067
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 4068
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 4069
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 4070
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->formatNumberForVideoConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4080
    :cond_7c
    :goto_7c
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4082
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4083
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 4084
    if-eqz p2, :cond_23

    .line 4085
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_23

    .line 4086
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getContactsNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 4072
    :cond_a6
    const-string v1, "P"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 4073
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    .line 4076
    :cond_b3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7c
.end method

.method private getPhoneNumbers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 4098
    if-nez p1, :cond_4

    .line 4099
    const/4 v0, 0x0

    .line 4102
    :goto_3
    return-object v0

    .line 4101
    :cond_4
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4160
    if-nez p2, :cond_1d

    .line 4161
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 4171
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4172
    return v0

    .line 4163
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v1, :cond_42

    .line 4164
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 4168
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 4166
    :cond_42
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    goto :goto_27
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1010
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_e

    .line 1014
    const-string v0, "CallNotifier"

    const-string v2, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_d
    return v1

    .line 1021
    :cond_e
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1022
    const-string v0, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move v1, v2

    .line 1023
    goto :goto_d

    .line 1027
    :cond_1b
    const-string v0, "ram"

    const-string v3, "encryption.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1029
    const-string v0, "CallNotifier"

    const-string v2, "CallNotifier: rejecting incoming call: RAM mode for device encryption"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1034
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7e

    move v0, v1

    .line 1037
    :goto_46
    if-nez v0, :cond_74

    .line 1038
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1041
    if-nez v3, :cond_74

    .line 1044
    const-string v0, "CallNotifier"

    const-string v3, "SetupWizard is disabled, setting device provisioned value to non-zero..."

    invoke-static {v0, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 1051
    :cond_74
    if-nez v0, :cond_80

    .line 1052
    const-string v0, "CallNotifier"

    const-string v2, "Ignoring incoming call: not provisioned"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_7e
    move v0, v2

    .line 1034
    goto :goto_46

    .line 1057
    :cond_80
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1058
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v3, :cond_ad

    move v0, v1

    .line 1060
    :goto_91
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_af

    move v3, v1

    .line 1062
    :goto_9c
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1064
    if-eqz v4, :cond_b1

    .line 1065
    const-string v0, "CallNotifier"

    const-string v2, "Ignoring incoming call: OTA call is active"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_ad
    move v0, v2

    .line 1058
    goto :goto_91

    :cond_af
    move v3, v2

    .line 1060
    goto :goto_9c

    .line 1067
    :cond_b1
    if-nez v0, :cond_b5

    if-eqz v3, :cond_c9

    .line 1072
    :cond_b5
    if-eqz v3, :cond_bc

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 1073
    :cond_bc
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 1074
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    move v1, v2

    .line 1075
    goto/16 :goto_d

    :cond_c9
    move v1, v2

    .line 1080
    goto/16 :goto_d
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .registers 12
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    .line 318
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 319
    :try_start_3
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_17

    .line 320
    new-instance v0, Lcom/android/phone/CallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 324
    :goto_13
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 322
    :cond_17
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_13

    .line 325
    :catchall_33
    move-exception v0

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private isBlockCallList(Lcom/android/internal/telephony/Connection;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1825
    .line 1826
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 1827
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whiteListmode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1830
    const-string v1, "All contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1831
    const-string v0, "all"

    .line 1837
    :cond_33
    :goto_33
    if-nez v0, :cond_52

    .line 1838
    const-string v0, "whiteListmode is null"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    :cond_3a
    :goto_3a
    move v0, v7

    .line 1871
    :goto_3b
    return v0

    .line 1832
    :cond_3c
    const-string v1, "All favourite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1833
    const-string v0, "favorite"

    goto :goto_33

    .line 1834
    :cond_47
    const-string v1, "Custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1835
    const-string v0, "custom"

    goto :goto_33

    .line 1839
    :cond_52
    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move v0, v6

    .line 1840
    goto :goto_3b

    .line 1843
    :cond_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1846
    :try_start_76
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "dormant"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1851
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1853
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a0
    .catchall {:try_start_76 .. :try_end_a0} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a0} :catch_f5

    move-result-object v1

    .line 1854
    :try_start_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur.getCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1856
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_ed

    .line 1857
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1858
    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    :try_end_e6
    .catchall {:try_start_a1 .. :try_end_e6} :catchall_11c
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e6} :catch_11e

    .line 1868
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3a

    :cond_ed
    if-eqz v1, :cond_f2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f2
    move v0, v6

    goto/16 :goto_3b

    .line 1864
    :catch_f5
    move-exception v0

    move-object v1, v8

    .line 1865
    :goto_f7
    :try_start_f7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dormantmode Exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_f7 .. :try_end_10d} :catchall_11c

    .line 1868
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3a

    :catchall_114
    move-exception v0

    move-object v1, v8

    :goto_116
    if-eqz v1, :cond_11b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11b
    throw v0

    :catchall_11c
    move-exception v0

    goto :goto_116

    .line 1864
    :catch_11e
    move-exception v0

    goto :goto_f7
.end method

.method private isCDMAStandardSignal(III)Z
    .registers 7
    .parameter "SignalType"
    .parameter "AlertPitch"
    .parameter "Signal"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 4812
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_15

    if-ne p1, v2, :cond_15

    if-nez p2, :cond_15

    if-ne p3, v0, :cond_15

    .line 4816
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 4201
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 4205
    const-string v0, "CallNotifier"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4206
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x17

    const/16 v5, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3550
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3551
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3553
    const-string v2, "ctc_vip_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3554
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3555
    if-eqz v1, :cond_2c

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->isVipModeReject(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3556
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 3557
    const-string v0, "waiting isVipModeReject true"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3644
    :cond_2b
    :goto_2b
    return-void

    .line 3563
    :cond_2c
    if-eqz v1, :cond_65

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3564
    const-string v0, "CallNotifier"

    const-string v2, "CallNotifier: rejecting onCdmaCallWaiting call: auto reject call"

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3568
    const-string v0, "change_hangup_ipc_in_auto_reject"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3569
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 3573
    :goto_4c
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 3574
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v4, :cond_2b

    .line 3575
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto :goto_2b

    .line 3571
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4c

    .line 3580
    :cond_65
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 3581
    if-eqz v1, :cond_87

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isDormantOn()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 3582
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->isBlockCallList(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 3583
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 3584
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2b

    .line 3591
    :cond_87
    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3592
    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3594
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 3595
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_a4

    .line 3596
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 3597
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    .line 3603
    :cond_a4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 3608
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 3609
    const-string v0, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3610
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 3614
    :cond_bd
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 3615
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 3619
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v3}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 3622
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 3626
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 3627
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 3628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3629
    if-ne v1, v4, :cond_2b

    .line 3630
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 3631
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 3632
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 3633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3636
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 3639
    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/CallNotifier;->isCDMAStandardSignal(III)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3641
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto/16 :goto_2b
.end method

.method private onCdmaCallWaitingReject()V
    .registers 15

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 3669
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_ff

    .line 3671
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 3673
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_100

    .line 3674
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v12, v0

    .line 3683
    :goto_26
    if-eqz v12, :cond_f6

    .line 3684
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 3685
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 3686
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 3687
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 3688
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v0, :cond_10e

    const/4 v0, 0x3

    move v1, v0

    .line 3692
    :goto_3e
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 3694
    if-eqz v0, :cond_48

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_112

    .line 3695
    :cond_48
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 3702
    :goto_4b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3704
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 3705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "second logNumber = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3706
    const-string v0, "P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3707
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3712
    :cond_7b
    if-eqz v2, :cond_118

    iget v0, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3713
    :goto_7f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", newPresentation value is: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3716
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 3717
    if-eqz v2, :cond_ad

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v4, v0, :cond_b1

    :cond_ad
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v4, v0, :cond_b4

    .line 3718
    :cond_b1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3722
    :cond_b4
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    if-eqz v0, :cond_11b

    .line 3723
    const/4 v5, 0x6

    .line 3727
    :goto_b9
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 3728
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 3729
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 3730
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3731
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_121

    .line 3732
    const-string v0, "simnum"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3736
    :goto_e1
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v0 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V

    .line 3740
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 3770
    :goto_ed
    const/4 v0, 0x3

    if-ne v5, v0, :cond_190

    .line 3772
    invoke-direct {p0, v12, v6, v7}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 3779
    :goto_f3
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 3783
    :cond_f6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 3784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 3785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 3787
    :cond_ff
    return-void

    .line 3676
    :cond_100
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_26

    .line 3680
    :cond_107
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_26

    .line 3688
    :cond_10e
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_3e

    .line 3697
    :cond_112
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_4b

    :cond_118
    move v0, v4

    .line 3712
    goto/16 :goto_7f

    .line 3724
    :cond_11b
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    if-eqz v0, :cond_197

    .line 3725
    const/4 v5, 0x3

    goto :goto_b9

    .line 3734
    :cond_121
    const-string v0, "simnum"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e1

    .line 3741
    :cond_12c
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13c

    const-string v0, "enable_dormant_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 3743
    :cond_13c
    const/4 v10, 0x0

    .line 3744
    const/4 v11, 0x0

    .line 3745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FEATURE_REMIND_ME_LATER_SUPPORT : CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/PhoneApp;->remindCallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3746
    sget v0, Lcom/android/phone/PhoneApp;->remindCallTime:I

    if-lez v0, :cond_16c

    .line 3747
    const/4 v10, 0x1

    .line 3748
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget v1, Lcom/android/phone/PhoneApp;->remindCallTime:I

    invoke-static {v0, v3, v1, v6, v7}, Lcom/android/phone/CallReminderAlarm;->addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J

    .line 3750
    :cond_16c
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    if-eqz v0, :cond_171

    .line 3751
    const/4 v11, 0x1

    .line 3753
    :cond_171
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PhoneApp;->remindCallTime:I

    .line 3754
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v0 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 3758
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_ed

    .line 3761
    :cond_182
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v0 .. v9}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 3766
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_ed

    .line 3775
    :cond_190
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto/16 :goto_f3

    :cond_197
    move v5, v1

    goto/16 :goto_b9
.end method

.method private onCfiChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 2974
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "cdma_call_forwarding_indicator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2976
    const-string v0, "return onCfiChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2984
    :cond_15
    :goto_15
    return-void

    .line 2980
    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 2981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2982
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    goto :goto_15
.end method

.method private onCustomRingQueryComplete()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1181
    .line 1182
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1183
    :try_start_5
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v0, v1, :cond_4d

    .line 1184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v0, v1

    .line 1187
    :goto_d
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_33

    .line 1188
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 1189
    if-eqz v0, :cond_21

    .line 1192
    const-string v0, "CallNotifier"

    const-string v3, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const v0, 0x112a0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1208
    :cond_21
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_36

    .line 1209
    const-string v0, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1223
    :goto_32
    return-void

    .line 1187
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 1216
    :cond_36
    const-string v0, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1217
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v1, :cond_44

    .line 1218
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 1221
    :cond_44
    const-string v0, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1222
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_32

    :cond_4d
    move v0, v2

    goto :goto_d
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2021
    const-string v0, "CallNotifier"

    const-string v1, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 2028
    if-eqz v0, :cond_4f

    .line 2029
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_24

    .line 2030
    const-string v0, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 2049
    :goto_23
    return-void

    .line 2035
    :cond_24
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2038
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2048
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_23

    .line 2045
    :cond_4f
    const-string v0, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 35
    .parameter

    .prologue
    .line 2168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect()...  CallManager state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 2171
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 2172
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, Lcom/android/internal/telephony/Connection;

    .line 2173
    if-eqz v25, :cond_ee

    .line 2174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", incoming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2182
    :goto_7c
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2183
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setEmptyFlash(Z)V

    .line 2184
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setSendDtmf(Z)V

    .line 2185
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 2186
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 2190
    :cond_94
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 2191
    const-string v2, "- onDisconnect: VE: HANDLE_MSG_STOP_PLAY"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2192
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 2193
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2196
    :cond_ae
    const/4 v3, 0x0

    .line 2197
    const/4 v2, 0x0

    .line 2199
    if-eqz v25, :cond_b38

    .line 2200
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .line 2201
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2203
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 2204
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_f7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    if-eqz v2, :cond_f7

    .line 2205
    const-string v2, "- onDisconnect: This is Incomming Video call disconnect so calling continueDisconnectionAfterVTStackCleanup "

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2206
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 2208
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 2224
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v3, "call_end_vib"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2797
    :cond_ed
    :goto_ed
    return-void

    .line 2178
    :cond_ee
    const-string v2, "CallNotifier"

    const-string v3, "onDisconnect: null connection"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_7c

    .line 2210
    :cond_f7
    const-string v2, "- onDisconnect: This is Video call disconnect so returning back."

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2215
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11f

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11f

    .line 2216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    goto :goto_e4

    .line 2218
    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v2, :cond_e4

    .line 2219
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    goto :goto_e4

    :cond_130
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    .line 2229
    :goto_134
    const/4 v2, 0x0

    .line 2230
    if-eqz v25, :cond_155

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_155

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_auto_retry"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2235
    :cond_155
    if-eqz v25, :cond_b34

    .line 2236
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_175

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b34

    .line 2238
    :cond_175
    const-string v2, "autoredial_mode"

    .line 2239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoredial_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move/from16 v26, v2

    .line 2242
    :goto_188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoretrySetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2243
    if-eqz v25, :cond_1ce

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1ce

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 2251
    const/16 v2, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2252
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2268
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2269
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6ab

    .line 2270
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    if-eqz v2, :cond_69b

    .line 2273
    const-string v2, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2313
    :cond_1fb
    :goto_1fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v2, :cond_221

    .line 2314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2316
    const-string v2, "custom_waiting_tone"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_221

    .line 2317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 2318
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2323
    :cond_221
    if-eqz v25, :cond_24f

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_24f

    .line 2324
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24f

    .line 2325
    const-string v2, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->handleOtaspDisconnect()V

    .line 2332
    :cond_24f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v3, "call_end_vib"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2336
    const/4 v2, 0x0

    .line 2339
    if-eqz v25, :cond_b30

    .line 2340
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_768

    .line 2341
    const-string v2, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2342
    const/4 v2, 0x2

    move/from16 v27, v2

    .line 2381
    :goto_26b
    const/4 v2, 0x0

    .line 2389
    if-nez v27, :cond_2a8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_2a8

    if-eqz v25, :cond_2a8

    .line 2392
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_288

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_2a8

    .line 2394
    :cond_288
    const-string v2, "- need to play CALL_ENDED tone!"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z

    move-result v2

    .line 2398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 2399
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2400
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 2404
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2b8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_851

    :cond_2b8
    invoke-static/range {v28 .. v28}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_851

    if-eqz v25, :cond_851

    .line 2414
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_845

    .line 2415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_839

    .line 2416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRedialState : redialCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2417
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2418
    const-string v3, "auto_redial_time_delay"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_335

    .line 2419
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 2420
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->AutoRedial(I)V

    .line 2437
    :cond_335
    :goto_335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsGsmRedialCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-nez v3, :cond_371

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    if-nez v3, :cond_371

    .line 2440
    const-string v3, "wake up screen"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2445
    :cond_371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_3a3

    .line 2446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2451
    const-string v3, "force_display_endcall_screen"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85d

    .line 2452
    const-string v3, "onDisconnect: In call screen. Set short timeout."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    .line 2461
    :cond_39c
    :goto_39c
    if-nez v27, :cond_3a3

    if-nez v2, :cond_3a3

    .line 2462
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2466
    :cond_3a3
    if-eqz v25, :cond_ed

    .line 2468
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2469
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 2470
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 2471
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v30

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v31

    .line 2476
    const/4 v4, 0x0

    .line 2477
    const/4 v3, 0x0

    .line 2478
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_90d

    .line 2481
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b3

    .line 2482
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_87a

    .line 2483
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_877

    const/16 v2, 0xe

    :goto_3e6
    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    :goto_3eb
    move v14, v3

    move v15, v2

    move v7, v4

    .line 2551
    :goto_3ee
    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- callLogType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UserData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2554
    const/4 v13, 0x0

    .line 2556
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45e

    .line 2557
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_990

    .line 2558
    const-string v2, "call_out_duration"

    const-wide/16 v3, 0x3e8

    div-long v3, v10, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2574
    :goto_439
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a11

    .line 2575
    const-string v2, "simnum"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2579
    :goto_44c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    if-eqz v2, :cond_a1f

    .line 2580
    const-string v2, "reject_flag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2586
    :cond_45e
    :goto_45e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 2587
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2589
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47e

    const-string v2, "usa_cdma_concept"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48a

    .line 2590
    :cond_47e
    const-string v2, "P"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48a

    .line 2591
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2594
    :cond_48a
    const-string v2, "- onDisconnect(): logNumber set to: xxxxxxx"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2601
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v6

    .line 2603
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b6

    .line 2604
    if-eqz v31, :cond_4b6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v2, :cond_4b6

    .line 2606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v2, :cond_4b6

    .line 2607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v2}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$600(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 2612
    :cond_4b6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4ce

    .line 2613
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->getCshInfo()Ljava/lang/String;

    move-result-object v13

    .line 2615
    if-eqz v13, :cond_4ce

    .line 2616
    const-string v2, "content://logs/contents_shared"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2624
    :cond_4ce
    const-string v2, "emergency_calllog_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a2d

    const/4 v2, 0x0

    .line 2630
    :goto_4d8
    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_4e8

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4ee

    :cond_4e8
    invoke-static/range {v28 .. v28}, Lcom/android/phone/OtaUtils;->isUsCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3e

    :cond_4ee
    const/4 v3, 0x1

    .line 2635
    :goto_4ef
    if-eqz v31, :cond_4f3

    if-eqz v2, :cond_a41

    :cond_4f3
    if-nez v3, :cond_a41

    const/4 v2, 0x1

    .line 2639
    :goto_4f6
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2641
    const-string v16, "feature_lgt"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_516

    .line 2642
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v16

    if-eq v6, v0, :cond_50e

    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_516

    .line 2643
    :cond_50e
    if-eqz v4, :cond_516

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2645
    :cond_516
    const-string v16, "feature_logs_kor"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a44

    .line 2651
    :goto_51e
    const-string v16, "ctc_roamingcall"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_54a

    .line 2652
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v16, v0

    sget-boolean v17, Lcom/android/phone/CallController;->isCtcRoamingCall:Z

    .line 2653
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v16, v0

    sget-object v16, Lcom/android/phone/CallController;->mCtcRoamingCallNumber:Ljava/lang/String;

    .line 2654
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v18

    if-nez v18, :cond_54a

    if-eqz v17, :cond_54a

    .line 2655
    if-eqz v16, :cond_54a

    move-object/from16 v3, v16

    .line 2661
    :cond_54a
    const-string v16, "feature_ktt"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b1f

    if-eqz v3, :cond_b1f

    .line 2662
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_b1f

    .line 2663
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    .line 2668
    :goto_564
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4a

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_a47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a47

    const/4 v2, 0x1

    .line 2671
    :goto_589
    if-nez v2, :cond_5a3

    .line 2672
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 2676
    const-string v3, "EarlistConnection"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2720
    :cond_5a3
    :goto_5a3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 2721
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 2722
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 2724
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 2725
    const/4 v2, 0x3

    if-eq v7, v2, :cond_b08

    .line 2738
    :goto_5b4
    if-eqz v27, :cond_5e2

    .line 2739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- starting post-disconnect tone ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2740
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v2, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2752
    :cond_5e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_5f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_62e

    :cond_5f2
    if-nez v31, :cond_62e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_62e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_62e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_62e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_62e

    .line 2759
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v2, :cond_b18

    .line 2760
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_b11

    .line 2763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v30

    move-object/from16 v4, v28

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 2764
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 2773
    :cond_62e
    :goto_62e
    const-string v2, "auto_redial_time_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_656

    .line 2774
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_656

    .line 2775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v30

    move-object/from16 v4, v28

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 2781
    :cond_656
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_676

    .line 2782
    const-string v2, "- onDisconnect: mIsAutoRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 2785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "autorejection=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2786
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2788
    :cond_676
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 2789
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ed

    .line 2790
    const-string v2, "- onDisconnect: mIsDormantRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "autorejection=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2792
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto/16 :goto_ed

    .line 2276
    :cond_69b
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1fb

    .line 2280
    :cond_6ab
    const-string v3, "stopRing()... (onDisconnect)"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2281
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_75f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v3

    if-nez v3, :cond_75f

    .line 2282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2284
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_1fb

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_1fb

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_1fb

    .line 2287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_723

    .line 2288
    const/4 v3, 0x0

    .line 2289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 2290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last noise reduction : set= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  set result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2294
    :cond_723
    const-string v3, "extra_volume"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74d

    .line 2295
    const/4 v3, 0x0

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 2297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last extra volume : set= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2304
    :cond_74d
    const-string v3, "Start ring after the first call was cleared and accept the waiting call"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1fb

    .line 2308
    :cond_75f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1fb

    .line 2343
    :cond_768
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_77a

    .line 2344
    const-string v2, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2345
    const/4 v2, 0x3

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2346
    :cond_77a
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_786

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_79d

    :cond_786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v3

    if-eqz v3, :cond_79d

    .line 2349
    const-string v2, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2350
    const/16 v2, 0xb

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2351
    :cond_79d
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_7af

    .line 2352
    const-string v2, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2353
    const/4 v2, 0x6

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2354
    :cond_7af
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_7c1

    .line 2355
    const-string v2, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2356
    const/4 v2, 0x7

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2357
    :cond_7c1
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_7d4

    .line 2358
    const-string v2, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2359
    const/16 v2, 0x8

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2360
    :cond_7d4
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_7e7

    .line 2361
    const-string v2, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2362
    const/16 v2, 0x9

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2363
    :cond_7e7
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_7fa

    .line 2364
    const-string v2, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2365
    const/16 v2, 0xd

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2366
    :cond_7fa
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_80c

    .line 2367
    const-string v2, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2368
    const/4 v2, 0x4

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2369
    :cond_80c
    const-string v3, "waiting_call_end_tone"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b30

    .line 2370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_b30

    .line 2371
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v3, :cond_82c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v3, :cond_b30

    .line 2373
    :cond_82c
    const-string v2, "- need to play TONE_SECOND_CALL_END!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2374
    const/16 v2, 0x11

    move/from16 v27, v2

    goto/16 :goto_26b

    .line 2424
    :cond_839
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2425
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_335

    .line 2428
    :cond_845
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2429
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_335

    .line 2433
    :cond_851
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2434
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_335

    .line 2454
    :cond_85d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-eqz v3, :cond_39c

    .line 2455
    const-string v3, "onDisconnect: In call screen. Set short timeout."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    goto/16 :goto_39c

    .line 2483
    :cond_877
    const/4 v2, 0x3

    goto/16 :goto_3e6

    .line 2485
    :cond_87a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_89e

    .line 2486
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_893

    const/16 v2, 0xf

    :goto_88c
    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    goto/16 :goto_3eb

    :cond_893
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_89c

    const/4 v2, 0x6

    goto :goto_88c

    :cond_89c
    const/4 v2, 0x5

    goto :goto_88c

    .line 2490
    :cond_89e
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8b1

    const/16 v2, 0xd

    :goto_8aa
    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    goto/16 :goto_3eb

    :cond_8b1
    const/4 v2, 0x1

    goto :goto_8aa

    .line 2494
    :cond_8b3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_8fd

    .line 2495
    const-string v2, "dcm_not_support_extra_calllog_type"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8dc

    .line 2496
    const/4 v2, 0x3

    move/from16 v32, v3

    move v3, v2

    move/from16 v2, v32

    .line 2504
    :goto_8c7
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b28

    .line 2505
    sget v5, Lcom/android/phone/PhoneApp;->remindCallTime:I

    if-lez v5, :cond_b28

    .line 2506
    const/4 v4, 0x1

    move/from16 v32, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v32

    goto/16 :goto_3eb

    .line 2497
    :cond_8dc
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8ed

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v2, :cond_8ed

    .line 2498
    const/4 v3, 0x3

    .line 2499
    const/4 v2, 0x1

    goto :goto_8c7

    .line 2501
    :cond_8ed
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8fb

    const/4 v2, 0x6

    :goto_8f5
    move/from16 v32, v3

    move v3, v2

    move/from16 v2, v32

    goto :goto_8c7

    :cond_8fb
    const/4 v2, 0x5

    goto :goto_8f5

    .line 2510
    :cond_8fd
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_90b

    const/4 v2, 0x3

    :goto_904
    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    goto/16 :goto_3eb

    :cond_90b
    const/4 v2, 0x1

    goto :goto_904

    .line 2517
    :cond_90d
    const/4 v2, 0x2

    .line 2519
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_91e

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_943

    .line 2522
    :cond_91e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 2523
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2524
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setSKTCallLogType(Ljava/lang/String;)V

    .line 2526
    sget-boolean v5, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v5, :cond_93c

    .line 2527
    const/16 v2, 0x15

    :cond_937
    :goto_937
    move v14, v3

    move v15, v4

    move v7, v2

    .line 2531
    goto/16 :goto_3ee

    .line 2528
    :cond_93c
    sget-boolean v5, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    if-eqz v5, :cond_937

    .line 2529
    const/16 v2, 0x16

    goto :goto_937

    .line 2531
    :cond_943
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b23

    .line 2532
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 2533
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    .line 2535
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_97c

    .line 2536
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_975

    .line 2537
    const/16 v2, 0xb

    move v14, v3

    move v15, v4

    move v7, v2

    goto/16 :goto_3ee

    .line 2539
    :cond_975
    const/16 v2, 0xc

    move v14, v3

    move v15, v4

    move v7, v2

    goto/16 :goto_3ee

    .line 2542
    :cond_97c
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->isThrwayCall()Z

    move-result v5

    if-eqz v5, :cond_b23

    .line 2543
    const-string v2, "CallNotifier"

    const-string v5, " - Outgoing Threeway Call : isThrwayCall() = true"

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const/16 v2, 0x32

    move v14, v3

    move v15, v4

    move v7, v2

    goto/16 :goto_3ee

    .line 2561
    :cond_990
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    add-long/2addr v2, v10

    .line 2562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: mLineCtrlSavedDurationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: mLineCtrlCreateTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2566
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_a03

    .line 2567
    const-string v4, "call_out_duration"

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2568
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    goto/16 :goto_439

    .line 2571
    :cond_a03
    const-string v2, "call_out_duration"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_439

    .line 2577
    :cond_a11
    const-string v2, "simnum"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_44c

    .line 2582
    :cond_a1f
    const-string v2, "reject_flag"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_45e

    .line 2624
    :cond_a2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto/16 :goto_4d8

    .line 2630
    :cond_a3e
    const/4 v3, 0x0

    goto/16 :goto_4ef

    .line 2635
    :cond_a41
    const/4 v2, 0x0

    goto/16 :goto_4f6

    :cond_a44
    move-object v3, v5

    .line 2648
    goto/16 :goto_51e

    .line 2669
    :cond_a47
    const/4 v2, 0x0

    goto/16 :goto_589

    .line 2684
    :cond_a4a
    if-eqz v2, :cond_5a3

    .line 2685
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a71

    .line 2686
    new-instance v13, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v15, v4

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    move-object/from16 v24, v12

    invoke-direct/range {v13 .. v24}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V

    .line 2690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v2, v13}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_5a3

    .line 2691
    :cond_a71
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a97

    .line 2692
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v5, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->setCshInfo(Ljava/lang/String;)V

    goto/16 :goto_5a3

    .line 2698
    :cond_a97
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa7

    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af4

    .line 2700
    :cond_aa7
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v5, v16

    move v13, v15

    invoke-direct/range {v2 .. v14}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_REMIND_ME_LATER_SUPPORT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2706
    sget v2, Lcom/android/phone/PhoneApp;->remindCallTime:I

    if-lez v2, :cond_aef

    if-lez v15, :cond_aef

    .line 2707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3, v8, v9}, Lcom/android/phone/CallReminderAlarm;->addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J

    .line 2708
    :cond_aef
    const/4 v2, 0x0

    sput v2, Lcom/android/phone/PhoneApp;->remindCallTime:I

    goto/16 :goto_5a3

    .line 2711
    :cond_af4
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v5, v16

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_5a3

    .line 2731
    :cond_b08
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    goto/16 :goto_5b4

    .line 2766
    :cond_b11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_62e

    .line 2769
    :cond_b18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_62e

    :cond_b1f
    move-object/from16 v16, v3

    goto/16 :goto_564

    :cond_b23
    move v14, v3

    move v15, v4

    move v7, v2

    goto/16 :goto_3ee

    :cond_b28
    move/from16 v32, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v32

    goto/16 :goto_3eb

    :cond_b30
    move/from16 v27, v2

    goto/16 :goto_26b

    :cond_b34
    move/from16 v26, v2

    goto/16 :goto_188

    :cond_b38
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    goto/16 :goto_134
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 3383
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 3385
    .local v1, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_2d

    .line 3386
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 3387
    .local v0, displayInfo:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3388
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 3391
    const/16 v2, 0x18

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 3394
    .end local v0           #displayInfo:Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method private onLineCtrl(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter

    .prologue
    .line 4832
    const-string v0, "onLineCtrl begin"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4833
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 4834
    if-eqz v1, :cond_79

    .line 4835
    const/4 v0, 0x1

    .line 4836
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    .line 4837
    if-eqz v1, :cond_79

    .line 4838
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4839
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 4840
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6d

    .line 4841
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4842
    if-eqz v2, :cond_6d

    .line 4843
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 4844
    if-eqz v2, :cond_6d

    .line 4845
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    .line 4846
    iget-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_43

    .line 4847
    const/4 v0, 0x0

    .line 4848
    :cond_43
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 4849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DurationTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CreateTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4853
    :cond_6d
    if-eqz v0, :cond_79

    .line 4854
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallCard;->resetCallTime(Lcom/android/internal/telephony/Phone;)V

    .line 4855
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallCard;->startMinuteTone(Lcom/android/internal/telephony/Phone;)V

    .line 4859
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLineCtrl1 DurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4860
    return-void
.end method

.method private onMwiChanged(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2945
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getVisualVoicemailEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2951
    :cond_21
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2961
    :goto_28
    return-void

    .line 2955
    :cond_29
    if-ne p1, v2, :cond_3f

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3f

    .line 2956
    const-string v0, "wake up screen"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2957
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2960
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_28
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 783
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 784
    const-string v1, "onNewRingingConnection(): "

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 790
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 795
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 990
    :cond_48
    :goto_48
    return-void

    .line 800
    :cond_49
    const-string v3, "ims_vt_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 801
    if-eqz v1, :cond_75

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v5, :cond_75

    .line 803
    const-string v1, "Phone Type is not IMS, but it is VideoCall, so ending the call."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 805
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 806
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 811
    :cond_75
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 813
    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 816
    :cond_8e
    const-string v1, "ctc_vip_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 817
    if-eqz v0, :cond_b2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->isVipModeReject(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 818
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 819
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v4, :cond_ac

    .line 820
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 821
    :cond_ac
    const-string v0, "isVipModeReject true"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_48

    .line 827
    :cond_b2
    if-eqz v0, :cond_ec

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 828
    const-string v1, "CallNotifier"

    const-string v2, "CallNotifier: rejecting incoming call: auto reject call"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 832
    const-string v1, "change_hangup_ipc_in_auto_reject"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 833
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 837
    :goto_d2
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 838
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v4, :cond_48

    .line 839
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto/16 :goto_48

    .line 835
    :cond_e2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_d2

    .line 843
    :cond_ec
    const-string v1, "enable_dormant_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 844
    if-eqz v0, :cond_10f

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isDormantOn()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 845
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->isBlockCallList(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 846
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 847
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_48

    .line 853
    :cond_10f
    const-string v1, "voip_interworking"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 854
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPRingOrDialing()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 855
    const-string v1, "CallNotifier"

    const-string v2, "CallNotifier: rejecting incoming call: VOIP call is ringing or dialing"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 856
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 857
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 858
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v4, :cond_48

    .line 859
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto/16 :goto_48

    .line 864
    :cond_13d
    const-string v1, "ctc_voicecall_additional_setting"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 865
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 866
    if-eqz v1, :cond_16e

    .line 867
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallBarringCheckPanel()Landroid/view/ViewGroup;

    move-result-object v3

    .line 868
    if-eqz v3, :cond_16e

    .line 869
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->hideCallBarringCheckPanelIMM()V

    .line 870
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 871
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/phone/CallController;->setBarringPopup(Z)V

    .line 872
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 877
    :cond_16e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v1

    if-nez v1, :cond_17d

    .line 878
    const-string v0, "CallNotifier"

    const-string v1, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_48

    .line 888
    :cond_17d
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_187

    .line 889
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 892
    :cond_187
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- connection is ringing!  state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 923
    const-string v2, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v3, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 928
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_216

    .line 929
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 930
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->checkAutoAnsweringMode(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)V

    .line 932
    const-string v1, "usa_spr_roaming_feature"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    .line 933
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 934
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 936
    if-nez v1, :cond_1ec

    if-nez v0, :cond_1ec

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 939
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setCallRoamingGuardDialog(Z)V

    .line 941
    :cond_1ec
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 942
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 943
    const-string v0, "voip is activated - starting call waiting tone..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_20f

    .line 945
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 946
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 989
    :cond_20f
    :goto_20f
    const-string v0, "- onNewRingingConnection() done."

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_48

    .line 951
    :cond_216
    const-string v0, "- starting call waiting tone..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 952
    const-string v0, "disable_waiting_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_239

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_274

    const-string v0, "45005"

    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_274

    .line 955
    :cond_239
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_274

    .line 956
    const-string v0, "custom_waiting_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_296

    .line 957
    iput v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 958
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 959
    const/16 v0, 0x1d

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- play waiting tone for skt..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 964
    :goto_26f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 969
    :cond_274
    const-string v0, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 971
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 972
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 973
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    .line 976
    :cond_291
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_20f

    .line 962
    :cond_296
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_26f
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1341
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPhoneStateChanged: state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1347
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_597

    move v0, v1

    :goto_2c
    invoke-virtual {v4, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1350
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1351
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_9f

    .line 1352
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_71

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_53

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_71

    .line 1355
    :cond_53
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v0, :cond_61

    .line 1356
    const/16 v0, 0xa

    .line 1357
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1359
    :cond_61
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1361
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    .line 1364
    :cond_6e
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1366
    :cond_71
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1367
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_85

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_95

    :cond_85
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_95

    .line 1369
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v5, "call_answer_vib"

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1370
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    .line 1372
    :cond_95
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1375
    :cond_9f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 1382
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1386
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 1389
    const-string v0, "write_sleep_checking_file"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1390
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v0, :cond_bf

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v0, :cond_c3

    :cond_bf
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_cb

    .line 1393
    :cond_c3
    new-instance v0, Lcom/android/phone/FileWriteThread;

    invoke-direct {v0, v2}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    .line 1398
    :cond_cb
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v0, :cond_d3

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v0, :cond_d7

    :cond_d3
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_df

    .line 1400
    :cond_d7
    new-instance v0, Lcom/android/phone/FileWriteThread;

    invoke-direct {v0, v1}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    .line 1404
    :cond_df
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_1ad

    .line 1406
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_fd

    .line 1407
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1408
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1409
    const-string v0, "custom_waiting_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 1410
    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 1411
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1415
    :cond_fd
    const-string v0, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1417
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1421
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1422
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    .line 1423
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_59a

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_59a

    move v0, v1

    .line 1424
    :goto_122
    if-nez v6, :cond_133

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_133

    .line 1425
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1430
    :cond_133
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 1431
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v10, :cond_154

    .line 1432
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v6, "audio"

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1434
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v10, :cond_154

    .line 1435
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 1440
    :cond_154
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1441
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v0, :cond_170

    .line 1442
    const-string v0, "- answerCall: VE: HANDLE_MSG_STOP_PLAY"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1444
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x11ec

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1450
    :cond_170
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_190

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_190

    .line 1451
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v5, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1452
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v5, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1461
    :cond_190
    const-string v0, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1463
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 1477
    const-string v0, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1479
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1481
    const/16 v0, 0x1b

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1485
    :cond_1ad
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_208

    .line 1486
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_208

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 1489
    const-string v0, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1490
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1491
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v5, :cond_1e1

    .line 1492
    new-instance v5, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v5, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1495
    :cond_1e1
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_1e9

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_59d

    .line 1496
    :cond_1e9
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "emergency_tone"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1499
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v0, :cond_208

    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v0, :cond_208

    .line 1501
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v0, :cond_208

    .line 1502
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$500(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1518
    :cond_208
    :goto_208
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_215

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_387

    .line 1520
    :cond_215
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1521
    const-string v0, "audio_separate_ringback_gain"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_234

    .line 1522
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_5bf

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_5bf

    .line 1523
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "ringbacktone=on"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1530
    :cond_234
    :goto_234
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_26d

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_26d

    .line 1531
    const-string v0, "PhoneStateChanged : Call.State.ALERTING"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1533
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_5e5

    .line 1534
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move-result v0

    .line 1540
    :goto_253
    if-nez v0, :cond_26d

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_26d

    .line 1541
    const-string v0, "PhoneStateChanged : start videocall ringbacktone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1542
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1543
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    .line 1547
    :cond_26d
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 1548
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_5ed

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_5ed

    move v0, v1

    .line 1549
    :goto_280
    const-string v6, "alerting_occurs_twice"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_293

    .line 1550
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_5f0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_5f0

    move v0, v1

    .line 1551
    :cond_293
    :goto_293
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1552
    if-eqz v0, :cond_2e4

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e4

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSKTVEUrl is valid..: 2nd : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1554
    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1555
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 1556
    const-string v6, "- Alerting: VE: VE_ContentManager.init()"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1557
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 1558
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getInstance()Lcom/android/phone/VE_ContentManager;

    move-result-object v7

    iget-object v8, v6, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v0}, Lcom/android/phone/VE_ContentManager;->init(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1559
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v6, 0x11ef

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1563
    :cond_2e4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_2f0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_300

    :cond_2f0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_300

    .line 1565
    const-string v0, "startCallVibration : Answer Vibraton"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1566
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v6, "call_answer_vib"

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1569
    :cond_300
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_311

    .line 1572
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_311

    .line 1573
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1574
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1579
    :cond_311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneStateChanged : mPreviousGsmCallState = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", callState = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1582
    const-string v0, "feature_ecn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_387

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_387

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_34b

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_387

    .line 1584
    :cond_34b
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v0

    .line 1585
    const-string v5, "PhoneStateChanged : Call.State.ACTIVE"

    invoke-static {v5}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 1586
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    .line 1588
    if-eqz v0, :cond_387

    .line 1589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencyConnection"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 1590
    if-eqz v5, :cond_387

    .line 1591
    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->sendECN()V

    .line 1596
    :cond_387
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47e

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v10, :cond_47e

    .line 1597
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1599
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_3c6

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_3b5

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_3c6

    .line 1602
    :cond_3b5
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v0, :cond_3c3

    .line 1603
    const/16 v0, 0xa

    .line 1604
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1606
    :cond_3c3
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1609
    :cond_3c6
    const-string v0, "CallNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPhoneStateChanged: it is an emergency call. mPreviousCdmaCallState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1611
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_432

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_432

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPhoneStateChanged : Phone.PHONE_TYPE_IMS state = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1616
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_5f3

    .line 1617
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move-result v0

    .line 1622
    :goto_418
    if-nez v0, :cond_432

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_432

    .line 1623
    const-string v0, "PhoneStateChanged : start videocall ringbacktone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1624
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1625
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    .line 1630
    :cond_432
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_43e

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_449

    :cond_43e
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_449

    .line 1632
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v6, "call_answer_vib"

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1636
    :cond_449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPhoneStateChanged : Phone.PHONE_TYPE_IMS dialing = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1637
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_474

    .line 1640
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_474

    .line 1641
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1642
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1646
    :cond_474
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1649
    :cond_47e
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_48b

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4cd

    .line 1651
    :cond_48b
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_4c3

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_4a3

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_4c3

    .line 1654
    :cond_4a3
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    if-eqz v0, :cond_4ab

    .line 1656
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1657
    iput v2, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 1659
    :cond_4ab
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c3

    .line 1660
    const-string v0, "- onPhoneStateChanged : ACTIVE: VE: HANDLE_MSG_STOP_PLAY"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1661
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1662
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x11ec

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1665
    :cond_4c3
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    .line 1668
    :cond_4cd
    const-string v0, "cdma_call_forwarding_indicator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_510

    .line 1669
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_510

    .line 1670
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_510

    .line 1671
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1672
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1673
    if-eqz v0, :cond_510

    .line 1674
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1675
    if-eqz v0, :cond_510

    .line 1676
    const-string v5, "*720"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_509

    const-string v5, "*730"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5fb

    .line 1677
    :cond_509
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr;->updateCdmaCfi(Z)V

    .line 1688
    :cond_510
    :goto_510
    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53e

    .line 1689
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_53e

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    if-nez v0, :cond_53e

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_53e

    .line 1692
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1693
    const/16 v0, 0x22

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1694
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 1698
    :cond_53e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 1700
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v0, :cond_54b

    .line 1701
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showHidedMmiDialog()V

    .line 1702
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hideBargeInNotification()V

    .line 1704
    :cond_54b
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_596

    .line 1705
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v0, :cond_55b

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_596

    .line 1706
    :cond_55b
    invoke-static {}, Lcom/android/phone/CallReminderNotificationHelper;->getRemindNotificationData()Landroid/os/Bundle;

    move-result-object v0

    .line 1707
    if-eqz v0, :cond_596

    .line 1708
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1709
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1710
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1711
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1712
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1713
    const-string v0, "CallNotifier"

    const-string v1, "start CallReminderActivity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-static {}, Lcom/android/phone/CallReminderNotificationHelper;->getInstance()Lcom/android/phone/CallReminderNotificationHelper;

    move-result-object v0

    .line 1715
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderNotificationHelper;->cancel(Landroid/content/Context;)V

    .line 1719
    :cond_596
    return-void

    :cond_597
    move v0, v2

    .line 1347
    goto/16 :goto_2c

    :cond_59a
    move v0, v2

    .line 1423
    goto/16 :goto_122

    .line 1505
    :cond_59d
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_208

    .line 1506
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v0, :cond_5ae

    .line 1507
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v0, :cond_5ae

    .line 1508
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$600(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1511
    :cond_5ae
    const-string v0, "wifi_diable_during_emergency_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 1512
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableWifiInEmergencyCall()V

    goto/16 :goto_208

    .line 1524
    :cond_5bf
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_5d2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_5d2

    .line 1525
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "ringbacktone=off"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_234

    .line 1526
    :cond_5d2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_234

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_234

    .line 1527
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "ringbacktone=off"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_234

    .line 1537
    :cond_5e5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move v0, v1

    goto/16 :goto_253

    :cond_5ed
    move v0, v2

    .line 1548
    goto/16 :goto_280

    :cond_5f0
    move v0, v2

    .line 1550
    goto/16 :goto_293

    .line 1619
    :cond_5f3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move v0, v1

    goto/16 :goto_418

    .line 1679
    :cond_5fb
    const-string v2, "*72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_510

    .line 1680
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateCdmaCfi(Z)V

    goto/16 :goto_510
.end method

.method private onResendMute()V
    .registers 3

    .prologue
    .line 4013
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 4014
    .local v0, muteState:Z
    if-nez v0, :cond_e

    const/4 v1, 0x1

    :goto_7
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4015
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4016
    return-void

    .line 4014
    :cond_e
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 3989
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3991
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 3996
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_2b

    .line 3998
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3999
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 4007
    :cond_2b
    :goto_2b
    return-void

    .line 4002
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_2b

    .line 4003
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 4004
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_2b
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3456
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_e

    .line 3457
    const-string v0, "CallNotifier"

    const-string v1, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3526
    :cond_d
    :goto_d
    return-void

    .line 3461
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3464
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 3510
    :cond_21
    :goto_21
    const-string v0, "no_alert_tone_signal"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3512
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 3513
    if-eqz v0, :cond_47

    .line 3514
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 3515
    if-nez v0, :cond_12c

    .line 3516
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 3520
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3521
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v6, :cond_d

    .line 3522
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_d

    .line 3467
    :cond_5d
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 3469
    if-eqz v0, :cond_21

    .line 3470
    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 3471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalInfo: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3472
    if-eqz v1, :cond_21

    .line 3473
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 3474
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 3475
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 3477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalInfo: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3480
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 3484
    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/CallNotifier;->isCDMAStandardSignal(III)Z

    move-result v4

    if-nez v4, :cond_c9

    .line 3485
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 3486
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 3500
    :cond_c9
    :goto_c9
    const-string v1, "no_alert_tone_signal"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3501
    if-nez v0, :cond_128

    .line 3502
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto/16 :goto_21

    .line 3488
    :cond_d7
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_eb

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_c9

    .line 3489
    :cond_eb
    const/4 v4, 0x2

    if-ne v1, v4, :cond_109

    if-nez v2, :cond_109

    if-ne v0, v6, :cond_109

    .line 3490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalInfo: SignalInfoTonePlayer Ignore toneID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_c9

    .line 3492
    :cond_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalInfo: SignalInfoTonePlayer start toneID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3493
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_c9

    .line 3504
    :cond_128
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto/16 :goto_21

    .line 3518
    :cond_12c
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto/16 :goto_47
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1228
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_28

    .line 1230
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1231
    const-string v0, "- showing incoming call (unknown connection appeared)..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1232
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1233
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 1235
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1239
    :cond_28
    return-void
.end method

.method private placeCall()V
    .registers 6

    .prologue
    .line 2847
    const-string v0, "CallNotifier"

    const-string v1, "placeCall entered!!!!!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2849
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2850
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2851
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2852
    return-void
.end method

.method private registerForNotifications()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1766
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1767
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1768
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1769
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1770
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1771
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1772
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1773
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1774
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1775
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1776
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1777
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1778
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1779
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1780
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1781
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1782
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1784
    :cond_73
    return-void
.end method

.method private setGroupRingtoneURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 5
    .parameter "r"
    .parameter "ci"

    .prologue
    .line 2061
    const-string v0, "setGroupRingtoneURI: "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2062
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2063
    :try_start_9
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 2064
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 2065
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p2, p0}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 2067
    return-void

    .line 2064
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private setGroupVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 5
    .parameter "r"
    .parameter "ci"

    .prologue
    .line 2070
    const-string v0, "setGroupVibrationURI: "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2071
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2072
    :try_start_9
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 2073
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 2074
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p0}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 2076
    return-void

    .line 2073
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private setPersonalVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 5
    .parameter "r"
    .parameter "ci"

    .prologue
    .line 2052
    const-string v0, "setPersonalVibrationURI:"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2053
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2054
    :try_start_9
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 2055
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1c

    .line 2056
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1, p2, p0}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 2058
    return-void

    .line 2055
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private showIncomingCall()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1264
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1265
    const-string v0, "GATE"

    const-string v1, "<GATE-M>INCOMING_CALL</GATE-M>"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1270
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_99

    .line 1303
    :goto_33
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1304
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1306
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "kor_cs_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1307
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1309
    :cond_67
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 1320
    :cond_6c
    :goto_6c
    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 1323
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1324
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1325
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1327
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1328
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1330
    :cond_92
    return-void

    .line 1312
    :cond_93
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    goto :goto_6c

    .line 1271
    :catch_99
    move-exception v0

    goto :goto_33
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .registers 7
    .parameter "c"
    .parameter "date"

    .prologue
    .line 3828
    new-instance v0, Lcom/android/phone/CallNotifier$MissedCallRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier$MissedCallRunnable;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3829
    return-void
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1098
    .line 1099
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1100
    :try_start_5
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v0, :cond_a9

    .line 1101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v0, v1

    .line 1104
    :goto_d
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_72

    .line 1105
    if-eqz v0, :cond_8a

    .line 1107
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1108
    sget-object v0, Lcom/android/phone/PhoneApp;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    if-eqz v0, :cond_21

    .line 1109
    sget-object v0, Lcom/android/phone/PhoneApp;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderActivity;->pauseRemindSound()V

    .line 1112
    :cond_21
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1114
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1115
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_vibration_pattern"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIncomingCallQuery: patternUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1120
    if-eqz v0, :cond_5d

    .line 1121
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/phone/Ringer;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 1126
    :cond_5d
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1131
    iget-boolean v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v3, :cond_75

    .line 1132
    const-string v3, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1133
    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v2, p0, v0}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1161
    :goto_71
    return-void

    .line 1104
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    .line 1135
    :cond_75
    const-string v0, "- Starting query, posting timeout message."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1139
    const/16 v0, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_71

    .line 1149
    :cond_8a
    const v0, 0x112a1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1152
    const-string v0, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1153
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v1, :cond_a0

    .line 1154
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 1158
    :cond_a0
    const-string v0, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1159
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_71

    :cond_a9
    move v0, v2

    goto/16 :goto_d
.end method

.method private toastText_CallNoti(II)V
    .registers 5
    .parameter "stringId"
    .parameter "length"

    .prologue
    .line 4822
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4823
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4824
    return-void
.end method


# virtual methods
.method protected continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V
    .registers 27
    .parameter
    .parameter

    .prologue
    .line 4210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    .line 4211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continueDisconnectionAfterVTStackCleanup()...  phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4212
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lcom/android/internal/telephony/Connection;

    .line 4213
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 4766
    :cond_39
    :goto_39
    return-void

    .line 4217
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 4219
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 4220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_auto_retry"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 4223
    :cond_54
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6b

    .line 4224
    const-string v2, "autoredial_mode"

    .line 4225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoredial_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 4228
    :cond_6b
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8c

    .line 4230
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 4233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 4236
    const/16 v2, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 4237
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 4240
    :cond_8c
    if-eqz v15, :cond_c6

    .line 4241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onDisconnect: cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", incoming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4260
    :cond_c6
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e6

    .line 4271
    if-eqz v15, :cond_149

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_e4

    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_149

    .line 4272
    :cond_e4
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3dd

    .line 4275
    const-string v2, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 4282
    :goto_108
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 4283
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRing()... (onDisconnect) : mInCallRingbackTonePlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v2, :cond_142

    .line 4286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 4287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 4290
    :cond_142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 4329
    :cond_149
    :goto_149
    const/4 v3, 0x0

    .line 4332
    if-eqz v15, :cond_15c

    .line 4333
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 4334
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_481

    .line 4335
    const-string v2, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4336
    const/4 v3, 0x2

    .line 4363
    :cond_15c
    :goto_15c
    const/4 v2, 0x0

    .line 4371
    if-nez v3, :cond_1a1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_1a1

    if-eqz v15, :cond_1a1

    .line 4374
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    .line 4375
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v4, v5, :cond_179

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v4, v5, :cond_1a1

    .line 4377
    :cond_179
    const-string v2, "- need to play CALL_ENDED tone!"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4381
    const-string v2, "in video call, set normal -> play end tone -> send broadcast"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z

    move-result v2

    .line 4388
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 4389
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 4390
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 4396
    :cond_1a1
    const-string v4, "ims_vt_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50c

    .line 4397
    if-eqz v15, :cond_4f4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4f4

    .line 4399
    const-string v3, "- DisconnectCause : set ton to play :0"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4400
    const/4 v3, 0x0

    move/from16 v16, v3

    .line 4408
    :goto_1c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v3

    if-nez v3, :cond_1e2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    if-nez v3, :cond_1e2

    .line 4409
    const-string v3, "wake up screen"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 4413
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_1f5

    .line 4416
    if-nez v16, :cond_1f5

    if-nez v2, :cond_1f5

    .line 4417
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 4432
    :cond_1f5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4433
    const-string v3, ""

    .line 4434
    const-wide/16 v8, 0x0

    .line 4435
    const-wide/16 v10, 0x0

    .line 4436
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 4438
    if-eqz v15, :cond_85e

    .line 4439
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 4440
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 4441
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 4442
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 4450
    :goto_218
    if-eqz v15, :cond_537

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_537

    .line 4451
    if-eqz p2, :cond_510

    .line 4452
    const-string v2, "continueDisconnectionAfterVTStackCleanup()...  Call rejected due to low batter and treted as Missed call"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4453
    const/4 v2, 0x3

    move v7, v2

    .line 4481
    :goto_22c
    if-eqz v15, :cond_254

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- callLogType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UserData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4483
    :cond_254
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 4484
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4486
    const/4 v2, 0x0

    .line 4487
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85b

    .line 4488
    const-string v3, "ims_vt_call_conference"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85b

    .line 4489
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_85b

    if-eqz v19, :cond_85b

    .line 4490
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getPhoneNumbers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Is IMS Video Call : mLogNumbers="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object v13, v2

    .line 4501
    :goto_29e
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v6

    .line 4503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onDisconnect(): logNumber set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4505
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2de

    .line 4506
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2de

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v2, :cond_2de

    .line 4508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v2, :cond_2de

    .line 4509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v2}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$600(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 4519
    :cond_2de
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_565

    const/4 v2, 0x1

    move v14, v2

    .line 4523
    :goto_2e7
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f8

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_314

    :cond_2f8
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_569

    const-string v2, "*22899"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_314

    const-string v2, "*228"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_569

    :cond_314
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 4526
    :goto_317
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v23

    .line 4529
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_331

    .line 4531
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    .line 4532
    if-nez v2, :cond_331

    .line 4538
    :cond_331
    const/4 v3, 0x0

    .line 4539
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_572

    .line 4540
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_572

    const-string v2, "ims_vt_call_conference"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_572

    .line 4541
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_572

    .line 4542
    if-eqz v13, :cond_572

    array-length v2, v13

    const/4 v5, 0x1

    if-le v2, v5, :cond_572

    .line 4543
    const/4 v2, 0x0

    move/from16 v18, v2

    move v2, v3

    :goto_35e
    array-length v3, v13

    move/from16 v0, v18

    if-ge v0, v3, :cond_571

    .line 4544
    aget-object v2, v13, v18

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4545
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v6, v2, :cond_371

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v6, v2, :cond_376

    .line 4546
    :cond_371
    if-eqz v4, :cond_376

    .line 4547
    const/4 v2, 0x0

    iput-object v2, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 4550
    :cond_376
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_398

    .line 4551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- imsCallLogNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4553
    :cond_398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_56e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56e

    const/4 v2, 0x1

    .line 4554
    :goto_3b7
    if-nez v2, :cond_3d6

    .line 4555
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v12, "content://logs/video_call"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 4557
    const-string v3, "- addCall: "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 4560
    :cond_3d6
    const/4 v3, 0x1

    .line 4543
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    move v2, v3

    goto :goto_35e

    .line 4278
    :cond_3dd
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 4292
    :cond_3e6
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_416

    .line 4293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_406

    .line 4296
    const-string v2, "cancelCallInProgressNotification()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_149

    .line 4303
    :cond_406
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_149

    .line 4307
    :cond_416
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_478

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v2

    if-nez v2, :cond_478

    .line 4309
    const/4 v2, 0x0

    .line 4310
    if-eqz v15, :cond_438

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 4311
    :cond_438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    .line 4312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    .line 4313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_149

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_149

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v3, :cond_149

    .line 4318
    const-string v2, "Start ring after the first call was cleared and accept the waiting call"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_149

    .line 4323
    :cond_478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_149

    .line 4337
    :cond_481
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_48f

    .line 4338
    const-string v2, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4339
    const/4 v3, 0x3

    goto/16 :goto_15c

    .line 4340
    :cond_48f
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_497

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_4ac

    :cond_497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v4

    if-eqz v4, :cond_4ac

    .line 4343
    const-string v2, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4344
    const/16 v3, 0xb

    goto/16 :goto_15c

    .line 4345
    :cond_4ac
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_4ba

    .line 4346
    const-string v2, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4347
    const/4 v3, 0x6

    goto/16 :goto_15c

    .line 4348
    :cond_4ba
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_4c8

    .line 4349
    const-string v2, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4350
    const/4 v3, 0x7

    goto/16 :goto_15c

    .line 4351
    :cond_4c8
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_4d7

    .line 4352
    const-string v2, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4353
    const/16 v3, 0x8

    goto/16 :goto_15c

    .line 4354
    :cond_4d7
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_4e6

    .line 4355
    const-string v2, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4356
    const/16 v3, 0x9

    goto/16 :goto_15c

    .line 4357
    :cond_4e6
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_15c

    .line 4358
    const-string v2, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4359
    const/4 v3, 0x4

    goto/16 :goto_15c

    .line 4403
    :cond_4f4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- DisconnectCause : set ton to play, toneToPlay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_50c
    move/from16 v16, v3

    goto/16 :goto_1c4

    .line 4455
    :cond_510
    const-string v2, "continueDisconnectionAfterVTStackCleanup()...  normal condition for Call log not disconnected due to low battery"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4456
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_52b

    .line 4457
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_529

    const/4 v2, 0x6

    :goto_526
    move v7, v2

    goto/16 :goto_22c

    :cond_529
    const/4 v2, 0x5

    goto :goto_526

    .line 4460
    :cond_52b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_535

    const/4 v2, 0x3

    :goto_532
    move v7, v2

    goto/16 :goto_22c

    :cond_535
    const/4 v2, 0x1

    goto :goto_532

    .line 4465
    :cond_537
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_547

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_561

    .line 4468
    :cond_547
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 4469
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 4470
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setSKTCallLogType(Ljava/lang/String;)V

    .line 4472
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v2, :cond_55f

    .line 4473
    const/16 v2, 0x15

    :goto_55c
    move v7, v2

    .line 4477
    goto/16 :goto_22c

    .line 4475
    :cond_55f
    const/4 v2, 0x2

    goto :goto_55c

    .line 4478
    :cond_561
    const/4 v2, 0x2

    move v7, v2

    goto/16 :goto_22c

    .line 4519
    :cond_565
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2e7

    .line 4523
    :cond_569
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_317

    .line 4553
    :cond_56e
    const/4 v2, 0x0

    goto/16 :goto_3b7

    :cond_571
    move v3, v2

    .line 4567
    :cond_572
    if-nez v3, :cond_5ae

    .line 4568
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4571
    const-string v2, "feature_logs_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_776

    .line 4578
    :goto_580
    if-nez v17, :cond_5ae

    if-eqz v23, :cond_586

    if-nez v14, :cond_5ae

    .line 4579
    :cond_586
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77a

    .line 4580
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5ae

    .line 4581
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v12, "content://logs/video_call"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 4585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 4617
    :cond_5ae
    :goto_5ae
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 4618
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 4619
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 4621
    const/4 v2, 0x3

    if-ne v7, v2, :cond_5c7

    .line 4622
    const-string v2, "- onDisconnect(): show miss call notification"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4626
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 4633
    :cond_5c7
    if-eqz v16, :cond_627

    .line 4634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- starting post-disconnect tone ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4635
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_61b

    if-eqz v15, :cond_61b

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_61b

    .line 4636
    const-string v2, "VT busy call - set audio mode ( normal ), true"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    .line 4638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_618

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_618

    .line 4642
    :cond_618
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 4644
    :cond_61b
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 4656
    :cond_627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_801

    .line 4662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v2

    if-nez v2, :cond_7f8

    .line 4663
    const-string v2, "- NOT showing in-call screen; releasing wake locks!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v3, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 4665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v3, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 4673
    :goto_656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_666

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_68a

    :cond_666
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68a

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_68a

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_68a

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_68a

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_68a

    .line 4680
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v2, :cond_80a

    .line 4694
    :cond_68a
    :goto_68a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_69a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_811

    :cond_69a
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_811

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_811

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_811

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_811

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_811

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_811

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_811

    if-eqz v15, :cond_811

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_811

    .line 4729
    :goto_6d0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6e7

    .line 4730
    const-string v2, "- continueDisconnectionAfterVTStackCleanup: mIsAutoRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4731
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 4732
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4734
    :cond_6e7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6fe

    .line 4735
    const-string v2, "- continueDisconnectionAfterVTStackCleanup: mIsDormantRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4736
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 4737
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4742
    :cond_6fe
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 4743
    if-eqz v15, :cond_717

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_71c

    :cond_717
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 4744
    :cond_71c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getImsPhoneIndex()I

    move-result v3

    .line 4745
    const-string v2, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CallManager State\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v5, :cond_81d

    const/4 v2, 0x1

    :goto_75a
    invoke-virtual {v4, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 4747
    const/4 v2, 0x1

    if-ne v3, v2, :cond_820

    .line 4748
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->resetImsPhone()V

    .line 4749
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 4750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 4751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    goto/16 :goto_39

    :cond_776
    move-object/from16 v5, v19

    .line 4574
    goto/16 :goto_580

    .line 4587
    :cond_77a
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_78a

    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e0

    .line 4589
    :cond_78a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_REMIND_ME_LATER_SUPPORT : video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4590
    const/4 v13, 0x0

    .line 4591
    const/4 v14, 0x0

    .line 4592
    sget v2, Lcom/android/phone/PhoneApp;->remindCallTime:I

    if-lez v2, :cond_7be

    .line 4593
    const/4 v13, 0x1

    .line 4594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    invoke-static {v2, v5, v3, v8, v9}, Lcom/android/phone/CallReminderAlarm;->addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J

    .line 4596
    :cond_7be
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v2, :cond_7c5

    .line 4597
    const/4 v14, 0x1

    .line 4598
    :cond_7c5
    const/4 v2, 0x0

    sput v2, Lcom/android/phone/PhoneApp;->remindCallTime:I

    .line 4600
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v12, "content://logs/video_call"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v2 .. v14}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V

    .line 4604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_5ae

    .line 4606
    :cond_7e0
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v12, "content://logs/video_call"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 4610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_5ae

    .line 4667
    :cond_7f8
    const-string v2, "- still showing in-call screen; not releasing wake locks."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_656

    .line 4670
    :cond_801
    const-string v2, "- phone still in use; not releasing wake locks."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_656

    .line 4691
    :cond_80a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_68a

    .line 4724
    :cond_811
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 4725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_6d0

    .line 4746
    :cond_81d
    const/4 v2, 0x0

    goto/16 :goto_75a

    .line 4753
    :cond_820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_852

    .line 4754
    const-string v2, "CallNotifier"

    const-string v3, "It should not be here ideally !!!!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4755
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->resetImsPhone()V

    .line 4756
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 4757
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->setImsPhoneIndex(I)V

    .line 4758
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 4759
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    goto/16 :goto_39

    .line 4761
    :cond_852
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->decImsPhoneIndex()V

    goto/16 :goto_39

    :cond_85b
    move-object v13, v2

    goto/16 :goto_29e

    :cond_85e
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    goto/16 :goto_218
.end method

.method getIsCdmaRedialCall()Z
    .registers 2

    .prologue
    .line 3807
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getIsGsmRedialCall()Z
    .registers 2

    .prologue
    .line 3814
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 4783
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .registers 2

    .prologue
    .line 3800
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 443
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_460

    .line 765
    :cond_22
    :goto_22
    return-void

    .line 445
    :sswitch_23
    const-string v0, "RINGING... (new)"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 446
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 448
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 451
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    .line 452
    iget v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    if-ne v1, v3, :cond_6f

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_6f

    .line 453
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 454
    const v1, 0x7f0e048f

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->toastText_CallNoti(II)V

    .line 455
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_22

    .line 460
    :cond_6f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 461
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 462
    const-string v0, "vt_cmcc_operator_fallback"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 463
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_13b

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_13b

    .line 467
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 469
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptAlertDialogInit()V

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RingingCallnumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  AcceptByVoiceCallNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 477
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 478
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_accept"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoaccept voice call : automatic_accept :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 482
    if-ne v0, v4, :cond_22

    .line 483
    const-string v0, "Autoaccept voice call..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    .line 498
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    .line 499
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_22

    .line 502
    :cond_12d
    const-string v0, "Autoaccept voice call: RingingCallnumber != AcceptByVoiceCallNumber!!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 505
    :cond_134
    const-string v0, "Autoaccept voice call: getAutomaticAcceptAlertDialogInstance() == null !! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 508
    :cond_13b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoaccept voice call: isVideocall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 517
    :sswitch_163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_18c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_18c

    .line 518
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 520
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1b9

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v0, :cond_1b9

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v4, :cond_1b9

    .line 523
    const-string v0, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 530
    :cond_18c
    :goto_18c
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 531
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1a8

    .line 532
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 533
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    .line 534
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 535
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 536
    iput v5, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 538
    :cond_1a8
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_22

    .line 539
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_22

    .line 526
    :cond_1b9
    const-string v0, "RING before NEW_RING, skipping"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_18c

    .line 545
    :sswitch_1bf
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 549
    :sswitch_1c8
    const-string v0, "DISCONNECT"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 550
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 555
    :sswitch_1d6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 559
    :sswitch_1df
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 563
    :sswitch_1e8
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_22

    .line 567
    :sswitch_1f5
    const-string v0, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 568
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 570
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 573
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    .line 574
    iget v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    if-ne v1, v3, :cond_23c

    .line 575
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 576
    const v1, 0x7f0e048f

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->toastText_CallNoti(II)V

    .line 577
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_22

    .line 581
    :cond_23c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 585
    :sswitch_245
    const-string v0, "CallNotifier"

    const-string v1, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 586
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_22

    .line 590
    :sswitch_251
    const-string v0, "CallNotifier"

    const-string v1, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 592
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_22

    .line 596
    :sswitch_25f
    const-string v0, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v4}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_22

    .line 603
    :sswitch_272
    const-string v0, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 604
    const-string v0, "display_info_diable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 605
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 610
    :sswitch_288
    const-string v0, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 611
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    .line 614
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 615
    const/16 v0, 0x21

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_22

    .line 620
    :sswitch_2a5
    const-string v0, "Received Display Info notification done event ..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_22

    .line 625
    :sswitch_2af
    const-string v0, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_22

    .line 630
    :sswitch_2bb
    const-string v0, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 631
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v0, :cond_22

    .line 633
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 634
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 636
    const-string v0, "- updating notification for VP state..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_22

    .line 642
    :sswitch_2dc
    const-string v0, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 643
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v0, :cond_22

    .line 645
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 646
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 648
    const-string v0, "- updating notification for VP state..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_22

    .line 654
    :sswitch_2fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 658
    :sswitch_306
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_22

    .line 662
    :sswitch_30b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 670
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_22

    .line 672
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto/16 :goto_22

    .line 678
    :sswitch_31f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    if-lez v0, :cond_22

    .line 679
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 680
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 681
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 682
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 683
    const/16 v0, 0x1d

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- play waiting tone for skt..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 692
    :sswitch_361
    const-string v0, "PHONE_STATE_LINECTRL event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 693
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 694
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 695
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_22

    .line 696
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v1, "call_answer_vib"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 697
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onLineCtrl(Landroid/os/AsyncResult;)V

    goto/16 :goto_22

    .line 703
    :sswitch_38a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_395

    .line 704
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 705
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    .line 707
    :cond_395
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a2

    .line 708
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->placeCall()V

    goto/16 :goto_22

    .line 710
    :cond_3a2
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 711
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 713
    iput v5, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_22

    .line 719
    :sswitch_3b2
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 720
    const-string v0, "RINGING... (new IMS)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 722
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 726
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_40f

    .line 727
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 729
    :try_start_3ed
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3f4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3ed .. :try_end_3f4} :catch_3f6

    goto/16 :goto_22

    .line 730
    :catch_3f6
    move-exception v0

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_22

    .line 734
    :cond_40f
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->setIMSPhone()V

    .line 735
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 736
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 739
    new-instance v0, Lcom/android/phone/FileWriteThread;

    invoke-direct {v0, v4}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    goto/16 :goto_22

    .line 746
    :sswitch_423
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 747
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 748
    const-string v0, "mApplication.isFactoryTest()"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 749
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 750
    const/16 v0, 0x22

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_22

    .line 756
    :sswitch_446
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_22

    .line 757
    const-string v0, "PHONE_SCREEN_OFF"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->makeGoToSleep()V

    goto/16 :goto_22

    .line 443
    :sswitch_data_460
    .sparse-switch
        0x1 -> :sswitch_1bf
        0x2 -> :sswitch_23
        0x3 -> :sswitch_1c8
        0x4 -> :sswitch_1d6
        0x5 -> :sswitch_163
        0x6 -> :sswitch_272
        0x7 -> :sswitch_288
        0x8 -> :sswitch_1f5
        0x9 -> :sswitch_2bb
        0xa -> :sswitch_2dc
        0xb -> :sswitch_2fd
        0xc -> :sswitch_306
        0x14 -> :sswitch_3b2
        0x15 -> :sswitch_1e8
        0x16 -> :sswitch_251
        0x17 -> :sswitch_25f
        0x18 -> :sswitch_2a5
        0x19 -> :sswitch_2af
        0x1a -> :sswitch_245
        0x1b -> :sswitch_30b
        0x1d -> :sswitch_31f
        0x1f -> :sswitch_38a
        0x20 -> :sswitch_361
        0x21 -> :sswitch_423
        0x22 -> :sswitch_446
        0x64 -> :sswitch_1df
    .end sparse-switch
.end method

.method initCallNotifierRegistrationsForIMS(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 1788
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsForIMS..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1793
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1794
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1795
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1796
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1797
    const/16 v0, 0x14

    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/Phone;->registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1798
    return-void
.end method

.method isDormantOn()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1876
    .line 1879
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 1884
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1886
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_disable_incoming_calls"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1889
    if-eqz v3, :cond_20

    if-nez v4, :cond_26

    .line 1890
    :cond_20
    const-string v2, "dormant disable "

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1916
    :cond_25
    :goto_25
    return v0

    .line 1894
    :cond_26
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_always"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_bc

    .line 1895
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1896
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1897
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_start_hour"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_start_min"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1899
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_end_hour"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "dormant_end_min"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v5

    .line 1901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1902
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1905
    if-ne v4, v2, :cond_bf

    .line 1906
    const-string v0, "Dormant Time set as Always"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    :cond_bc
    move v0, v1

    .line 1916
    goto/16 :goto_25

    .line 1908
    :cond_bf
    if-ge v4, v2, :cond_c7

    .line 1909
    if-lt v3, v4, :cond_25

    if-le v3, v2, :cond_bc

    goto/16 :goto_25

    .line 1912
    :cond_c7
    if-le v3, v2, :cond_bc

    if-ge v3, v4, :cond_bc

    goto/16 :goto_25
.end method

.method isRinging()Z
    .registers 2

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1928
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_49

    .line 1929
    const-string v1, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1930
    const-string v1, "enable_dormant_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v1, :cond_31

    .line 1931
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 1932
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JZ)V

    .line 2005
    :cond_30
    :goto_30
    return-void

    .line 1936
    :cond_31
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_30

    .line 1940
    :cond_49
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_30

    .line 1941
    const-string v1, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v1, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1945
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1946
    :try_start_55
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v2, v8, :cond_5d

    .line 1947
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v0, v8

    .line 1950
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_73

    .line 1952
    if-eqz v0, :cond_30

    .line 1955
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_76

    .line 1956
    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1957
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_30

    .line 1950
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0

    .line 1961
    :cond_76
    check-cast p2, Lcom/android/phone/CallNotifier;

    iget-object v0, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1963
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_10e

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->isValidRingtoneURI(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 1964
    const-string v1, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v1, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1965
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1970
    :cond_90
    :goto_90
    const-string v1, "personal_vibration"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1971
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v1, v8, :cond_a5

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1972
    invoke-direct {p0, v0, p3}, Lcom/android/phone/CallNotifier;->setPersonalVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1977
    :cond_a5
    const-string v1, "cdnip_supplementary_service"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1978
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    if-eqz v1, :cond_f9

    .line 1979
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "number_plus_digits"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1980
    if-eqz v1, :cond_f9

    .line 1981
    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 1982
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1983
    const/4 v3, 0x0

    :try_start_cb
    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1984
    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_117

    .line 1985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdnipNumber and settedCdnipNumber are same : setted cdnipNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1986
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "number_plus_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1987
    if-eqz v1, :cond_f9

    .line 1988
    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1994
    :cond_f9
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1995
    :try_start_fc
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v0, :cond_108

    .line 1997
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2000
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    .line 2002
    :cond_108
    monitor-exit v1

    goto/16 :goto_30

    :catchall_10b
    move-exception v0

    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_fc .. :try_end_10d} :catchall_10b

    throw v0

    .line 1966
    :cond_10e
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v1, v8, :cond_90

    .line 1967
    invoke-direct {p0, v0, p3}, Lcom/android/phone/CallNotifier;->setGroupRingtoneURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_90

    .line 1984
    :catchall_117
    move-exception v0

    :try_start_118
    monitor-exit v2
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw v0
.end method

.method public onRingingCallAdditionalQueryComplete(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingingCallAdditionalQueryComplete : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2081
    sparse-switch p1, :sswitch_data_140

    .line 2154
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2155
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingingCallAdditionalQueryComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " token : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2157
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_59

    .line 2158
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 2159
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v0, :cond_59

    .line 2160
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2161
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    .line 2164
    :cond_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_13d

    .line 2165
    return-void

    .line 2083
    :sswitch_5b
    if-eqz p3, :cond_1b

    .line 2084
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 2087
    const-string v0, "group_ringtone"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2088
    if-eq v0, v3, :cond_a9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 2089
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 2091
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/phone/Ringer;->isValidRingtoneURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2092
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2094
    :cond_8c
    const-string v0, "onRingingCallAdditionalQueryComplete: group ringtone URI : "

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2098
    :cond_a9
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1b

    .line 2103
    :sswitch_ae
    if-eqz p3, :cond_1b

    .line 2104
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 2106
    const-string v0, "group_vibration"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2107
    if-eq v0, v3, :cond_e7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e7

    .line 2108
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2109
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 2110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingingCallAdditionalQueryComplete: sec_group_vibration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2114
    :cond_e7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1b

    .line 2119
    :sswitch_ec
    const/4 v0, 0x0

    .line 2121
    if-eqz p3, :cond_13b

    .line 2123
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f6

    move v0, v1

    .line 2127
    :cond_f6
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 2130
    const-string v2, "sec_custom_vibration"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2131
    if-eq v2, v3, :cond_139

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_139

    .line 2132
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2133
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3, v2}, Lcom/android/phone/Ringer;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 2134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingingCallAdditionalQueryComplete: sec_custom_vibration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2140
    :cond_12d
    :goto_12d
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2145
    :goto_130
    if-ne v0, v1, :cond_1b

    .line 2146
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallNotifier;->setGroupVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_1b

    :cond_139
    move v0, v1

    .line 2137
    goto :goto_12d

    :cond_13b
    move v0, v1

    .line 2142
    goto :goto_130

    .line 2164
    :catchall_13d
    move-exception v0

    :try_start_13e
    monitor-exit v1
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    throw v0

    .line 2081
    :sswitch_data_140
    .sparse-switch
        0x2 -> :sswitch_5b
        0x4 -> :sswitch_ae
        0x8 -> :sswitch_ec
    .end sparse-switch
.end method

.method playMinuteMinder()V
    .registers 6

    .prologue
    .line 4769
    const-string v0, "min_minder"

    .line 4770
    .local v0, MINUTE_MINDER:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "min_minder"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4771
    .local v1, minuteMinderTone:I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_13

    .line 4777
    :goto_12
    return-void

    .line 4776
    :cond_13
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto :goto_12
.end method

.method public resetAudioStateAfterDisconnect()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2868
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2870
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_34

    .line 2871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudioStateAfterDisconnect(): Current phone state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", So return and not continued resetAudio process."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2938
    :cond_33
    :goto_33
    return-void

    .line 2894
    :cond_34
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_3d

    .line 2895
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2898
    :cond_3d
    const-string v0, "not_reset_spk_during_ps_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_fc

    .line 2900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudioStateAfterDisconnect(): Current audioMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", So continue spk state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2909
    :goto_70
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 2911
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 2912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last noise reduction : set= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  set result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2916
    :cond_a3
    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2918
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last extra volume : set= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2922
    :cond_c6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2925
    invoke-static {v2, v2}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 2927
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionInitiated:Z

    .line 2928
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionAboutRoutingInitiated:Z

    .line 2930
    const-string v0, "audio_separate_ringback_gain"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2931
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ringbacktone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2933
    :cond_e1
    const-string v0, "notify_audio_reset"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2934
    const-string v0, "send broadcast intent after call disconnected for audio state"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.COMPLETE_AUDIO_RESET_AFTER_CALL_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2936
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_33

    .line 2905
    :cond_fc
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_70
.end method

.method resetCallNotifierRegistrationsFromIMS(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 1801
    const-string v0, "CallNotifier"

    const-string v1, "resetCallNotifierRegistrationsFromVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1806
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1807
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1808
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1809
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1811
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1812
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1814
    :cond_37
    return-void
.end method

.method restartRinger()V
    .registers 4

    .prologue
    .line 3010
    const-string v0, "restartRinger()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3021
    :cond_b
    :goto_b
    return-void

    .line 3013
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3018
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_b

    .line 3019
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_b
.end method

.method sendCdmaCallWaitingReject()V
    .registers 2

    .prologue
    .line 3654
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 3655
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 2968
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2969
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2970
    return-void
.end method

.method sendPlayRingBackTone()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4787
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4788
    .local v1, r:Landroid/os/AsyncResult;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 4789
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4790
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4791
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4793
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 4794
    return-void
.end method

.method setCshInfo(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 4183
    sput-object p1, Lcom/android/phone/CallNotifier;->mSharedContentsPath:Ljava/lang/String;

    .line 4184
    return-void
.end method

.method silenceRinger()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2998
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 2999
    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3000
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3001
    return-void
.end method

.method stopSignalInfoTone()V
    .registers 3

    .prologue
    .line 3535
    const-string v0, "stop_signal_info_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3536
    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3537
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 3543
    :cond_17
    :goto_17
    return-void

    .line 3538
    :cond_18
    const-string v0, "signal_info_tone_generator_stop"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3539
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_17

    .line 3540
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_17
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1722
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1725
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1726
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1727
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1728
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1729
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1730
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1731
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1732
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1733
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1734
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1744
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1745
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_5b

    .line 1746
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1747
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_5b

    .line 1748
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1753
    :cond_5b
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1756
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1758
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1759
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1762
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1763
    return-void
.end method
