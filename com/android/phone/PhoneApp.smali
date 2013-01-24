.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$6;,
        Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;,
        Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field static final DBG_LEVEL:I

.field private static imsBTHelper:Ljava/lang/Object;

.field public static mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

.field static mDockState:I

.field static mIsDockConnected:Z

.field public static mIsInitiatedMMI:Z

.field private static mIsLawmoLocked:Z

.field public static mIsProximityCloseDistance:Z

.field public static mIsScreenOn:Z

.field public static mIsUsbConnected:Z

.field public static mIsfirstcall:Z

.field public static remindCallTime:I

.field private static roamingToastShown:Z

.field private static sMe:Lcom/android/phone/PhoneApp;

.field static sVoiceCapable:Z


# instance fields
.field private autoCSP:Lcom/android/phone/IAutoCSP;

.field private autoCSPConnection:Landroid/content/ServiceConnection;

.field callController:Lcom/android/phone/CallController;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mAutomaticAcceptAlertDialog:Lcom/android/phone/AutomaticAcceptAlertDialog;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field public mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mDataRoamingGuardScreen:Lcom/android/phone/DataRoamingGuard;

.field private mDockReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private mIMSPhoneIndex:I

.field private mIgnoreTouchUserActivity:Z

.field public mInCallScreen:Lcom/android/phone/InCallScreen;

.field mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field mIsIMSPhoneSet:Z

.field private mIsRcsTurnedOn:Z

.field private mIsWifiDisabledByECM:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastNumber:Ljava/lang/String;

.field private mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field public mMmiInitMsg:Landroid/os/AsyncResult;

.field mNetworkNotificationUI:Lcom/android/phone/NetworkNotificationUI;

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamSettingDataContentObserver:Landroid/database/ContentObserver;

.field private mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field mShowCallRoamingGuardDialog:Z

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mTtyEnabled:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field notifier2:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field phone:Lcom/android/internal/telephony/Phone;

.field phone1:Lcom/android/internal/telephony/Phone;

.field phone2:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field phoneMgr2:Lcom/android/phone/PhoneInterfaceManager;

