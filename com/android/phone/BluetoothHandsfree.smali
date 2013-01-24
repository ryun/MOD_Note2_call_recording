.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$35;,
        Lcom/android/phone/BluetoothHandsfree$PhoneCallState;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;,
        Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;,
        Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;,
        Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;,
        Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field private static final VOIP_DBG:Z

.field public static mIIEnabled:[Z

.field private static sInstance:Lcom/android/phone/BluetoothHandsfree;

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private imsHelper:Ljava/lang/Object;

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspendKor:Z

.field private mA2dpSuspended:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mAudioState:I

.field private mBgndEarliestConnectionTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCloseAudioDuringCallSetup:Z

.field private mCmee:Z

.field private mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

.field private mConnectedSco:Landroid/bluetooth/BluetoothSocket;

.field private final mContext:Landroid/content/Context;

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mExpectingBCS:Z

.field private mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetAddress:Ljava/lang/String;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetType:I

.field private mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

.field public mIndicatorsEnabled:Z

.field private mIsDelayedInactiveCallIndicatorNeeded:Z

.field private mIsWbsAvailable:Z

.field private mLocalBrsf:I

.field private mLocalCodec:I

.field private mPendingAudioState:Z

.field private mPendingScoForA2dp:Z

.field private mPendingScoForJCI:Z

.field private mPendingScoForWbs:Z

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRemoteAvailableCodecs:I

.field private mRemoteBrsf:I

.field private mRemoteCodec:I

.field private mScoGain:I

.field private mScoPath:I

.field private mScoSwitchingSupported:Z

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

.field private mStackParamSet:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserWantsAudio:Z

.field private mVirtualCallStarted:Z

.field private mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mVoiceRecognitionStarted:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v1, :cond_26

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_26

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    .line 106
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v3, :cond_28

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    .line 107
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v3, :cond_2a

    :goto_1d
    sput-boolean v1, Lcom/android/phone/BluetoothHandsfree;->VOIP_DBG:Z

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    return-void

    :cond_26
    move v0, v2

    .line 104
    goto :goto_10

    :cond_28
    move v0, v2

    .line 106
    goto :goto_17

    :cond_2a
    move v1, v2

    .line 107
    goto :goto_1d
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .registers 13
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 140
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 141
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 149
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z

    .line 150
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 151
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mStackParamSet:Z

    .line 166
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 167
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 168
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 172
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 184
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 185
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 187
    sget-object v3, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 190
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 200
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 201
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 203
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 204
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 205
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    .line 216
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 217
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 222
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z

    .line 256
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 264
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mScoSwitchingSupported:Z

    .line 267
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mScoPath:I

    .line 275
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z

    .line 2743
    new-instance v3, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 306
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 307
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 308
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 309
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_146

    move v0, v4

    .line 310
    .local v0, bluetoothCapable:Z
    :goto_5a
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 311
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 312
    if-eqz v0, :cond_6a

    .line 313
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v8, 0x2

    invoke-virtual {v3, v6, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 316
    :cond_6a
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 317
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 318
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 319
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspendKor:Z

    .line 321
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 323
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "Bluetooth HS/HF:StartCall"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 325
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 326
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "Bluetooth HS/HF:VoiceRecognition"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 328
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 330
    const/16 v3, 0x63

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 335
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v3, :cond_bb

    .line 336
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 337
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const-string v6, "AUTO_LISTEN"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    :cond_bb
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 342
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 345
    :cond_d7
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BluetoothHandsfreeHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 347
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 348
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-direct {v3, p0, v1, v9}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    .line 349
    new-instance v3, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v3, p0, v9}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 350
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 352
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z

    .line 354
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 355
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 356
    new-instance v3, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 357
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 359
    invoke-virtual {p0, v5}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 361
    const-string v3, "ims_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 363
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    if-nez v3, :cond_127

    .line 364
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getImsBTHelper()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    .line 368
    :cond_127
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z

    .line 370
    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z

    if-eqz v3, :cond_140

    .line 371
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 374
    :cond_140
    if-eqz v0, :cond_145

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 378
    :cond_145
    return-void

    .end local v0           #bluetoothCapable:Z
    .end local v1           #looper:Landroid/os/Looper;
    .end local v2           #thread:Landroid/os/HandlerThread;
    :cond_146
    move v0, v5

    .line 309
    goto/16 :goto_5a
.end method

.method private VoIPConnectionToClccEntry(I)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3449
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v6

    .line 3450
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 3451
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 3453
    if-eqz v6, :cond_20

    .line 3455
    :try_start_16
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_127

    move-result-object v0

    .line 3459
    :cond_20
    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoIPConnectionToClccEntry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3461
    sget-object v4, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_132

    .line 3487
    :pswitch_41
    const/4 v0, 0x0

    .line 3523
    :cond_42
    :goto_42
    return-object v0

    .line 3468
    :pswitch_43
    if-nez p1, :cond_ef

    .line 3469
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v0, :cond_ec

    move v0, v1

    .line 3492
    :goto_4a
    const-string v5, ""

    .line 3493
    const-string v3, ""

    .line 3496
    if-eqz v6, :cond_12d

    .line 3497
    :try_start_50
    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isIncoming()Z
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_108

    move-result v4

    if-eqz v4, :cond_105

    move v4, v1

    .line 3499
    :goto_57
    :try_start_57
    invoke-interface {v6}, Landroid/os/IVoIPInterface;->getCurrentRemoteCallNumber()Ljava/lang/String;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_125

    move-result-object v1

    move v3, v4

    :goto_5c
    move v4, v3

    move-object v3, v1

    .line 3505
    :goto_5e
    const/4 v1, -0x1

    .line 3506
    if-eqz v3, :cond_12a

    .line 3507
    const-string v1, "@chaton"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3508
    if-ltz v1, :cond_122

    .line 3509
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3514
    :goto_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " number"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3516
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    move-object v3, v1

    move v1, v8

    .line 3519
    :goto_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CLCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",0,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3520
    if-eqz v3, :cond_42

    .line 3521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_42

    :cond_ec
    move v0, v2

    .line 3469
    goto/16 :goto_4a

    .line 3471
    :cond_ef
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v0, :cond_f6

    move v0, v2

    goto/16 :goto_4a

    :cond_f6
    move v0, v1

    goto/16 :goto_4a

    .line 3475
    :pswitch_f9
    const/4 v0, 0x2

    .line 3476
    goto/16 :goto_4a

    .line 3478
    :pswitch_fc
    const/4 v0, 0x3

    .line 3479
    goto/16 :goto_4a

    .line 3481
    :pswitch_ff
    const/4 v0, 0x4

    .line 3482
    goto/16 :goto_4a

    .line 3484
    :pswitch_102
    const/4 v0, 0x5

    .line 3485
    goto/16 :goto_4a

    :cond_105
    move v4, v2

    .line 3497
    goto/16 :goto_57

    .line 3501
    :catch_108
    move-exception v1

    move v4, v2

    .line 3502
    :goto_10a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleVoipCallStateChange exeption :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto/16 :goto_5e

    :cond_122
    move-object v1, v3

    .line 3511
    goto/16 :goto_6d

    .line 3501
    :catch_125
    move-exception v1

    goto :goto_10a

    .line 3456
    :catch_127
    move-exception v4

    goto/16 :goto_20

    :cond_12a
    move-object v3, v5

    goto/16 :goto_94

    :cond_12d
    move-object v1, v3

    move v3, v2

    goto/16 :goto_5c

    .line 3461
    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_43
        :pswitch_f9
        :pswitch_fc
        :pswitch_41
        :pswitch_41
        :pswitch_ff
        :pswitch_102
        :pswitch_43
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    return v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return p1
.end method

.method static synthetic access$3200()Z
    .registers 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    return p1
.end method

.method static synthetic access$3676(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/phone/BluetoothHandsfree;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isAudio1Carkit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspendKor:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspendKor:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/phone/BluetoothHandsfree;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->memoryDial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isInVoIPcallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isInVoLTEcallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->imsGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$9700(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BluetoothHandsfree;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method private allowAudioAnytime()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4943
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "debug.bt.hfp.audio_anytime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private broadcastSlcEstablished()V
    .registers 4

    .prologue
    .line 4768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.SLC_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4769
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4770
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4771
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4773
    return-void
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2775
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastVendorSpecificEventIntent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2776
    :cond_20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2778
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2779
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2782
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2783
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2788
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2789
    return-void
.end method

.method private declared-synchronized callStarted()V
    .registers 2

    .prologue
    .line 4805
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_1a

    .line 4806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 4807
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4808
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4809
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 4812
    :cond_1a
    monitor-exit p0

    return-void

    .line 4805
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3341
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 3348
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->getcurrCdmaThreeWayCallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v4

    .line 3349
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->getprevCdmaThreeWayCallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v5

    .line 3350
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 3352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c.getState() : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", =ringingCallState :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3354
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v5, v0, :cond_d8

    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v4, v0, :cond_d8

    .line 3358
    const-string v0, "THRWAY_ACTIVE=>CONF_CALL "

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v0, v2

    .line 3396
    :goto_4a
    if-ne p1, v1, :cond_51

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_51

    move v0, v3

    .line 3401
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3423
    sget-object v3, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v4, v3, :cond_10e

    sget-object v3, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v5, v3, :cond_10e

    move v3, v1

    .line 3430
    :goto_70
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 3432
    :goto_76
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 3433
    const/4 v2, -0x1

    .line 3434
    if-eqz v4, :cond_81

    .line 3435
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    .line 3438
    :cond_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CLCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3439
    if-eqz v4, :cond_d7

    .line 3440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3442
    :cond_d7
    :goto_d7
    return-object v0

    .line 3361
    :cond_d8
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_112

    .line 3392
    :pswitch_e7
    const/4 v0, 0x0

    goto :goto_d7

    .line 3368
    :pswitch_e9
    if-nez p1, :cond_f5

    .line 3369
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v0, :cond_f2

    move v0, v1

    goto/16 :goto_4a

    :cond_f2
    move v0, v2

    goto/16 :goto_4a

    .line 3371
    :cond_f5
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v0, :cond_fc

    move v0, v2

    goto/16 :goto_4a

    :cond_fc
    move v0, v1

    goto/16 :goto_4a

    .line 3380
    :pswitch_ff
    const/4 v0, 0x2

    .line 3381
    goto/16 :goto_4a

    .line 3383
    :pswitch_102
    const/4 v0, 0x3

    .line 3384
    goto/16 :goto_4a

    .line 3386
    :pswitch_105
    const/4 v0, 0x4

    .line 3387
    goto/16 :goto_4a

    :pswitch_108
    move v0, v3

    .line 3390
    goto/16 :goto_4a

    :cond_10b
    move v1, v2

    .line 3430
    goto/16 :goto_76

    :cond_10e
    move v3, v2

    goto/16 :goto_70

    .line 3361
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_ff
        :pswitch_102
        :pswitch_e7
        :pswitch_e7
        :pswitch_105
        :pswitch_108
        :pswitch_e9
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 3264
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [Lcom/android/internal/telephony/Connection;

    .line 3265
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3266
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3268
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 3271
    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_51

    .line 3272
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v2, :cond_23

    const-string v2, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3273
    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3305
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v2, v3, :cond_b0

    .line 3306
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 3312
    :cond_36
    :goto_36
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3313
    :goto_3c
    array-length v3, v1

    if-ge v0, v3, :cond_be

    aget-object v3, v1, v0

    if-eqz v3, :cond_be

    .line 3314
    aget-object v3, v1, v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v3

    .line 3315
    if-eqz v3, :cond_4e

    .line 3316
    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3313
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 3274
    :cond_51
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3276
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 3277
    sget-boolean v4, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v4, :cond_6a

    const-string v4, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3278
    :cond_6a
    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3279
    const/4 v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_78
    .catchall {:try_start_4 .. :try_end_78} :catchall_79

    goto :goto_2a

    .line 3264
    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3281
    :cond_7c
    :try_start_7c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_97

    .line 3283
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v3, :cond_8f

    const-string v3, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3284
    :cond_8f
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_2a

    .line 3288
    :cond_97
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v3, :cond_a0

    const-string v3, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3289
    :cond_a0
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    aput-object v4, v1, v3

    .line 3290
    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    aput-object v2, v1, v3

    goto/16 :goto_2a

    .line 3307
    :cond_b0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v2, v3, :cond_36

    .line 3308
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_bc
    .catchall {:try_start_7c .. :try_end_bc} :catchall_79

    goto/16 :goto_36

    .line 3330
    :cond_be
    monitor-exit p0

    return-object v2
.end method

.method private closeConnectedSco()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 689
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_34

    .line 691
    :try_start_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_35

    .line 696
    :goto_a
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 697
    :cond_1a
    iput-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    .line 699
    :cond_1c
    const/4 v0, 0x0

    .line 700
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_27

    .line 701
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 703
    :cond_27
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 704
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 706
    iput-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    .line 708
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_34
    return-void

    .line 692
    :catch_35
    move-exception v1

    .line 693
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private configAudioParameters()V
    .registers 5

    .prologue
    .line 886
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 888
    const-string v0, "<unknown>"

    .line 890
    :cond_e
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 892
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z

    if-eqz v1, :cond_43

    .line 893
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "bt_samplerate=8000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 895
    :cond_43
    return-void
.end method

.method private connectScoThread(Z)V
    .registers 7
    .parameter "wbs"

    .prologue
    const/4 v4, 0x1

    .line 655
    const-class v2, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v2

    .line 656
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-nez v1, :cond_3c

    .line 657
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 658
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1b

    .line 659
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 661
    :cond_1b
    if-eqz p1, :cond_3e

    .line 662
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStackParamSet:Z

    .line 663
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->setWbsParameters()Z

    .line 672
    :cond_23
    :goto_23
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v1, p0, v3, p1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 673
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    const-string v3, "HandsfreeScoSocketConnectThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->setName(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->start()V

    .line 677
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3c
    monitor-exit v2

    .line 678
    return-void

    .line 666
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3e
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStackParamSet:Z

    if-ne v1, v4, :cond_23

    .line 667
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->setNbParameters()Z

    .line 668
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStackParamSet:Z

    goto :goto_23

    .line 677
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3193
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_9a

    .line 3213
    :pswitch_11
    const/4 v0, 0x0

    .line 3234
    :cond_12
    :goto_12
    return-object v0

    :pswitch_13
    move v0, v1

    .line 3217
    :goto_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3218
    if-eqz v3, :cond_97

    .line 3219
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_93

    move v3, v2

    .line 3222
    :goto_21
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 3224
    :goto_27
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 3225
    const/4 v1, -0x1

    .line 3226
    if-eqz v4, :cond_32

    .line 3227
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 3230
    :cond_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CLCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3231
    if-eqz v4, :cond_12

    .line 3232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :pswitch_89
    move v0, v2

    .line 3199
    goto :goto_14

    .line 3201
    :pswitch_8b
    const/4 v0, 0x2

    .line 3202
    goto :goto_14

    .line 3204
    :pswitch_8d
    const/4 v0, 0x3

    .line 3205
    goto :goto_14

    .line 3207
    :pswitch_8f
    const/4 v0, 0x4

    .line 3208
    goto :goto_14

    .line 3210
    :pswitch_91
    const/4 v0, 0x5

    .line 3211
    goto :goto_14

    :cond_93
    move v3, v1

    .line 3219
    goto :goto_21

    :cond_95
    move v2, v1

    .line 3222
    goto :goto_27

    :cond_97
    move v3, v1

    goto :goto_21

    .line 3193
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_8b
        :pswitch_8d
        :pswitch_11
        :pswitch_11
        :pswitch_8f
        :pswitch_91
        :pswitch_89
    .end packed-switch
.end method

.method private declared-synchronized expectCallStart()V
    .registers 5

    .prologue
    .line 4796
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 4797
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4798
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4799
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 4800
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 4802
    :cond_21
    monitor-exit p0

    return-void

    .line 4796
    .end local v0           #msg:Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .registers 5

    .prologue
    .line 4838
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 4839
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4840
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4841
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 4842
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 4844
    :cond_21
    monitor-exit p0

    return-void

    .line 4838
    .end local v0           #msg:Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 2739
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 2740
    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result v0

    goto :goto_7

    .line 2739
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSpeedDialNumber(I)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4817
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "key_number"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "number"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "photo_id"

    aput-object v1, v2, v0

    .line 4821
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4822
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4824
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 4825
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4826
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4828
    :cond_51
    if-eqz v0, :cond_56

    .line 4829
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4831
    :cond_56
    return-object v4
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v13, 0x6

    const/4 v6, 0x0

    .line 3098
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_5
    new-array v9, v0, [Lcom/android/internal/telephony/Connection;

    .line 3099
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 3100
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3103
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3104
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3106
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3107
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 3109
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3110
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 3112
    :cond_45
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3113
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 3117
    :cond_56
    const/4 v0, 0x6

    new-array v3, v0, [Z

    move v0, v6

    .line 3118
    :goto_5a
    if-ge v0, v13, :cond_6a

    .line 3119
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    aget-boolean v4, v4, v0

    aput-boolean v4, v3, v0

    .line 3120
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v0

    .line 3118
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 3122
    :cond_6a
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6e
    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3124
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    move v1, v6

    .line 3125
    :goto_7f
    if-ge v1, v13, :cond_147

    .line 3126
    aget-boolean v5, v3, v1

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    aget-wide v11, v5, v1

    cmp-long v5, v7, v11

    if-nez v5, :cond_9e

    .line 3127
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v7, 0x1

    aput-boolean v7, v5, v1

    .line 3129
    aput-object v0, v9, v1

    move v1, v2

    .line 3133
    :goto_95
    if-nez v1, :cond_6e

    .line 3134
    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catchall {:try_start_5 .. :try_end_9a} :catchall_9b

    goto :goto_6e

    .line 3098
    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3125
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 3155
    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v8

    .line 3156
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    aput-wide v4, v0, v8

    .line 3157
    aput-object v1, v9, v8

    .line 3158
    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3139
    :cond_af
    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    move v8, v6

    .line 3142
    :goto_b6
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_c0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_b6

    .line 3144
    :cond_c0
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 3145
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move v7, v6

    move-object v1, v0

    .line 3146
    :goto_d4
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v7, v0, :cond_a1

    .line 3147
    invoke-virtual {v10, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 3148
    cmp-long v0, v2, v4

    if-gez v0, :cond_144

    .line 3150
    invoke-virtual {v10, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-wide v1, v2

    .line 3146
    :goto_ef
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move-wide v4, v1

    move-object v1, v0

    goto :goto_d4

    .line 3162
    :cond_f5
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move v0, v6

    .line 3163
    :goto_fc
    array-length v2, v9

    if-ge v0, v2, :cond_113

    .line 3164
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_110

    .line 3165
    aget-object v2, v9, v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 3166
    if-eqz v2, :cond_110

    .line 3167
    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3163
    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 3174
    :cond_113
    const/4 v0, 0x0

    array-length v2, v9

    if-ge v6, v2, :cond_142

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    aget-boolean v0, v2, v0

    if-nez v0, :cond_142

    move v0, v6

    .line 3178
    :goto_11e
    array-length v2, v9

    if-lez v2, :cond_140

    .line 3179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoIP\'s CLCC with GSM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3180
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->VoIPConnectionToClccEntry(I)Ljava/lang/String;

    move-result-object v0

    .line 3181
    if-eqz v0, :cond_140

    .line 3182
    invoke-virtual {v1, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_140
    .catchall {:try_start_a1 .. :try_end_140} :catchall_9b

    .line 3187
    :cond_140
    monitor-exit p0

    return-object v1

    :cond_142
    move v0, v6

    goto :goto_11e

    :cond_144
    move-object v0, v1

    move-wide v1, v4

    goto :goto_ef

    :cond_147
    move v1, v6

    goto/16 :goto_95
.end method

.method private hasActiveImsCall()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 5298
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5299
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 5300
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getImsBTHelper()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    .line 5303
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    if-eqz v0, :cond_36

    .line 5304
    const-string v0, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "hasActiveImsCall"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_34} :catch_38

    move-result v0

    .line 5312
    :goto_35
    return v0

    :cond_36
    move v0, v1

    .line 5306
    goto :goto_35

    .line 5308
    :catch_38
    move-exception v0

    move v0, v1

    .line 5309
    goto :goto_35

    :cond_3b
    move v0, v1

    .line 5312
    goto :goto_35
.end method

.method private declared-synchronized imsGetClccResult()Landroid/bluetooth/AtCommandResult;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3241
    monitor-enter p0

    :try_start_2
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3244
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    if-nez v0, :cond_16

    .line 3245
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getImsBTHelper()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_53

    .line 3248
    :cond_16
    :try_start_16
    const-string v0, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getVolteClccResult"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_47

    .line 3253
    :goto_2c
    :try_start_2c
    invoke-virtual {v2, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsGetClccResult : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_53

    .line 3255
    monitor-exit p0

    return-object v2

    .line 3249
    :catch_47
    move-exception v0

    .line 3250
    :try_start_48
    const-string v3, "Bluetooth HS/HF"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_53

    move-object v0, v1

    goto :goto_2c

    .line 3241
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private inDebug()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4939
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "debug.bt.hfp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method static init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 294
    const-class v1, Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 295
    :try_start_3
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_12

    .line 296
    new-instance v0, Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    .line 300
    :goto_e
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    monitor-exit v1

    return-object v0

    .line 298
    :cond_12
    const-string v0, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 301
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private initializeHandsfreeAtParser()V
    .registers 5

    .prologue
    .line 3625
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "Registering Handsfree AT commands"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3626
    :cond_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3629
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 3632
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 3666
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 3740
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3794
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3823
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3852
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3916
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3950
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3958
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3971
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3979
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3988
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4039
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4078
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4369
    const-string v1, "+COPS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4421
    const-string v1, "+CPIN"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4430
    const-string v1, "+BTRH"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4446
    const-string v1, "+CIMI"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4460
    const-string v1, "+CLIP"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4483
    const-string v1, "+CGSN"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4493
    const-string v1, "+CGMM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4507
    const-string v1, "+CGMI"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4521
    const-string v1, "+NREC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4536
    const-string v1, "+BVRA"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4572
    const-string v1, "+CNUM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4585
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4595
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4611
    const-string v1, "+CPAS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4632
    const-string v1, "+BCC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4657
    const-string v1, "+BCS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4693
    const-string v1, "+BAC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$33;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$33;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4736
    const-string v1, "+BIA"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$34;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$34;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4759
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 4761
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 4764
    :cond_175
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .registers 5

    .prologue
    .line 3557
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "Registering Headset AT commands"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3558
    :cond_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3560
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 3564
    const-string v2, "+CKPD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3619
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .registers 3

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isAudio1Carkit()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5273
    .line 5275
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v1, :cond_3c

    .line 5276
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:0B:24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:24:0B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "08:76:95"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 5280
    :cond_3b
    const/4 v0, 0x1

    .line 5285
    :cond_3c
    return v0
.end method

.method private isCellularCallInProgress()Z
    .registers 2

    .prologue
    .line 4966
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 4967
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isInVoIPcallAudio()Z
    .registers 7

    .prologue
    .line 812
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 813
    .local v3, voipInterfaceService:Landroid/os/IVoIPInterface;
    const/4 v0, 0x0

    .line 816
    .local v0, VoIPActiveFgCallState:I
    :try_start_b
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->getActiveFgCallState()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_26

    move-result v0

    .line 821
    :goto_f
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-virtual {v4, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 822
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    const-string v4, "Bluetooth HS/HF"

    const-string v5, "VoIPcall check"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_24

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_3e

    :cond_24
    const/4 v4, 0x1

    :goto_25
    return v4

    .line 817
    .end local v2           #state:Lcom/android/internal/telephony/Call$State;
    :catch_26
    move-exception v1

    .line 818
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getState exeption :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 823
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #state:Lcom/android/internal/telephony/Call$State;
    :cond_3e
    const/4 v4, 0x0

    goto :goto_25
.end method

.method private isInVoLTEcallAudio()Z
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 829
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    if-nez v3, :cond_7

    .line 838
    :goto_6
    return v4

    .line 833
    :cond_7
    :try_start_7
    const-string v3, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getImsPhoneCurrentCallState"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 834
    .local v2, tempstate:I
    const-string v3, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getImsPhoneCurrentCallState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Integer;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call$State;

    .line 835
    .local v1, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_4f

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4d} :catch_54

    if-ne v1, v3, :cond_52

    :cond_4f
    move v3, v5

    :goto_50
    move v4, v3

    goto :goto_6

    :cond_52
    move v3, v4

    goto :goto_50

    .line 836
    .end local v1           #state:Lcom/android/internal/telephony/Call$State;
    .end local v2           #tempstate:I
    :catch_54
    move-exception v0

    .line 837
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Bluetooth HS/HF"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private isIncallAudio()Z
    .registers 3

    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 808
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isVirtualCallInProgress()Z
    .registers 2

    .prologue
    .line 4972
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    return v0
.end method

.method private isVoiceRecognitionInProgress()Z
    .registers 2

    .prologue
    .line 4895
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 5172
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    :cond_9
    return-void
.end method

.method private memoryDial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter

    .prologue
    .line 3070
    if-nez p1, :cond_12

    .line 3073
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "Bluetooth memory dial requested (ATD>nnn...), but no number stored for the memory location given by the HF. Ignoring"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3075
    :cond_b
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3089
    :goto_11
    return-object v0

    .line 3079
    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 3080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3081
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3082
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3088
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 3089
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_11
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2989
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_headset_call_condition"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2992
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2995
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth redial: BLUETOOTH_HEADSET_CALL_CONDITION("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2997
    :cond_39
    if-ne v1, v5, :cond_5b

    if-eqz v0, :cond_5b

    .line 3000
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3002
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_4c

    const-string v0, "Bluetooth redial requested (+BLDN), Even when phone is unlocked. Lock Screen On.. Ignoring"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3003
    :cond_4c
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3063
    :goto_51
    return-object v0

    .line 3007
    :cond_52
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_5b

    const-string v0, "Bluetooth redial requested (+BLDN), Even when phone is unlocked. Lock Screen Off"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3012
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v0

    .line 3013
    if-nez v0, :cond_89

    .line 3016
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_6c

    const-string v0, "Bluetooth redial requested (+BLDN), but no previous outgoing calls found. Ignoring"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3019
    :cond_6c
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 3020
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3021
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3024
    :cond_83
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_51

    .line 3028
    :cond_89
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 3029
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3031
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3035
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_headset_call_type"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3038
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v2, :cond_cb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth redial: BLUETOOTH_HEADSET_CALL_TYPE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3040
    :cond_cb
    if-ne v0, v6, :cond_e1

    .line 3042
    const-string v0, "videocall"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3056
    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3062
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 3063
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_51

    .line 3046
    :cond_e1
    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothAtPhonebook;->isLastDialledNumberVideoCall()Z

    move-result v0

    if-ne v0, v5, :cond_d2

    .line 3049
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_f4

    const-string v0, "Bluetooth redial: BLUETOOTH_HEADSET_CALL_TYPE_LAST-videocall set"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3050
    :cond_f4
    const-string v0, "videocall"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_d2
.end method

.method private registerAllVendorSpecificCommands()V
    .registers 4

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3548
    const-string v1, "+XEVENT"

    const/16 v2, 0x55

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V

    .line 3551
    return-void
.end method

.method private registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V
    .registers 6
    .parameter "commandName"
    .parameter "companyId"
    .parameter "parser"

    .prologue
    .line 3537
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V

    invoke-virtual {p3, p1, v0}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3539
    return-void
.end method

.method private resetConnectScoThread()V
    .registers 3

    .prologue
    .line 682
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1

    .line 683
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 684
    monitor-exit v1

    .line 685
    return-void

    .line 684
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private sendURC(Ljava/lang/String;)V
    .registers 3
    .parameter "urc"

    .prologue
    .line 2979
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2980
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2982
    :cond_b
    return-void
.end method

.method private declared-synchronized setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .parameter "state"
    .parameter "device"

    .prologue
    .line 2728
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2729
    :cond_21
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_36

    .line 2730
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    .line 2732
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3c

    .line 2736
    :goto_34
    monitor-exit p0

    return-void

    .line 2735
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_34

    .line 2728
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDebug()V
    .registers 3

    .prologue
    .line 4948
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_15

    .line 4949
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 4950
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 4952
    :cond_15
    return-void
.end method

.method private stopDebug()V
    .registers 2

    .prologue
    .line 4955
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_c

    .line 4956
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 4957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 4959
    :cond_c
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 278
    packed-switch p0, :pswitch_data_e

    .line 286
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 280
    :pswitch_5
    const-string v0, "unknown"

    goto :goto_4

    .line 282
    :pswitch_8
    const-string v0, "headset"

    goto :goto_4

    .line 284
    :pswitch_b
    const-string v0, "handsfree"

    goto :goto_4

    .line 278
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    .registers 4

    .prologue
    .line 5228
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 5229
    const-string v0, "CallState : PhoneType is not CDMA"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5230
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 5257
    :goto_14
    return-object v0

    .line 5233
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 5234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallState :: CallState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5236
    const-string v1, "sec_korea_bluetooth"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 5237
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_44

    .line 5238
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5239
    :cond_44
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_4b

    .line 5240
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5241
    :cond_4b
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_82

    .line 5242
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5245
    :cond_52
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_74

    .line 5246
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_65

    .line 5247
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5248
    :cond_65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5249
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5251
    :cond_74
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_7b

    .line 5252
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5253
    :cond_7b
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_82

    .line 5254
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5257
    :cond_82
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14
.end method

.method declared-synchronized audioOff()V
    .registers 4

    .prologue
    .line 2922
    monitor-enter p0

    :try_start_1
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioOff(): mPendingScoForA2dp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingScoForWbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectedSco: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mA2dpState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mA2dpSuspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVoiceRecognitionStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v0, :cond_78

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-nez v0, :cond_78

    .line 2930
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2931
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_6e

    const-string v0, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2932
    :cond_6e
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2934
    :cond_75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2937
    :cond_78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    .line 2938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    .line 2940
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    if-eqz v0, :cond_8a

    .line 2941
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->shutdown()V

    .line 2942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 2945
    :cond_8a
    const-string v0, "sec_korea_a2dp_suspend_bluetooth"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2946
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspendKor:Z

    if-eqz v0, :cond_ad

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isAudio1Carkit()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2947
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "KorCarkit - resumeSink...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspendKor:Z

    .line 2955
    :cond_ad
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1
    :try_end_b0
    .catchall {:try_start_1 .. :try_end_b0} :catchall_c5

    .line 2956
    :try_start_b0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-eqz v0, :cond_bc

    .line 2957
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->shutdown()V

    .line 2958
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    .line 2960
    :cond_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_b0 .. :try_end_bd} :catchall_c2

    .line 2962
    :try_start_bd
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c5

    .line 2963
    monitor-exit p0

    return-void

    .line 2960
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    .line 2922
    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized audioOn()Z
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2803
    monitor-enter p0

    :try_start_4
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "audioOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2805
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "audioOn(): headset is not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_2a

    .line 2898
    :goto_18
    monitor-exit p0

    return v0

    .line 2808
    :cond_1a
    :try_start_1a
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v2, v6, :cond_2d

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v2, :cond_2d

    .line 2809
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "audioOn(): service connection not yet established!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2a

    goto :goto_18

    .line 2803
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2813
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_3a

    .line 2814
    const-string v0, "Bluetooth HS/HF"

    const-string v2, "audioOn(): audio is already connected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2815
    goto :goto_18

    .line 2818
    :cond_3a
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v2, :cond_46

    .line 2819
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "audioOn(): user requested no audio, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2823
    :cond_46
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    if-eqz v2, :cond_53

    .line 2824
    const-string v0, "Bluetooth HS/HF"

    const-string v2, "audioOn(): SCO already pending for A2DP"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2825
    goto :goto_18

    .line 2828
    :cond_53
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    if-eqz v2, :cond_60

    .line 2829
    const-string v0, "Bluetooth HS/HF"

    const-string v2, "audioOn(): SCO already pending for WBS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2830
    goto :goto_18

    .line 2833
    :cond_60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2834
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    .line 2835
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v2

    if-eqz v2, :cond_9a

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9a

    .line 2836
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_7b

    const-string v2, "suspending A2DP stream for SCO"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2837
    :cond_7b
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2838
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v2, :cond_156

    .line 2839
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    .line 2840
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2841
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2847
    :cond_9a
    :goto_9a
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    if-nez v2, :cond_dd

    .line 2848
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    .line 2849
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_15f

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_15f

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_15f

    .line 2852
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    if-nez v2, :cond_dd

    .line 2853
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    .line 2854
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 2855
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_c6

    const-string v2, "+BCS:2"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2856
    :cond_c6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 2857
    const-string v2, "+BCS:2"

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2858
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2859
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2868
    :cond_dd
    :goto_dd
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoSwitchingSupported:Z

    if-ne v2, v1, :cond_143

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    if-nez v2, :cond_143

    .line 2869
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1a9

    .line 2870
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "kpcs"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2871
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_119

    const-string v3, "Bluetooth HS/HF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kpcs is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") , mScoPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree;->mScoPath:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_119
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_19f

    .line 2873
    const-string v3, "kpcs=true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16c

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mScoPath:I

    if-eq v3, v1, :cond_16c

    .line 2874
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_134

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "setScoPathChange : i2s-->"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :cond_134
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScoPathChange(I)V

    .line 2876
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScoPathChange(I)V

    .line 2877
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoPath:I

    .line 2894
    :cond_143
    :goto_143
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    if-nez v2, :cond_153

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    if-nez v2, :cond_153

    .line 2895
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    if-ne v6, v2, :cond_150

    move v0, v1

    :cond_150
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V

    :cond_153
    move v0, v1

    .line 2898
    goto/16 :goto_18

    .line 2843
    :cond_156
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a

    .line 2862
    :cond_15f
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIsWbsAvailable:Z

    if-eqz v2, :cond_dd

    .line 2863
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "bt_samplerate=8000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_dd

    .line 2878
    :cond_16c
    const-string v3, "kpcs=false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoPath:I

    if-eq v2, v6, :cond_193

    .line 2879
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_183

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "setScoPathChange : pcm-->"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_183
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScoPathChange(I)V

    .line 2881
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScoPathChange(I)V

    .line 2882
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoPath:I

    goto :goto_143

    .line 2884
    :cond_193
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_143

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "setScoPathChange : No change !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 2887
    :cond_19f
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_143

    const-string v2, "mAdapter is null"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto :goto_143

    .line 2890
    :cond_1a9
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_143

    const-string v2, "kpcs not set.."

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1b2
    .catchall {:try_start_2d .. :try_end_1b2} :catchall_2a

    goto :goto_143
.end method

.method public cdmaSetSecondCallState(Z)V
    .registers 4
    .parameter

    .prologue
    .line 5163
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5164
    :cond_1a
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 5166
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_23

    .line 5167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 5169
    :cond_23
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5157
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "cdmaSetSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5158
    :cond_a
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_14

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 5159
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 5160
    return-void

    .line 5158
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .registers 7
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    const/4 v3, 0x1

    .line 743
    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 744
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 745
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v2, v3, :cond_2e

    .line 746
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 752
    :goto_d
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->registerAllVendorSpecificCommands()V

    .line 754
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 755
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 757
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 758
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 761
    :cond_1f
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 762
    const/4 v1, 0x1

    .local v1, i:I
    :goto_23
    const/4 v2, 0x7

    if-gt v1, v2, :cond_35

    .line 764
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 748
    .end local v1           #i:I
    :cond_2e
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_32

    goto :goto_d

    .line 743
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    .line 767
    .restart local v1       #i:I
    :cond_35
    :try_start_35
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isInVoIPcallAudio()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isInVoLTEcallAudio()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 768
    :cond_47
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_32

    .line 787
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetName:Ljava/lang/String;

    .line 788
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetAddress:Ljava/lang/String;

    .line 789
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetName:Ljava/lang/String;

    if-eqz v2, :cond_d6

    const-string v2, "BMW 57523"

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 790
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z
    :try_end_77
    .catchall {:try_start_4a .. :try_end_77} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_77} :catch_da

    .line 799
    :goto_77
    :try_start_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHeadsetName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mHeadsetAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsDelayedInactiveCallIndicatorNeeded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_77 .. :try_end_a7} :catchall_32

    .line 801
    monitor-exit p0

    return-void

    .line 769
    :cond_a9
    :try_start_a9
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 771
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_4a

    .line 774
    :cond_bb
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_c7

    .line 776
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_4a

    .line 780
    :cond_c7
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 782
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    :try_end_d4
    .catchall {:try_start_a9 .. :try_end_d4} :catchall_32

    goto/16 :goto_4a

    .line 792
    :cond_d6
    const/4 v2, 0x0

    :try_start_d7
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z
    :try_end_d9
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_d9} :catch_da

    goto :goto_77

    .line 794
    :catch_da
    move-exception v0

    .line 795
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_dc
    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetName:Ljava/lang/String;

    .line 796
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetAddress:Ljava/lang/String;

    .line 797
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z
    :try_end_e4
    .catchall {:try_start_dc .. :try_end_e4} :catchall_32

    goto :goto_77
.end method

.method declared-synchronized disconnectHeadset()V
    .registers 2

    .prologue
    .line 846
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 850
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 853
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 854
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 855
    monitor-exit p0

    return-void

    .line 846
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fallbackNb()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x2710

    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2705
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    if-ne v1, v3, :cond_2e

    .line 2708
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 2709
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 2710
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 2711
    const-string v1, "+BCS:2"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2712
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-virtual {v1, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2713
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2725
    .end local v0           #msg:Landroid/os/Message;
    :cond_2d
    :goto_2d
    return-void

    .line 2714
    :cond_2e
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    if-eq v1, v3, :cond_2d

    .line 2718
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 2719
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 2720
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 2721
    const-string v1, "+BCS:1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2722
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-virtual {v1, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2723
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2d
.end method

.method getHeadset()Landroid/bluetooth/HeadsetBase;
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getcurrCdmaThreeWayCallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    .registers 4

    .prologue
    .line 5183
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 5184
    const-string v0, "getcurrCdmaThreeWayCallState : PhoneType is not CDMA"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5185
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 5202
    :goto_14
    return-object v0

    .line 5188
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 5189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getcurrCdmaThreeWayCallState :: CallState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5191
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_57

    .line 5192
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_48

    .line 5193
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5194
    :cond_48
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 5195
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5197
    :cond_57
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_5e

    .line 5198
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5199
    :cond_5e
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_65

    .line 5200
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5202
    :cond_65
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14
.end method

.method getprevCdmaThreeWayCallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    .registers 4

    .prologue
    .line 5206
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 5207
    const-string v0, "getprevCdmaThreeWayCallState : PhoneType is not CDMA"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5208
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 5224
    :goto_14
    return-object v0

    .line 5211
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 5212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getprevCdmaThreeWayCallState :: CallState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5213
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_57

    .line 5214
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_48

    .line 5215
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5216
    :cond_48
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 5217
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5219
    :cond_57
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_5e

    .line 5220
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5221
    :cond_5e
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_65

    .line 5222
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14

    .line 5224
    :cond_65
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    goto :goto_14
.end method

.method public handleVoipCallStateChange()V
    .registers 2

    .prologue
    .line 5177
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "handleVoipCallStateChange()"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5178
    :cond_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handleVoipCallStateChange()V

    .line 5179
    return-void
.end method

.method declared-synchronized initiateScoUsingVirtualVoiceCall()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4983
    monitor-enter p0

    :try_start_3
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "initiateScoUsingVirtualVoiceCall: Received"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4985
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4986
    :cond_18
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "initiateScoUsingVirtualVoiceCall: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_6d

    .line 5015
    :goto_1f
    monitor-exit p0

    return v0

    .line 4991
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 4992
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4994
    const-string v3, "+CIEV: 3,2"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4995
    const-string v3, "+CIEV: 3,3"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4996
    const-string v3, "+CIEV: 2,1"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4997
    const-string v3, "+CIEV: 3,0"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4998
    invoke-virtual {v2}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4999
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_5b

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "initiateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    :cond_5b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 5005
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v2

    if-nez v2, :cond_70

    .line 5006
    const-string v1, "initiateScoUsingVirtualVoiceCall: audioON failed"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5007
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z
    :try_end_6c
    .catchall {:try_start_21 .. :try_end_6c} :catchall_6d

    goto :goto_1f

    .line 4983
    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5011
    :cond_70
    const/4 v0, 0x1

    :try_start_71
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 5014
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_7c

    const-string v0, "initiateScoUsingVirtualVoiceCall: Done"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_6d

    :cond_7c
    move v0, v1

    .line 5015
    goto :goto_1f
.end method

.method isAudioOn()Z
    .registers 2

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHeadsetConnected()Z
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-nez v0, :cond_a

    .line 737
    :cond_8
    const/4 v0, 0x0

    .line 739
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_9
.end method

.method protected isUserWantsAudio()Z
    .registers 2

    .prologue
    .line 5261
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return v0
.end method

.method declared-synchronized onBluetoothDisabled()V
    .registers 2

    .prologue
    .line 727
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 729
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-eqz v0, :cond_10

    .line 730
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->shutdown()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 733
    :cond_10
    monitor-exit p0

    return-void

    .line 727
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .registers 3

    .prologue
    .line 718
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-nez v0, :cond_18

    .line 719
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 720
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    const-string v1, "incomingScoAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->setName(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->start()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 723
    :cond_18
    monitor-exit p0

    return-void

    .line 718
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .registers 5
    .parameter

    .prologue
    .line 4784
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v0, :cond_21

    .line 4785
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4789
    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_20
.end method

.method declared-synchronized resetAtState()V
    .registers 6

    .prologue
    const/4 v4, 0x6

    .line 858
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 859
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 860
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 861
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 862
    const/4 v2, 0x6

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 863
    const/4 v2, 0x6

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 864
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v4, :cond_23

    .line 865
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 864
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 867
    :cond_23
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 868
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothAtPhonebook;->resetAtState()V

    .line 870
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 871
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_57

    if-eqz v2, :cond_4a

    .line 873
    :try_start_37
    const-string v2, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "resetAtState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_4c

    .line 879
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-void

    .line 874
    :catch_4c
    move-exception v0

    .line 875
    .local v0, e:Ljava/lang/Exception;
    :try_start_4d
    const-string v2, "Bluetooth HS/HF"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_57

    goto :goto_4a

    .line 858
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :catchall_57
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public sendScoGainUpdate(I)V
    .registers 4
    .parameter

    .prologue
    .line 4777
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_22

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_22

    .line 4778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4779
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 4781
    :cond_22
    return-void
.end method

.method setVirtualCallInProgress(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 4976
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4977
    return-void
.end method

.method declared-synchronized startVoiceRecognition()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4848
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_11

    .line 4849
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "startVoiceRecognition: remote device doest not support BVRA"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_29

    .line 4877
    :cond_f
    :goto_f
    monitor-exit p0

    return v0

    .line 4853
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_2c

    .line 4856
    :cond_21
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "startVoiceRecognition: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_29

    goto :goto_f

    .line 4848
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4860
    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4862
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_52

    .line 4864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 4865
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4870
    :goto_3b
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 4871
    if-nez v0, :cond_44

    .line 4872
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4874
    :cond_44
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4875
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f

    .line 4868
    :cond_52
    const-string v0, "+BVRA: 1"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_29

    goto :goto_3b
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4882
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_17

    move-result v1

    if-nez v1, :cond_a

    .line 4890
    :goto_8
    monitor-exit p0

    return v0

    .line 4886
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4888
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_17

    .line 4890
    const/4 v0, 0x1

    goto :goto_8

    .line 4882
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized terminateScoUsingVirtualVoiceCall()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 5019
    monitor-enter p0

    :try_start_2
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "terminateScoUsingVirtualVoiceCall: Received"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5021
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_4a

    move-result v1

    if-nez v1, :cond_13

    .line 5041
    :goto_11
    monitor-exit p0

    return v0

    .line 5026
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 5029
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 5030
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 5032
    const-string v1, "+CIEV: 2,0"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 5033
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 5034
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_39

    const-string v0, "terminateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 5036
    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 5037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 5040
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_48

    const-string v0, "terminateScoUsingVirtualVoiceCall: Done"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_4a

    .line 5041
    :cond_48
    const/4 v0, 0x1

    goto :goto_11

    .line 5019
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .registers 3

    .prologue
    .line 2792
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "Bluetooth HS/HF"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 2795
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .registers 2

    .prologue
    .line 2914
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 2915
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 2916
    monitor-exit p0

    return-void

    .line 2914
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .registers 2

    .prologue
    .line 2906
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 2907
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 2908
    monitor-exit p0

    return-void

    .line 2906
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