.field phoneMgrExt:Lcom/android/phone/PhoneInterfaceManagerExt;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-static {}, Lcom/android/phone/PhoneFeature;->checkDBGLevel()I

    move-result v0

    sput v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    .line 220
    sput-boolean v1, Lcom/android/phone/PhoneApp;->roamingToastShown:Z

    .line 301
    sput v1, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 302
    sput-boolean v2, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 416
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    .line 447
    sput-boolean v2, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    .line 448
    sput v1, Lcom/android/phone/PhoneApp;->remindCallTime:I

    .line 460
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsInitiatedMMI:Z

    .line 463
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsLawmoLocked:Z

    .line 490
    sput-boolean v2, Lcom/android/phone/PhoneApp;->mIsfirstcall:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 899
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 298
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 299
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 300
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    .line 314
    iput v1, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    .line 339
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 341
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsRcsTurnedOn:Z

    .line 343
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 352
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 358
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 359
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 368
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 377
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 417
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mAutomaticAcceptAlertDialog:Lcom/android/phone/AutomaticAcceptAlertDialog;

    .line 459
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mMmiInitMsg:Landroid/os/AsyncResult;

    .line 465
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowCallRoamingGuardDialog:Z

    .line 484
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsWifiDisabledByECM:Z

    .line 486
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mLastNumber:Ljava/lang/String;

    .line 488
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 527
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 3103
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 3486
    new-instance v0, Lcom/android/phone/PhoneApp$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$3;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 3743
    new-instance v0, Lcom/android/phone/PhoneApp$4;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$4;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->autoCSPConnection:Landroid/content/ServiceConnection;

    .line 3889
    new-instance v0, Lcom/android/phone/PhoneApp$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneApp$5;-><init>(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mRoamSettingDataContentObserver:Landroid/database/ContentObserver;

    .line 900
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 901
    return-void
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/phone/PhoneApp;->roamingToastShown:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    sput-boolean p0, Lcom/android/phone/PhoneApp;->roamingToastShown:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isGlobalPopupDisplayed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneApp;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager$KeyguardLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/phone/PhoneApp;Landroid/app/KeyguardManager$KeyguardLock;)Landroid/app/KeyguardManager$KeyguardLock;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/DataRoamingGuard;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mDataRoamingGuardScreen:Lcom/android/phone/DataRoamingGuard;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/PhoneApp;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->customerProprietaryInformation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    sput-object p0, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/phone/PhoneApp;)Landroid/hardware/Sensor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/PhoneApp;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/phone/PhoneApp;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/IAutoCSP;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/PhoneApp;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/phone/PhoneApp;Lcom/android/phone/IAutoCSP;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->setAutoCSP(Lcom/android/phone/IAutoCSP;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onSSInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 1310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1311
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    return-object v0
.end method

.method static createCallLogIntent(Z)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 1316
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCallLogIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-nez p0, :cond_23

    .line 1319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.RECENT_CALLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1325
    :goto_22
    return-object v0

    .line 1322
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.dialertab.calllog.DetailViewActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    const-string v1, "direct"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_22
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 1336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1337
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1340
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 1369
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1370
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1371
    return-object v0
.end method

.method static createInVTCallIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 1351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1352
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1355
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getVTCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInVTCallIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",&&&&& "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v1, "kor_cs_vt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1358
    const-string v1, "Videocalltype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1360
    :cond_5c
    return-object v0
.end method

.method private customerProprietaryInformation(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 3896
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AT+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=23,0,0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3900
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->sendBroadcastCustomerProprietaryInformation()V

    .line 3902
    :cond_2f
    return-void
.end method

.method private getAutoRejectListContentURI()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 3905
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    .line 3907
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "reject_number"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "reject_checked"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "reject_match"

    aput-object v4, v2, v0

    .line 3913
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1399
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1414
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/PhoneApp;
    .registers 1

    .prologue
    .line 1279
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method private getMode()I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3871
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3872
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming_onetime"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3874
    if-ne v2, v0, :cond_29

    .line 3875
    if-ne v3, v0, :cond_27

    .line 3881
    :goto_26
    return v0

    .line 3878
    :cond_27
    const/4 v0, 0x2

    goto :goto_26

    :cond_29
    move v0, v1

    goto :goto_26
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .prologue
    .line 1286
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getRejectMessagesContentURI()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 3917
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    .line 3919
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "reject_message"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "edit_checked"

    aput-object v4, v2, v0

    .line 3924
    const-string v5, "_id desc"

    .line 3926
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1407
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getVTCallScreenClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1418
    const-class v0, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3303
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_11

    .line 3304
    const-string v0, "PhoneApp"

    const-string v1, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    :goto_10
    return-void

    .line 3306
    :cond_11
    const-string v2, "PhoneApp"

    const-string v3, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_7f

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v1

    .line 3311
    :goto_24
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3314
    const-string v3, "ttyEnabled"

    if-eqz v0, :cond_48

    const/4 v1, 0x1

    :cond_48
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3315
    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3318
    packed-switch v0, :pswitch_data_82

    .line 3330
    const-string v0, "tty_off"

    move-object v1, v0

    .line 3333
    :goto_54
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_10

    .line 3320
    :pswitch_73
    const-string v0, "tty_full"

    move-object v1, v0

    .line 3321
    goto :goto_54

    .line 3323
    :pswitch_77
    const-string v0, "tty_vco"

    move-object v1, v0

    .line 3324
    goto :goto_54

    .line 3326
    :pswitch_7b
    const-string v0, "tty_hco"

    move-object v1, v0

    .line 3327
    goto :goto_54

    :cond_7f
    move v0, v1

    goto :goto_24

    .line 3318
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_73
        :pswitch_7b
        :pswitch_77
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/16 v11, 0x23

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3122
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 3124
    if-eqz v1, :cond_cb

    .line 3125
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 3126
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 3127
    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 3128
    const-string v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3129
    const-string v0, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3130
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 3133
    const-string v0, "data_roaming_option_national"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 3134
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "data_national_roaming_mode"

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3143
    :goto_47
    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "roamingMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7e

    .line 3146
    invoke-virtual {v3, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3147
    invoke-virtual {v4, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3149
    if-ne v0, v9, :cond_129

    .line 3150
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 3151
    invoke-interface {v5, v9}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 3162
    :cond_7e
    :goto_7e
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3163
    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isGlobalPopupDisplayed()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3165
    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ServiceState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3166
    if-ne v2, v9, :cond_135

    .line 3167
    const-string v0, "PhoneApp"

    const-string v2, "is STATE_OUT_OF_SERVICE"

    invoke-static {v0, v2, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3168
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 3169
    const-string v0, "PhoneApp"

    const-string v2, "send EVENT_NETWORK_MODE_CHANGE_POPUP"

    invoke-static {v0, v2, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3170
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v11, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3183
    :cond_cb
    :goto_cb
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3185
    const-string v0, "PhoneApp"

    const-string v2, "Receive ACTION_SERVICE_STATE_CHANGED - setAutoDialState "

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setAutoDialState()V

    .line 3187
    const-string v0, "support_action_domestic_network"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 3188
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v12, v0, :cond_103

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isNetworkSettingEnable()Z

    move-result v0

    if-nez v0, :cond_103

    .line 3189
    const-string v0, "PhoneApp"

    const-string v1, "showNetworkAutoRebootIfManualSelected "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->showNetworkAutoRebootIfManualSelected()V

    .line 3194
    :cond_103
    return-void

    .line 3136
    :cond_104
    const-string v0, "data_roaming_option_all"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 3137
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "data_national_roaming_mode"

    invoke-static {v0, v6, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_47

    .line 3140
    :cond_118
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "data_national_roaming_mode"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_47

    .line 3153
    :cond_124
    invoke-interface {v5, v10}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_7e

    .line 3155
    :cond_129
    if-ne v0, v13, :cond_130

    .line 3156
    invoke-interface {v5, v9}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_7e

    .line 3158
    :cond_130
    invoke-interface {v5, v10}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_7e

    .line 3173
    :cond_135
    const-string v0, "PhoneApp"

    const-string v2, "not STATE_OUT_OF_SERVICE"

    invoke-static {v0, v2, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3174
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3175
    const-string v0, "PhoneApp"

    const-string v2, "remove EVENT_NETWORK_MODE_CHANGE_POPUP"

    invoke-static {v0, v2, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3176
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_cb
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 3339
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3341
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    .line 3342
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_22
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 3347
    return-void
.end method

.method private initForNewRadioTechnology()V
    .registers 5

    .prologue
    .line 2266
    const-string v0, "PhoneApp"

    const-string v1, "initForNewRadioTechnology..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2268
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 2270
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 2271
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 2273
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2275
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_30

    .line 2276
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 2278
    :cond_30
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_3b

    .line 2279
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 2281
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_46

    .line 2282
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 2284
    :cond_46
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_51

    .line 2285
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 2292
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 2293
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 2294
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePhoneAppRegistrationsAfterRadioTechnologyChange()V

    .line 2295
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_69

    .line 2296
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 2298
    :cond_69
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_72

    .line 2299
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 2303
    :cond_72
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 2304
    if-eqz v0, :cond_88

    .line 2305
    const-string v1, "PhoneApp"

    const-string v2, "Update registration for ICC status..."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2310
    :cond_88
    return-void

    .line 2289
    :cond_89
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_51
.end method

.method public static isFactoryMode()Z
    .registers 3

    .prologue
    .line 3800
    const-string v0, "/efs/FactoryApp/factorymode"

    .line 3804
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/factorymode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_1c

    move-result-object v0

    .line 3810
    :goto_10
    if-eqz v0, :cond_27

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3811
    const/4 v0, 0x0

    .line 3813
    :goto_1b
    return v0

    .line 3805
    :catch_1c
    move-exception v0

    .line 3806
    const-string v0, "OFF"

    .line 3807
    const-string v1, "PhoneApp"

    const-string v2, "cannot open file"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3813
    :cond_27
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private isGlobalPopupDisplayed()Z
    .registers 9

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3197
    const-string v0, "PhoneApp"

    const-string v3, "isGlobalPopupDisplayed"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    .line 3199
    :goto_18
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_83

    move v3, v1

    .line 3200
    :goto_25
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSimState()I

    move-result v4

    if-eq v4, v1, :cond_85

    move v4, v1

    .line 3202
    :goto_2c
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isGlobalMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " provisioned : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3203
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneUtils.isFactoryMode() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isFactoryMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simInserted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3204
    if-eqz v0, :cond_87

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_87

    if-nez v3, :cond_87

    if-eqz v4, :cond_87

    :goto_80
    return v1

    :cond_81
    move v0, v2

    .line 3198
    goto :goto_18

    :cond_83
    move v3, v2

    .line 3199
    goto :goto_25

    :cond_85
    move v4, v2

    .line 3200
    goto :goto_2c

    :cond_87
    move v1, v2

    .line 3204
    goto :goto_80
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2254
    const-string v0, "PhoneApp"

    const-string v1, "onMMIComplete()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2255
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 2256
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 2257
    return-void
.end method

.method private onSSInfo(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2260
    const-string v0, "PhoneApp"

    const-string v1, "onSSInfo()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2261
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2262
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displaySSInfo(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 2263
    return-void
.end method

.method private registerForMMIandSSNotifications()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2326
    const-string v0, "PhoneApp"

    const-string v1, "registerForMMIandSSNotifications..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2328
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2329
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2332
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2333
    return-void
.end method

.method private resetStatesFromIMS()V
    .registers 3

    .prologue
    .line 3671
    const-string v0, "PhoneApp"

    const-string v1, "resetStatesFromIMS..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_b

    .line 3675
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->resetPhoneMngrContextForIMS(Lcom/android/internal/telephony/Phone;)V

    .line 3676
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->resetRingerContextFromIMS(Lcom/android/internal/telephony/Phone;)V

    .line 3677
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->resetCallNotifierRegistrationsFromIMS(Lcom/android/internal/telephony/Phone;)V

    .line 3692
    return-void
.end method

.method private sendBroadcastCustomerProprietaryInformation()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 3938
    .line 3945
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3947
    if-eqz v1, :cond_58

    .line 3948
    const-string v2, "autoreject_mode_enable_sharedpref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3949
    int-to-byte v1, v3

    .line 3950
    if-ne v3, v2, :cond_17

    .line 3951
    int-to-byte v0, v3

    .line 3954
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->getAutoRejectListContentURI()Landroid/database/Cursor;

    move-result-object v2

    .line 3956
    if-eqz v2, :cond_2c

    .line 3957
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3958
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3960
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 3961
    if-nez v3, :cond_2c

    .line 3962
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 3965
    :cond_2c
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->getRejectMessagesContentURI()Landroid/database/Cursor;

    move-result-object v2

    .line 3967
    if-eqz v2, :cond_42

    .line 3968
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3969
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3971
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    .line 3972
    const/4 v2, 0x5

    if-ne v2, v3, :cond_42

    .line 3973
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 3976
    :cond_42
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USBATCOMMAND_RESPONSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3978
    if-ne v4, v1, :cond_54

    .line 3979
    if-ne v4, v0, :cond_54

    .line 3980
    const-string v0, "response"

    const-string v1, "+CPITEST:23,\r\nOK\r\n"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3988
    :cond_54
    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3989
    return-void

    :cond_58
    move v1, v0

    goto :goto_17
.end method

.method private setAutoCSP(Lcom/android/phone/IAutoCSP;)V
    .registers 2
    .parameter "aCSP"

    .prologue
    .line 3761
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;

    .line 3762
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2424
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 2425
    sget-object v2, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    if-eqz v2, :cond_151

    .line 2426
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bluetoothAudioState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    if-ne p0, v8, :cond_a8

    .line 2430
    :try_start_35
    const-string v2, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendBTEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "BT_CONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_65} :catch_d9

    .line 2440
    :goto_65
    if-ne p1, v9, :cond_fc

    .line 2441
    :try_start_67
    const-string v2, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendBTEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "AUDIO_CONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_97} :catch_12e

    .line 2454
    :cond_97
    :goto_97
    sget-object v2, Lcom/android/phone/PhoneApp$6;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_166

    move v0, v1

    .line 2472
    :cond_a7
    :goto_a7
    return v0

    .line 2433
    :cond_a8
    :try_start_a8
    const-string v2, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendBTEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "BT_DISCONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d8} :catch_d9

    goto :goto_65

    .line 2435
    :catch_d9
    move-exception v2

    .line 2436
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bluetoothState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65

    .line 2443
    :cond_fc
    :try_start_fc
    const-string v2, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sendBTEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "AUDIO_DISCONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_12c} :catch_12e

    goto/16 :goto_97

    .line 2445
    :catch_12e
    move-exception v2

    .line 2446
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bluetoothAudioState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_97

    .line 2449
    :cond_151
    const-string v2, "PhoneApp"

    const-string v3, "imsBTHelper is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_97

    .line 2460
    :pswitch_15a
    if-ne p0, v8, :cond_15e

    if-eq p1, v9, :cond_a7

    :cond_15e
    move v0, v1

    goto/16 :goto_a7

    .line 2469
    :pswitch_161
    if-eq p0, v8, :cond_a7

    move v0, v1

    goto/16 :goto_a7

    .line 2454
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_161
    .end packed-switch
.end method

.method private updatePhoneAppRegistrationsAfterRadioTechnologyChange()V
    .registers 4

    .prologue
    .line 2313
    const-string v0, "PhoneApp"

    const-string v1, "updatePhoneAppRegistrationsAfterRadioTechnologyChange..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2315
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2316
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2319
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 2322
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->registerForMMIandSSNotifications()V

    .line 2323
    return-void
.end method

.method private updatePokeLock()V
    .registers 5

    .prologue
    .line 1728
    const/4 v0, 0x0

    .line 1730
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_1b

    .line 1731
    const-string v1, "samsung_screen_timeout_incall"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1732
    const/16 v0, 0x10

    .line 1769
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v3, "PhoneApp"

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_37

    .line 1773
    :goto_24
    return-void

    .line 1734
    :cond_25
    sget-object v1, Lcom/android/phone/PhoneApp$6;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    goto :goto_1b

    .line 1740
    :pswitch_33
    const/4 v0, 0x2

    .line 1741
    goto :goto_1b

    .line 1748
    :pswitch_35
    const/4 v0, 0x4

    .line 1749
    goto :goto_1b

    .line 1770
    :catch_37
    move-exception v0

    .line 1771
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1734
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_33
        :pswitch_35
    .end packed-switch
.end method

.method private updateStatesForIMS()V
    .registers 3

    .prologue
    .line 3647
    const-string v0, "PhoneApp"

    const-string v1, "updateStatesForIMS..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3650
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 3651
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 3653
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_2c

    .line 3654
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 3656
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_37

    .line 3657
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 3659
    :cond_37
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_42

    .line 3660
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 3663
    :cond_42
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_46

    .line 3666
    :cond_46
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->initPhoneMngrContextForIMS(Lcom/android/internal/telephony/Phone;)V

    .line 3667
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->initRingerContextForIMS(Lcom/android/internal/telephony/Phone;)V

    .line 3668
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->initCallNotifierRegistrationsForIMS(Lcom/android/internal/telephony/Phone;)V

    .line 3669
    return-void
.end method


# virtual methods
.method public IsDataOnRoamingApply()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3885
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roam_access_apply"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public IsGlobalDataRoamingNotification()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3836
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roam_access_notify"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public ShowDataRoamingToast()V
    .registers 4

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06d2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3833
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3834
    return-void
.end method

.method public ViewGlobalDataRoamingNotification()Z
    .registers 5

    .prologue
    .line 3817
    const/4 v0, 0x0

    .line 3818
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 3819
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->IsGlobalDataRoamingNotification()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 3820
    const/4 v0, 0x1

    .line 3822
    :cond_1a
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ViewGlobalDataRoamingNotification IsGlobalDataRoamingNotification()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->IsGlobalDataRoamingNotification()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ViewGlobalDataRoamingNotification IsDataOnRoamingApply()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->IsDataOnRoamingApply()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ViewGlobalDataRoamingNotification getDataOnRoamingEnabled()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    :goto_6e
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ViewGlobalDataRoamingNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    return v0

    .line 3826
    :cond_87
    const-string v1, "PhoneApp"

    const-string v2, " ViewGlobalDataRoamingNotification =this is not roaming  "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method acquirePartialWakeLock()V
    .registers 2

    .prologue
    .line 1776
    monitor-enter p0

    .line 1777
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1778
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1780
    :cond_e
    monitor-exit p0

    .line 1781
    return-void

    .line 1780
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public clearInCallScreenMode()V
    .registers 4

    .prologue
    .line 3263
    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3264
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_11

    .line 3265
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 3267
    :cond_11
    return-void
.end method

.method public clearOtaState()V
    .registers 3

    .prologue
    .line 3243
    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1c

    .line 3246
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 3247
    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_1c
    return-void
.end method

.method clearUserActivityTimeout()V
    .registers 6

    .prologue
    .line 3351
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 3356
    :goto_b
    return-void

    .line 3353
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public decImsPhoneIndex()V
    .registers 4

    .prologue
    .line 3639
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " before decImsPhoneIndex : mIMSPhoneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    iget v0, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    if-lez v0, :cond_24

    iget v0, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    .line 3641
    :cond_24
    return-void
.end method

.method public disableWifiInEmergencyCall()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3767
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3769
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 3770
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3771
    iput-boolean v6, p0, Lcom/android/phone/PhoneApp;->mIsWifiDisabledByECM:Z

    .line 3773
    :cond_16
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_26

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3d

    .line 3775
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3776
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 3778
    .local v2, wifiSavedState:I
    :try_start_2b
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 3779
    if-ne v2, v6, :cond_39

    .line 3780
    const-string v3, "wifi_saved_state"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_39
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2b .. :try_end_39} :catch_3e

    .line 3784
    :cond_39
    :goto_39
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 3786
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #wifiSavedState:I
    :cond_3d
    return-void

    .line 3781
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #wifiSavedState:I
    :catch_3e
    move-exception v3

    goto :goto_39
.end method

.method dismissCallScreen()V
    .registers 3

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_33

    .line 1579
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_34

    .line 1588
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1591
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1593
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1599
    :cond_33
    :goto_33
    return-void

    .line 1596
    :cond_34
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_33
.end method

.method public dismissOtaDialogs()V
    .registers 3

    .prologue
    .line 3253
    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1b

    .line 3256
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 3257
    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_1b
    return-void
.end method

.method displayCallScreen()V
    .registers 5

    .prologue
    .line 1440
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_1a

    .line 1445
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1461
    :goto_19
    return-void

    .line 1451
    :cond_1a
    const-string v0, "PhoneApp"

    const-string v1, "start InCallScreen activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :try_start_21
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_28} :catch_2c

    .line 1460
    :goto_28
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_19

    .line 1454
    :catch_2c
    move-exception v0

    .line 1458
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method displayVTCallScreen()V
    .registers 5

    .prologue
    .line 1423
    const-string v0, "PhoneApp"

    const-string v1, "displayVTCallScreen()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-string v0, "PhoneApp"

    const-string v1, "start InVTCallScreen activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :try_start_e
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_15} :catch_16

    .line 1434
    :goto_15
    return-void

    .line 1428
    :catch_16
    move-exception v0

    .line 1432
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayVTCallScreen: transition to InVTCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public enableWifiAfterEmergencyCall()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3789
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3791
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsWifiDisabledByECM:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 3792
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3793
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsWifiDisabledByECM:Z

    .line 3795
    :cond_19
    return-void
.end method

.method public getAutoCSP()Lcom/android/phone/IAutoCSP;
    .registers 2

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;

    return-object v0
.end method

.method getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;
    .registers 2

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAutomaticAcceptAlertDialog:Lcom/android/phone/AutomaticAcceptAlertDialog;

    return-object v0
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .registers 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;
    .registers 4

    .prologue
    .line 1502
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1503
    const-string v0, "ril.ICC2_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const-string v0, "ril.ICC2_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 1505
    :cond_26
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    .line 1513
    :goto_28
    return-object v0

    .line 1508
    :cond_29
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_40

    .line 1509
    const-string v0, "PhoneApp"

    const-string v1, "getCurrentNetworkPhone new phone1"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    goto :goto_28

    .line 1512
    :cond_40
    const-string v0, "PhoneApp"

    const-string v1, "getCurrentNetworkPhone new phone2"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    goto :goto_28
.end method

.method public getDataOnRoamingEnabled()Z
    .registers 5

    .prologue
    .line 3862
    .line 3864
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->getMode()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    .line 3866
    :goto_7
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getDataOnRoamingEnabled <PhoneApp>setting return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    return v0

    .line 3864
    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getImsBTHelper()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3991
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3992
    sget-object v0, Lcom/android/phone/PhoneApp;->imsBTHelper:Ljava/lang/Object;

    .line 3994
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getImsPhoneIndex()I
    .registers 4

    .prologue
    .line 3635
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getImsPhoneIndex : mIMSPhoneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    iget v0, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    return v0
.end method

.method public getInCallScreen()Lcom/android/phone/InCallScreen;
    .registers 2

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public getInCallScreenInstance()Lcom/android/phone/InCallScreen;
    .registers 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;
    .registers 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public getLawmoLockState()Z
    .registers 4

    .prologue
    .line 3723
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getLawmoLockState : mIsLawmoLocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsLawmoLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsLawmoLocked:Z

    return v0
.end method

.method getMsisdnavailable()Z
    .registers 2

    .prologue
    .line 1473
    const/4 v0, 0x1

    return v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .registers 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getUpdateLock()Landroid/os/UpdateLock;
    .registers 2

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    return-object v0
.end method

.method handleOtaspDisconnect()V
    .registers 3

    .prologue
    .line 1626
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_13

    .line 1631
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :goto_12
    return-void

    .line 1635
    :cond_13
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_12
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 1608
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_3b

    .line 1613
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :goto_3a
    return-void

    .line 1618
    :cond_3b
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_3a
.end method

.method handleWB(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2916
    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver: android.intent.action.WB_AMR extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2919
    if-ne p1, v2, :cond_37

    .line 2920
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setWBMode(Z)V

    .line 2922
    const-string v3, "wb_amr=on"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2933
    :goto_2c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2935
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_40

    .line 2978
    :goto_36
    return-void

    .line 2925
    :cond_37
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setWBMode(Z)V

    .line 2926
    const-string v3, "wb_amr=off"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_2c

    .line 2939
    :cond_40
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8c

    if-ne p1, v2, :cond_8c

    .line 2941
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 2969
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2970
    if-eq p1, v2, :cond_eb

    :goto_5f
    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 2973
    :cond_62
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2974
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 2977
    :cond_6b
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNoiseSuppressionOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2943
    :cond_8c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2944
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2945
    const-string v0, "noise_reduction_sharedpref"

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2947
    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 2949
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "call_noise_reduction"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f0

    move v0, v1

    .line 2951
    :goto_c7
    const-string v4, "noise_reduction_sharedpref"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2959
    :cond_cd
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ee

    const-string v3, "noise_suppression_support_speaker"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ee

    move v3, v2

    .line 2963
    :goto_e0
    if-nez v3, :cond_53

    .line 2964
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto/16 :goto_53

    :cond_eb
    move v2, v1

    .line 2970
    goto/16 :goto_5f

    :cond_ee
    move v3, v1

    goto :goto_e0

    :cond_f0
    move v0, v2

    goto :goto_c7
.end method

.method public isFactoryTest()Z
    .registers 4

    .prologue
    .line 3708
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3709
    const-string v1, "ril.LoopbackCallFlag"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3711
    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isGlobalDataRoamingConnection()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3841
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 3842
    if-eqz v1, :cond_2b

    .line 3843
    const-string v1, "PhoneApp"

    const-string v2, " isGlobalDataRoamingConnection : phone in roaming"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_22

    .line 3845
    const-string v1, "PhoneApp"

    const-string v2, " isGlobalDataRoamingConnection : DataOnRoaming Enabled"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    :goto_21
    return v0

    .line 3853
    :cond_22
    const-string v0, "PhoneApp"

    const-string v1, " isGlobalDataRoamingConnection PhoneApp : <NO TOAST> DataOnRoaming Disabled .. <???>"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    :goto_29
    const/4 v0, 0x0

    goto :goto_21

    .line 3856
    :cond_2b
    const-string v0, "PhoneApp"

    const-string v1, "isGlobalDataRoamingConnection  PhoneApp : <NO TOAST> NOT Roaming"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method isHeadsetPlugged()Z
    .registers 2

    .prologue
    .line 2342
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .registers 5

    .prologue
    .line 3224
    const/4 v0, 0x0

    .line 3225
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_b

    .line 3226
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 3228
    :cond_b
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInActiveState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    return v0
.end method

.method public isResetGlobalPopupTimer()V
    .registers 5

    .prologue
    const/16 v3, 0x23

    const/4 v2, 0x1

    .line 3208
    const-string v0, "PhoneApp"

    const-string v1, "isResetGlobalPopupTimer"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 3210
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3211
    const-string v0, "PhoneApp"

    const-string v1, "isResetGlobalPopupTimer : remove EVENT_NETWORK_MODE_CHANGE_POPUP"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3212
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3214
    :cond_26
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->isGlobalPopupDisplayed()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3215
    const-string v0, "PhoneApp"

    const-string v1, "isResetGlobalPopupTimer : send EVENT_NETWORK_MODE_CHANGE_POPUP"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3216
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3221
    :cond_3a
    :goto_3a
    return-void

    .line 3218
    :cond_3b
    const-string v0, "PhoneApp"

    const-string v1, "isResetGlobalPopupTimer : not send EVENT_NETWORK_MODE_CHANGE_POPUP"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3a
.end method

.method isShowingCallScreen()Z
    .registers 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1536
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_5
.end method

.method isShowingCallScreenForProximity()Z
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1565
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_5
.end method

.method isShowingInVTCallScreen()Z
    .registers 2

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 3474
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_5
.end method

.method isSimFDNEnabled()Z
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method isSimPinEnabled()Z
    .registers 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method makeGoToSleep()V
    .registers 6

    .prologue
    .line 3717
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 3719
    :goto_c
    return-void

    .line 3718
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1264
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_14

    .line 1265
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 1271
    :goto_7
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1272
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1273
    return-void

    .line 1267
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_7
.end method

.method public onCreate()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 905
    const-string v0, "PhoneApp"

    const-string v1, "onCreate()..."

    invoke-static {v0, v1, v9}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 907
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 909
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smallestScreenWidthDp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 911
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeature()V

    .line 917
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 918
    const-string v0, "AutoCSP"

    const-string v1, "Binding to AutoCSP Service "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/IAutoCSP;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->autoCSPConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/phone/PhoneApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 926
    :cond_56
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 933
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_3fd

    .line 935
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 937
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4eb

    .line 938
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    .line 939
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    .line 940
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4de

    .line 941
    const-string v0, "PhoneApp"

    const-string v1, "main phone1 new"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 948
    :goto_95
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 949
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 950
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 951
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 952
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 953
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr2:Lcom/android/phone/PhoneInterfaceManager;

    .line 972
    :goto_c1
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgrExt:Lcom/android/phone/PhoneInterfaceManagerExt;

    .line 974
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 976
    const-string v0, "ril.cdma.sid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v0, "ril.cdma.roamingarea"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_107

    const-string v0, "ril.cdma.roamingarea"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_107
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 983
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 985
    const/4 v1, 0x2

    if-ne v0, v1, :cond_123

    .line 987
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 988
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 991
    :cond_123
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_518

    .line 994
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 995
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1001
    :goto_13b
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 1004
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1005
    const v1, 0x1000001a

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1009
    const v1, 0x20000001

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1013
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51c

    .line 1014
    const v1, 0x3000000a

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1022
    :goto_172
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_184

    .line 1024
    const/16 v1, 0x20

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1027
    :cond_184
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: mProximityWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1031
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 1034
    :cond_1ab
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1036
    const-string v0, "sms_pattern_lock_message"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 1037
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1042
    :cond_1c4
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1047
    new-instance v0, Landroid/os/UpdateLock;

    const-string v1, "phone"

    invoke-direct {v0, v1}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    .line 1049
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: mUpdateLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-static {p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 1057
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1063
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 1069
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_529

    .line 1070
    new-instance v0, Lcom/android/phone/CallNotifier;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v6, Lcom/android/phone/CallLogAsync;

    invoke-direct {v6}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1071
    new-instance v1, Lcom/android/phone/CallNotifier;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v7, Lcom/android/phone/CallLogAsync;

    invoke-direct {v7}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->notifier2:Lcom/android/phone/CallNotifier;

    .line 1077
    :goto_233
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1078
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1081
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_25c

    .line 1083
    const-string v1, "PhoneApp"

    const-string v2, "register for ICC status"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1088
    :cond_25c
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->registerForMMIandSSNotifications()V

    .line 1091
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_279

    const-string v0, "tty_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53c

    :cond_279
    move v0, v9

    :goto_27a
    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 1097
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1099
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1109
    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    const-string v1, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    const-string v1, "android.intent.action.WB_AMR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1113
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1115
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v1, :cond_2d7

    .line 1116
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    :cond_2d7
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    const-string v1, "raft"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f3

    .line 1121
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1123
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1125
    :cond_2f3
    const-string v1, "auto_call_test"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_305

    .line 1126
    const-string v1, "android.intent.action.INCOMING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1127
    const-string v1, "android.intent.action.CALL_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    :cond_305
    const-string v1, "optis_command_test"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_317

    .line 1130
    const-string v1, "android.intent.action.COMMAND_ENDCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    const-string v1, "android.intent.action.COMMAND_ANSWERCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1133
    :cond_317
    const-string v1, "sms_pattern_lock_message"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_324

    .line 1134
    const-string v1, "com.sec.android.LockPattern.CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    :cond_324
    const-string v1, "block_data_during_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_336

    .line 1137
    const-string v1, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string v1, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1141
    :cond_336
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_348

    .line 1142
    const-string v1, "com.android.settings.MANUAL_SELECTION_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1143
    const-string v1, "com.android.settings.PLMNACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1145
    :cond_348
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_358

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35d

    .line 1146
    :cond_358
    const-string v1, "com.android.settings.NITZ_TIME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1148
    :cond_35d
    const-string v1, "support_action_domestic_network"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36a

    .line 1149
    const-string v1, "com.android.server.status.domestic_network"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1151
    :cond_36a
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37e

    .line 1152
    const-string v1, "Add ACTION_CURRENT_NETWORK action!!!"

    const-string v2, "ACTION_CURRENT_NETWORK received"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v1, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    :cond_37e
    const-string v1, "att_customer_proprietary_information"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 1157
    const-string v1, "android.intent.action.USBATCOMMAND_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    :cond_38b
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_398

    .line 1160
    const-string v1, "com.sec.siso.ims.BTSERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    :cond_398
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1176
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1178
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1179
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 1182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1183
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1184
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1186
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1189
    const v0, 0x7f060026

    invoke-static {p0, v0, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1191
    const v0, 0x7f060006

    invoke-static {p0, v0, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1196
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1200
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3fd

    .line 1201
    new-instance v0, Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mNetworkNotificationUI:Lcom/android/phone/NetworkNotificationUI;

    .line 1205
    :cond_3fd
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_421

    .line 1206
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1207
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1208
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1209
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1212
    :cond_421
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1215
    iput-boolean v8, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 1224
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v0, :cond_453

    .line 1225
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 1229
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1232
    :cond_453
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_468

    const-string v0, "hac_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_489

    .line 1233
    :cond_468
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_aid"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1236
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1237
    const-string v2, "HACSetting"

    if-eqz v1, :cond_53f

    const-string v1, "ON"

    :goto_486
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_489
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->createInstance(Landroid/content/Context;)Lcom/android/phone/ECNUtils;

    .line 1244
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b9

    .line 1245
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingDataRoaming()V

    .line 1246
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mRoamSettingDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1248
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roam_setting_data_international"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mRoamSettingDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1252
    :cond_4b9
    const-string v0, "csc_chameleon_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c4

    .line 1253
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->checkCscChameleonFile()V

    .line 1255
    :cond_4c4
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4dd

    .line 1256
    const-string v0, "PhoneApp"

    const-string v1, "IMSBTService start"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSBTService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1260
    :cond_4dd
    return-void

    .line 944
    :cond_4de
    const-string v0, "PhoneApp"

    const-string v1, "main phone2 new"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_95

    .line 956
    :cond_4eb
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 959
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 962
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 963
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 967
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 969
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    goto/16 :goto_c1

    .line 998
    :cond_518
    iput-object v3, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_13b

    .line 1017
    :cond_51c
    const v1, 0x1000000a

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_172

    .line 1073
    :cond_529
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v4, Lcom/android/phone/CallLogAsync;

    invoke-direct {v4}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    goto/16 :goto_233

    :cond_53c
    move v0, v8

    .line 1094
    goto/16 :goto_27a

    .line 1237
    :cond_53f
    const-string v1, "OFF"

    goto/16 :goto_486
.end method

.method public orientationChanged(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 2159
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 2160
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2161
    return-void
.end method

.method pokeUserActivity()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2010
    const-string v0, "PhoneApp"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2012
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2013
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2014
    const-string v0, "PhoneApp"

    const-string v1, "Skip to pokeUserActivity() due to CDMA factorytest..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :goto_1d
    return-void

    .line 2020
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_1d

    .line 2021
    :catch_29
    move-exception v0

    .line 2022
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1d
.end method

.method preventScreenOn(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1968
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- preventScreenOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :try_start_1e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    .line 1974
    :goto_23
    return-void

    .line 1971
    :catch_24
    move-exception v0

    .line 1972
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method proximitySensorModeEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2236
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2237
    .local v0, myCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_10

    .line 2238
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2242
    :cond_f
    :goto_f
    return v1

    :cond_10
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    goto :goto_f
.end method

.method releasePartialWakeLock()V
    .registers 2

    .prologue
    .line 1784
    monitor-enter p0

    .line 1785
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1786
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1788
    :cond_e
    monitor-exit p0

    .line 1789
    return-void

    .line 1788
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .registers 5
    .parameter

    .prologue
    .line 1801
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    monitor-enter p0

    .line 1803
    :try_start_1f
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_57

    .line 1804
    sget-object v0, Lcom/android/phone/PhoneApp$6;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_bc

    .line 1840
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1841
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1843
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1844
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1846
    :cond_48
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1847
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1851
    :cond_55
    :goto_55
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1853
    :cond_57
    monitor-exit p0

    .line 1854
    return-void

    .line 1808
    :pswitch_59
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1809
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1810
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1812
    :cond_6b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1813
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_55

    .line 1853
    :catchall_79
    move-exception v0

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_1f .. :try_end_7b} :catchall_79

    throw v0

    .line 1819
    :pswitch_7c
    :try_start_7c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1820
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1821
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1823
    :cond_8e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1824
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_55

    .line 1828
    :pswitch_9c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1830
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1831
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1833
    :cond_ae
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1834
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_bb
    .catchall {:try_start_7c .. :try_end_bb} :catchall_79

    goto :goto_55

    .line 1804
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_59
        :pswitch_7c
        :pswitch_9c
    .end packed-switch
.end method

.method resetImsPhone()V
    .registers 4

    .prologue
    .line 3574
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3575
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " resetImsPhone : mIsIMSPhoneSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 3577
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->decImsPhoneIndex()V

    .line 3578
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 3579
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3580
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3581
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->resetStatesFromIMS()V

    .line 3582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    .line 3585
    :cond_43
    return-void
.end method

.method public resetLatestActiveCallOrigin()V
    .registers 9

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v0, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 3409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3411
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTimeMillis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", saved timestamp for call origin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_63

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-gez v0, :cond_63

    .line 3417
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume previous call origin ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-wide v2, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 3426
    :goto_62
    return-void

    .line 3423
    :cond_63
    const-string v0, "PhoneApp"

    const-string v1, "Drop previous call origin and set the current one to null"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_62
.end method

.method setAutomaticAcceptAlertDialogInstance(Lcom/android/phone/AutomaticAcceptAlertDialog;)V
    .registers 2
    .parameter "dialogHandle"

    .prologue
    .line 3478
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mAutomaticAcceptAlertDialog:Lcom/android/phone/AutomaticAcceptAlertDialog;

    .line 3479
    return-void
.end method

.method setBeginningCall(Z)V
    .registers 3
    .parameter "beginning"

    .prologue
    .line 2039
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 2041
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2042
    return-void
.end method

.method public setCallRoamingGuardDialog(Z)V
    .registers 2
    .parameter "status"

    .prologue
    .line 3551
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShowCallRoamingGuardDialog:Z

    .line 3554
    return-void
.end method

.method public setChannel(Ljava/lang/Boolean;)V
    .registers 10
    .parameter "set"

    .prologue
    .line 3597
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setChannel :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v4, :cond_23

    new-instance v4, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v4, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 3602
    :cond_23
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3603
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3606
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x6

    .line 3607
    .local v3, fileSize:I
    const/16 v4, 0x16

    :try_start_30
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3608
    const/16 v4, 0x37

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3609
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3610
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_43} :catch_ce

    if-ne v4, v5, :cond_6a

    .line 3623
    if-eqz v0, :cond_4a

    :try_start_47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3624
    :cond_4a
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_50

    .line 3631
    :cond_4f
    :goto_4f
    return-void

    .line 3625
    :catch_50
    move-exception v2

    .line 3626
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPsDataChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 3614
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6a
    const/4 v4, 0x2

    :try_start_6b
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3615
    const-string v4, "PhoneApp"

    const-string v5, "setPSDataChannel : setting call tye as  VT"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b2

    const/4 v4, 0x1

    :goto_7c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3618
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_89} :catch_ce

    .line 3623
    if-eqz v0, :cond_8e

    :try_start_8b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3624
    :cond_8e
    if-eqz v1, :cond_93

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_93} :catch_b4

    .line 3630
    :cond_93
    :goto_93
    if-eqz v0, :cond_4f

    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPSDataChannel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 3617
    :cond_b2
    const/4 v4, 0x0

    goto :goto_7c

    .line 3625
    :catch_b4
    move-exception v2

    .line 3626
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPsDataChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 3619
    .end local v2           #e:Ljava/lang/Exception;
    :catch_ce
    move-exception v2

    .line 3620
    .local v2, e:Ljava/io/IOException;
    :try_start_cf
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPSDataChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_cf .. :try_end_e7} :catchall_10c

    .line 3623
    if-eqz v0, :cond_ec

    :try_start_e9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3624
    :cond_ec
    if-eqz v1, :cond_93

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f1} :catch_f2

    goto :goto_93

    .line 3625
    :catch_f2
    move-exception v2

    .line 3626
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPsDataChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 3622
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_10c
    move-exception v4

    .line 3623
    if-eqz v0, :cond_112

    :try_start_10f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3624
    :cond_112
    if-eqz v1, :cond_117

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_117} :catch_118

    .line 3627
    :cond_117
    :goto_117
    throw v4

    .line 3625
    :catch_118
    move-exception v2

    .line 3626
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPsDataChannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117
.end method

.method setCurrentPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "currentPhone"

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1495
    return-void
.end method

.method setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V
    .registers 2
    .parameter "dataRoamingGuardScreen"

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mDataRoamingGuardScreen:Lcom/android/phone/DataRoamingGuard;

    .line 3548
    return-void
.end method

.method setIMSPhone()V
    .registers 4

    .prologue
    .line 3557
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setIMSPhone : mIsIMSPhoneSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3560
    iget v0, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    .line 3561
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    if-nez v0, :cond_43

    .line 3562
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3563
    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3564
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 3565
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3566
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updateStatesForIMS()V

    .line 3567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsIMSPhoneSet:Z

    .line 3570
    :cond_43
    return-void
.end method

.method setIgnoreTouchUserActivity(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1992
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgnoreTouchUserActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1998
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1999
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 2000
    return-void
.end method

.method public setImsPhoneIndex(I)V
    .registers 5
    .parameter

    .prologue
    .line 3643
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setImsPhoneIndex : value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    iput p1, p0, Lcom/android/phone/PhoneApp;->mIMSPhoneIndex:I

    .line 3645
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 3
    .parameter "inCallScreen"

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 1487
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_17

    .line 1488
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneApp;->setAutoCSP(Lcom/android/phone/IAutoCSP;)V

    .line 1491
    :cond_17
    return-void
.end method

.method setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter "inVTCallScreen"

    .prologue
    .line 3469
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 3470
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .registers 5
    .parameter "callOrigin"

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 3387
    if-eqz p1, :cond_f

    .line 3388
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 3392
    :goto_e
    return-void

    .line 3390
    :cond_f
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    goto :goto_e
.end method

.method public setLawmoLockState(Z)V
    .registers 5
    .parameter

    .prologue
    .line 3728
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLawmoLockState : LawmoLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    sput-boolean p1, Lcom/android/phone/PhoneApp;->mIsLawmoLocked:Z

    .line 3730
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1652
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1669
    return-void
.end method

.method public setRegisterMediaButtonEventReceiverForCalls()V
    .registers 5

    .prologue
    .line 3930
    const-string v0, "PhoneApp"

    const-string v1, "setRegisterMediaButtonEventReceiverForCalls..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3933
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 3935
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 516
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .registers 5
    .parameter

    .prologue
    .line 1688
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-ne p1, v0, :cond_23

    .line 1703
    :goto_22
    return-void

    .line 1701
    :cond_23
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1702
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_22
.end method

.method showBluetoothIndication()Z
    .registers 2

    .prologue
    .line 2357
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method public turnRcs(Z)V
    .registers 3
    .parameter

    .prologue
    .line 3733
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3734
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsRcsTurnedOn:Z

    .line 3736
    :cond_a
    return-void
.end method

.method updateBluetoothIndication(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2371
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 2374
    if-eqz p1, :cond_46

    .line 2377
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 2378
    :cond_19
    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2379
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2382
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2383
    if-eqz v0, :cond_46

    .line 2384
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2385
    const-string v0, "PhoneApp"

    const-string v1, "- updating vt notification for BT state change..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_46

    .line 2387
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->requestUpdateBluetoothIndication()V

    .line 2393
    :cond_46
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2394
    return-void
.end method

.method updateInCallScreen()V
    .registers 4

    .prologue
    .line 3284
    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3285
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_11

    .line 3289
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 3291
    :cond_11
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_1a

    .line 3292
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->requestUpdateTouchUi()V

    .line 3294
    :cond_1a
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 2170
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v1, :cond_3c

    .line 2171
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 2172
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2178
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v1, :cond_3d

    .line 2183
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2184
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->acquire()V

    .line 2187
    :cond_1b
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2188
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->setRegisterMediaButtonEventReceiverForCalls()V

    .line 2201
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v1, :cond_2c

    .line 2203
    iput v0, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 2208
    :cond_2c
    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 2214
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_3c

    .line 2215
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v2, :cond_39

    const/4 v0, 0x1

    :cond_39
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 2218
    :cond_3c
    return-void

    .line 2192
    :cond_3d
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2193
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2194
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->release()V

    goto :goto_26
.end method

.method public updateProximityMode()V
    .registers 2

    .prologue
    .line 2029
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 2030
    return-void
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2073
    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProximitySensorMode: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 2076
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v4

    .line 2080
    :try_start_23
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "proximity_sensor"

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2082
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_46
    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-nez v3, :cond_4c

    if-nez v0, :cond_10f

    :cond_4c
    move v3, v1

    .line 2088
    :goto_4d
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - screenOnImmediately : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - isForegroundActivityForProximity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - proximitySensorActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v0

    if-nez v0, :cond_112

    move v0, v1

    :goto_a0
    or-int/2addr v3, v0

    .line 2104
    const-string v0, "proximity_sensor_control_by_keypad"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_167

    .line 2106
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v0, :cond_114

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_114

    move v0, v1

    .line 2110
    :goto_c8
    or-int/2addr v0, v3

    .line 2112
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v3, :cond_d1

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v3, :cond_122

    :cond_d1
    if-nez v0, :cond_122

    .line 2115
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_116

    .line 2116
    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: acquiring..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2117
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2119
    const-string v0, "raft"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "ssc_antenna_solution"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 2122
    :cond_100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    .line 2123
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2153
    :cond_10d
    :goto_10d
    monitor-exit v4

    .line 2155
    :cond_10e
    return-void

    :cond_10f
    move v3, v2

    .line 2082
    goto/16 :goto_4d

    :cond_112
    move v0, v2

    .line 2097
    goto :goto_a0

    :cond_114
    move v0, v2

    .line 2106
    goto :goto_c8

    .line 2128
    :cond_116
    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: lock already held."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_10d

    .line 2153
    :catchall_11f
    move-exception v0

    monitor-exit v4
    :try_end_121
    .catchall {:try_start_23 .. :try_end_121} :catchall_11f

    throw v0

    .line 2133
    :cond_122
    :try_start_122
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 2134
    const-string v3, "PhoneApp"

    const-string v5, "updateProximitySensorMode: releasing..."

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2138
    if-eqz v0, :cond_15c

    .line 2140
    :goto_134
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 2142
    const-string v0, "raft"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_151

    const-string v0, "ssc_antenna_solution"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_151

    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 2145
    :cond_151
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    goto :goto_10d

    :cond_15c
    move v2, v1

    .line 2138
    goto :goto_134

    .line 2150
    :cond_15e
    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: lock already released."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_166
    .catchall {:try_start_122 .. :try_end_166} :catchall_11f

    goto :goto_10d

    :cond_167
    move v0, v2

    goto/16 :goto_c8
.end method

.method updateVTDuringCallWakeState(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3456
    const-string v0, "PhoneApp"

    const-string v1, "PhoneAPP :: updateVTDuringCallWakeState : "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    if-eqz p1, :cond_1f

    .line 3458
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 3459
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_19

    .line 3460
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 3466
    :goto_18
    return-void

    .line 3462
    :cond_19
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_18

    .line 3464
    :cond_1f
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_18
.end method

.method updateWakeState()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1885
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 1890
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    .line 1895
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v1

    .line 1905
    :goto_19
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v3, :cond_d2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d2

    move v3, v1

    .line 1913
    :goto_24
    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWakeState: callscreen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dialer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", speaker "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1935
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1944
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v0, :cond_d5

    move v0, v1

    .line 1945
    :goto_60
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_d7

    move v3, v1

    .line 1946
    :goto_6f
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_d9

    if-eqz v5, :cond_d9

    move v4, v1

    .line 1949
    :goto_7a
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1952
    :cond_82
    if-nez v0, :cond_8a

    if-nez v3, :cond_8a

    if-nez v4, :cond_8a

    if-eqz v2, :cond_8b

    :cond_8a
    move v2, v1

    .line 1953
    :cond_8b
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWakeState: keepScreenOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (isRinging "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", isDialing "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showingDisc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1958
    if-eqz v2, :cond_db

    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_cb
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1959
    return-void

    :cond_cf
    move v0, v2

    .line 1895
    goto/16 :goto_19

    :cond_d2
    move v3, v2

    .line 1905
    goto/16 :goto_24

    :cond_d5
    move v0, v2

    .line 1944
    goto :goto_60

    :cond_d7
    move v3, v2

    .line 1945
    goto :goto_6f

    :cond_d9
    move v4, v2

    .line 1946
    goto :goto_7a

    .line 1958
    :cond_db
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_cb
.end method

.method wakeUpScreen()V
    .registers 6

    .prologue
    .line 1861
    monitor-enter p0

    .line 1862
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1a

    .line 1863
    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1c

    .line 1865
    :try_start_f
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f

    .line 1870
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    .line 1871
    return-void

    .line 1870
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    .line 1866
    :catch_1f
    move-exception v0

    goto :goto_1a
.end method
