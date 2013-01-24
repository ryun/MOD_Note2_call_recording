.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# instance fields
.field private isImsCallRinging:Z

.field private mBattchg:I

.field private mCall:I

.field private mCallStartTime:J

.field private mCallheld:I

.field private mCallsetup:I

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStopRing:Z

.field private mVoIPCall:I

.field private mVoIPCallheld:I

.field private mVoIPCallsetup:I

.field private mVoIPIgnoreRing:Z

.field private mVoIPService:I

.field private mVoIPSignal:I

.field private mVoIPStopRing:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1003
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 941
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 958
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPIgnoreRing:Z

    .line 959
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPStopRing:Z

    .line 964
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 974
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    .line 1213
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1007
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    .line 1008
    invoke-direct {p0, v3, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    .line 1009
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 1011
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1012
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 1014
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    .line 1020
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1022
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1024
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1027
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1039
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 900
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 900
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResultWithVoIP()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V

    return-void
.end method

.method private getCdmaCallHeldStatus(Lcom/android/phone/BluetoothHandsfree$PhoneCallState;Lcom/android/phone/BluetoothHandsfree$PhoneCallState;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2322
    sget-object v2, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne p1, v2, :cond_3d

    .line 2323
    sget-object v2, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne p2, v2, :cond_3b

    .line 2336
    :cond_a
    :goto_a
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaCallHeldStatus: currState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prevState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callheld = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2338
    :cond_3a
    return v0

    :cond_3b
    move v0, v1

    .line 2326
    goto :goto_a

    .line 2329
    :cond_3d
    sget-object v2, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne p1, v2, :cond_a

    move v0, v1

    .line 2330
    goto :goto_a
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 2512
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    .registers 26
    .parameter "sendUpdate"
    .parameter "connection"

    .prologue
    .line 1475
    monitor-enter p0

    const/4 v5, 0x0

    .line 1476
    .local v5, call:I
    const/4 v8, 0x0

    .line 1477
    .local v8, callsetup:I
    const/4 v6, 0x0

    .line 1478
    .local v6, callheld:I
    :try_start_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1479
    .local v14, prevCallsetup:I
    new-instance v16, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1480
    .local v16, result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1481
    .local v10, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1482
    .local v4, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .line 1483
    .local v17, ringingCall:Lcom/android/internal/telephony/Call;
    const/4 v11, 0x0

    .line 1486
    .local v11, isInactiveCallSignalDelayed:Z
    const-string v19, "Bluetooth HS/HF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handlePreciseCallStateChange() mPhone="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mFCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mBCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mRCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCallsetup="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCall="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCallheld="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    .line 1494
    .local v12, newState:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v12, v0, :cond_103

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0, v12}, Lcom/android/phone/BluetoothHandsfree;->access$4402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 1496
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_770

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1512
    :cond_103
    :goto_103
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_776

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1575
    :cond_11d
    :goto_11d
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_784

    .line 1596
    :cond_12c
    :goto_12c
    :pswitch_12c
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    sparse-switch v19, :sswitch_data_790

    .line 1622
    :cond_13b
    :goto_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_162

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    move/from16 v19, v0

    if-eqz v19, :cond_162

    .line 1623
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_670

    .line 1624
    const/4 v6, 0x2

    .line 1631
    :cond_162
    :goto_162
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "call = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , isInactiveCallSignalDelayed : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v5, :cond_1eb

    if-nez v11, :cond_1eb

    .line 1633
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_1b7

    .line 1636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v19

    if-nez v19, :cond_1b7

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1644
    :cond_1b7
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1645
    if-eqz p1, :cond_1eb

    .line 1646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1eb

    .line 1647
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+CIEV: 2,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1652
    :cond_1eb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v8, :cond_25b

    .line 1653
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1654
    if-eqz p1, :cond_25b

    .line 1661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    if-eqz v19, :cond_22d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_25b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_25b

    .line 1663
    :cond_22d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_25b

    .line 1664
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+CIEV: 3,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1670
    :cond_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_36c

    .line 1671
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1672
    .local v3, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_36c

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->getcurrCdmaThreeWayCallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v9

    .line 1680
    .local v9, currCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->getprevCdmaThreeWayCallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v15

    .line 1682
    .local v15, prevCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CDMA call state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " prev state:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/BluetoothHandsfree$PhoneCallState;Lcom/android/phone/BluetoothHandsfree$PhoneCallState;)I

    move-result v6

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v9, :cond_362

    .line 1691
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_329

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v19

    if-eqz v19, :cond_329

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1694
    if-eqz p1, :cond_320

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_320

    .line 1696
    const-string v19, "+CIEV: 3,2"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1698
    const-string v19, "+CIEV: 4,1"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1699
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1700
    const-string v19, "+CIEV: 3,3"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1701
    const-string v19, "+CIEV: 3,0"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1708
    :cond_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1716
    :cond_329
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_362

    sget-object v19, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_362

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1719
    if-eqz p1, :cond_362

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_362

    .line 1721
    const-string v19, "+CIEV: 2,1"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1722
    const-string v19, "+CIEV: 3,0"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1727
    :cond_362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 1733
    .end local v3           #app:Lcom/android/phone/PhoneApp;
    .end local v9           #currCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    .end local v15           #prevCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_67a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_67a

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    .line 1742
    .local v7, callsSwitched:Z
    :goto_3a4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callsSwitched:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mCdmaCallsSwapped:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1743
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callheld:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mCallheld:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_416

    if-nez v7, :cond_416

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v19

    sget-object v20, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_480

    .line 1746
    :cond_416
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1747
    if-eqz p1, :cond_480

    .line 1749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6ab

    .line 1750
    if-nez v7, :cond_46c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6a4

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "CIEV: 3,0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6a4

    .line 1751
    :cond_46c
    const-string v19, "+CIEV: 4,1"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1763
    :cond_480
    :goto_480
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_516

    if-eq v8, v14, :cond_516

    .line 1765
    const/4 v13, 0x0

    .line 1766
    .local v13, number:Ljava/lang/String;
    const/16 v18, 0x80

    .line 1768
    .local v18, type:I
    if-nez p2, :cond_49a

    .line 1769
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    .line 1770
    if-nez p2, :cond_49a

    .line 1771
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "Could not get a handle on Connection object for new incoming call"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_49a
    if-eqz p2, :cond_4a6

    .line 1776
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 1777
    if-eqz v13, :cond_4a6

    .line 1778
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v18

    .line 1781
    :cond_4a6
    if-nez v13, :cond_4aa

    .line 1782
    const-string v13, ""

    .line 1785
    :cond_4aa
    if-nez v5, :cond_4ae

    if-eqz v6, :cond_4b0

    :cond_4ae
    if-nez p1, :cond_4c2

    :cond_4b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    move/from16 v19, v0

    if-nez v19, :cond_4c0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    move/from16 v19, v0

    if-eqz v19, :cond_6cd

    :cond_4c0
    if-eqz p1, :cond_6cd

    .line 1789
    :cond_4c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_516

    .line 1790
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+CCWA: \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1791
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+CIEV: 3,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1813
    .end local v13           #number:Ljava/lang/String;
    .end local v18           #type:I
    :cond_516
    :goto_516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_523
    .catchall {:try_start_4 .. :try_end_523} :catchall_578

    .line 1814
    monitor-exit p0

    return-void

    .line 1498
    .end local v7           #callsSwitched:Z
    :pswitch_525
    :try_start_525
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mVoIPPhoneState:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_103

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_576
    .catchall {:try_start_525 .. :try_end_576} :catchall_578

    goto/16 :goto_103

    .line 1475
    .end local v4           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v10           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v11           #isInactiveCallSignalDelayed:Z
    .end local v12           #newState:Lcom/android/internal/telephony/Phone$State;
    .end local v14           #prevCallsetup:I
    .end local v16           #result:Landroid/bluetooth/AtCommandResult;
    .end local v17           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_578
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1514
    .restart local v4       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v10       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v11       #isInactiveCallSignalDelayed:Z
    .restart local v12       #newState:Lcom/android/internal/telephony/Phone$State;
    .restart local v14       #prevCallsetup:I
    .restart local v16       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v17       #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_57b
    const/4 v5, 0x1

    .line 1515
    :try_start_57c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_11d

    .line 1518
    :pswitch_589
    const/4 v8, 0x2

    .line 1520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11d

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_11d

    .line 1535
    :pswitch_5cd
    const/4 v8, 0x3

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_11d

    .line 1563
    :pswitch_5db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v11

    .line 1565
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11d

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11d

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_11d

    .line 1569
    :pswitch_60a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIsDelayedInactiveCallIndicatorNeeded:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v11

    .line 1570
    goto/16 :goto_11d

    .line 1578
    :pswitch_616
    const/4 v8, 0x1

    .line 1579
    goto/16 :goto_12c

    .line 1591
    :pswitch_619
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12c

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12c

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_12c

    .line 1598
    :sswitch_63e
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_647

    .line 1599
    const/4 v6, 0x1

    goto/16 :goto_13b

    .line 1601
    :cond_647
    const/4 v5, 0x1

    .line 1602
    const/4 v6, 0x2

    .line 1604
    goto/16 :goto_13b

    .line 1616
    :sswitch_64b
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_13b

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_13b

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_13b

    .line 1627
    :cond_670
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_162

    .line 1737
    :cond_67a
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_6a2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_6a2

    const/4 v7, 0x1

    .line 1740
    .restart local v7       #callsSwitched:Z
    :goto_693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v20

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v19 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$5002(Lcom/android/phone/BluetoothHandsfree;J)J

    goto/16 :goto_3a4

    .line 1737
    .end local v7           #callsSwitched:Z
    :cond_6a2
    const/4 v7, 0x0

    goto :goto_693

    .line 1754
    .restart local v7       #callsSwitched:Z
    :cond_6a4
    const-string v19, "CIEV:4,1 isn\'t sent"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    goto/16 :goto_480

    .line 1758
    :cond_6ab
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+CIEV: 4,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_480

    .line 1795
    .restart local v13       #number:Ljava/lang/String;
    .restart local v18       #type:I
    :cond_6cd
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 1796
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 1797
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1798
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 1799
    const-string v19, "sec_korea_a2dp_suspend_bluetooth"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_741

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v19

    if-eqz v19, :cond_741

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_741

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isAudio1Carkit()Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v19

    if-eqz v19, :cond_741

    .line 1801
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "KorCarkit - suspendSink...."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v20

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspendKor:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$5302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1806
    :cond_741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_762

    .line 1807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1810
    :cond_762
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_76d
    .catchall {:try_start_57c .. :try_end_76d} :catchall_578

    goto/16 :goto_516

    .line 1496
    nop

    :pswitch_data_770
    .packed-switch 0x1
        :pswitch_525
    .end packed-switch

    .line 1512
    :pswitch_data_776
    .packed-switch 0x1
        :pswitch_57b
        :pswitch_589
        :pswitch_5cd
        :pswitch_5db
        :pswitch_60a
    .end packed-switch

    .line 1575
    :pswitch_data_784
    .packed-switch 0x4
        :pswitch_619
        :pswitch_12c
        :pswitch_616
        :pswitch_616
    .end packed-switch

    .line 1596
    :sswitch_data_790
    .sparse-switch
        0x4 -> :sswitch_64b
        0x8 -> :sswitch_63e
    .end sparse-switch
.end method

.method private ring()Landroid/bluetooth/AtCommandResult;
    .registers 7

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 2343
    const-string v0, "sec_korea_bluetooth"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2344
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2345
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2346
    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_28
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_36

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z

    if-eqz v0, :cond_7c

    .line 2350
    :cond_36
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendRingUpdate()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2351
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2352
    const-string v1, "RING"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2353
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CLIP: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2357
    :cond_70
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2358
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2378
    :goto_7b
    return-object v0

    .line 2362
    :cond_7c
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "isAutoRejectCall is true. Don`t send RING cmd to other device."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_83
    const/4 v0, 0x0

    goto :goto_7b

    .line 2366
    :cond_85
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendRingUpdate()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2367
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2368
    const-string v1, "RING"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2369
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CLIP: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2373
    :cond_bf
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2374
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7b
.end method

.method private scoClosed()V
    .registers 8

    .prologue
    .line 2527
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2528
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_2d

    .line 2530
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2531
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2533
    .end local v0           #msg:Landroid/os/Message;
    :cond_2d
    monitor-exit v2

    .line 2534
    return-void

    .line 2533
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private sendClipUpdate()Z
    .registers 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mClip:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private sendRingUpdate()Z
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1070
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1071
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_42

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z

    if-eqz v2, :cond_42

    .line 1074
    :cond_2f
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v2, v4, :cond_3f

    .line 1075
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1103
    :cond_3f
    :goto_3f
    return v0

    :cond_40
    move v0, v1

    .line 1075
    goto :goto_3f

    .line 1079
    :cond_42
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_cd

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_cd

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_cd

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_cd

    .line 1081
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v2, v4, :cond_3f

    .line 1082
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-nez v2, :cond_3f

    move v0, v1

    goto :goto_3f

    .line 1087
    :cond_6e
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_a0

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_a0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1089
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v2, v4, :cond_3f

    .line 1090
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-nez v2, :cond_3f

    move v0, v1

    goto :goto_3f

    .line 1094
    :cond_a0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_cd

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_cd

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_cd

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_cd

    .line 1096
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v2, v4, :cond_3f

    .line 1097
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-nez v2, :cond_3f

    move v0, v1

    goto/16 :goto_3f

    :cond_cd
    move v0, v1

    .line 1103
    goto/16 :goto_3f
.end method

.method private sendUpdate()Z
    .registers 3

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-boolean v0, v0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private signalToRssi(I)I
    .registers 5
    .parameter "signal"

    .prologue
    const/16 v1, 0x1f

    const/4 v0, 0x0

    .line 1200
    packed-switch p1, :pswitch_data_18

    .line 1208
    const/4 v2, 0x5

    if-le p1, v2, :cond_a

    move v0, v1

    .line 1209
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    .line 1202
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_a

    .line 1203
    :pswitch_d
    const/16 v0, 0x8

    goto :goto_a

    .line 1204
    :pswitch_10
    const/16 v0, 0xd

    goto :goto_a

    .line 1205
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_a

    :pswitch_16
    move v0, v1

    .line 1206
    goto :goto_a

    .line 1200
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method private stopRing()V
    .registers 2

    .prologue
    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 1108
    return-void
.end method

.method private declared-synchronized toCindResultWithVoIP()Landroid/bluetooth/AtCommandResult;
    .registers 11

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 2430
    monitor-enter p0

    :try_start_3
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2432
    const/4 v3, 0x0

    .line 2435
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14d

    .line 2437
    if-eqz v0, :cond_127

    .line 2439
    :try_start_1a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_110

    move-result-object v0

    move-object v5, v0

    .line 2447
    :goto_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 2448
    const/4 v0, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    .line 2456
    :goto_2b
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_130

    move v4, v2

    .line 2462
    :goto_33
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-nez v2, :cond_138

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPService:I

    move v3, v2

    .line 2463
    :goto_3a
    if-nez v1, :cond_13d

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    move v2, v1

    .line 2464
    :goto_3f
    if-nez v0, :cond_140

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    move v1, v0

    .line 2465
    :goto_44
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    .line 2467
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    if-eqz v0, :cond_150

    .line 2468
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2470
    if-eqz v0, :cond_143

    .line 2471
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 2481
    :goto_68
    const-string v7, "Bluetooth HS/HF"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networkInfo is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_15a

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_7b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " mSignal:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", mVoIPSignal:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    if-eqz v5, :cond_166

    .line 2485
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-nez v0, :cond_162

    .line 2486
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WIFI"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    .line 2493
    :goto_b2
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 2495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+CIND: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2498
    invoke-virtual {v6, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_1f .. :try_end_10e} :catchall_14d

    .line 2499
    monitor-exit p0

    return-object v6

    .line 2440
    :catch_110
    move-exception v0

    .line 2441
    :try_start_111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toCindResultWithVoIP exeption :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    :cond_127
    move-object v5, v3

    goto/16 :goto_1f

    .line 2452
    :cond_12a
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 2453
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    goto/16 :goto_2b

    .line 2459
    :cond_130
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    add-int/2addr v2, v3

    move v4, v2

    goto/16 :goto_33

    .line 2462
    :cond_138
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    move v3, v2

    goto/16 :goto_3a

    :cond_13d
    move v2, v1

    .line 2463
    goto/16 :goto_3f

    :cond_140
    move v1, v0

    .line 2464
    goto/16 :goto_44

    .line 2473
    :cond_143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 2474
    const-string v0, "Phone is null"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_111 .. :try_end_14b} :catchall_14d

    goto/16 :goto_68

    .line 2430
    :catchall_14d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2477
    :cond_150
    const/4 v0, 0x0

    :try_start_151
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 2478
    const-string v0, "CallManager is null"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    goto/16 :goto_68

    .line 2481
    :cond_15a
    const-string v0, "null"

    goto/16 :goto_7b

    .line 2486
    :cond_15e
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    goto/16 :goto_b2

    .line 2488
    :cond_162
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    goto/16 :goto_b2

    .line 2491
    :cond_166
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I
    :try_end_168
    .catchall {:try_start_151 .. :try_end_168} :catchall_14d

    goto/16 :goto_b2
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2382
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 2504
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CSQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",99"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2506
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 2507
    monitor-exit p0

    return-object v0

    .line 2504
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 1325
    monitor-enter p0

    :try_start_2
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1326
    .local v0, batteryLevel:I
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4e

    move-result v1

    .line 1327
    .local v1, scale:I
    if-eq v0, v4, :cond_14

    if-ne v1, v4, :cond_16

    .line 1338
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 1331
    :cond_16
    int-to-float v2, v0

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    :try_start_1c
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1332
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_14

    .line 1333
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 1334
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v3, 0x7

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_14

    .line 1335
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1c .. :try_end_4d} :catchall_4e

    goto :goto_14

    .line 1325
    .end local v0           #batteryLevel:I
    .end local v1           #scale:I
    :catchall_4e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1042
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Bluetooth HS/HF"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_e
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1050
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1056
    return-void
.end method

.method private declared-synchronized updateCallHeld()V
    .registers 3

    .prologue
    .line 2386
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz v0, :cond_f

    .line 2387
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 2388
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 4,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 2390
    :cond_f
    monitor-exit p0

    return-void

    .line 2386
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .registers 15
    .parameter "sendUpdate"
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1407
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_d1

    move v6, v8

    .line 1408
    .local v6, service:I
    :goto_a
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_d4

    move v5, v8

    .line 1409
    .local v5, roam:I
    :goto_11
    const/4 v0, 0x0

    .line 1411
    .local v0, VoIPservice:I
    const/4 v3, 0x0

    .line 1413
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1415
    .local v1, cm:Landroid/net/ConnectivityManager;
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    const/4 v10, 0x2

    invoke-direct {v4, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_f0

    .line 1417
    .local v4, result:Landroid/bluetooth/AtCommandResult;
    if-eqz v1, :cond_36

    .line 1419
    :try_start_29
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_d7

    move-result-object v3

    .line 1424
    :goto_2d
    if-eqz v3, :cond_36

    .line 1425
    :try_start_2f
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_f3

    move v0, v8

    .line 1429
    :cond_36
    :goto_36
    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v9, p2}, Lcom/android/phone/BluetoothHandsfree;->access$4302(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 1430
    if-nez v6, :cond_f9

    .line 1431
    if-nez v0, :cond_f6

    .line 1433
    const/4 v7, 0x0

    .line 1441
    .local v7, stat:I
    :goto_40
    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v6, v8, :cond_67

    .line 1442
    iput v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    .line 1443
    if-eqz p1, :cond_67

    sget-object v8, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v9, 0x1

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_67

    .line 1444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+CIEV: 1,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1448
    :cond_67
    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-nez v8, :cond_90

    .line 1449
    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPService:I

    if-eq v0, v8, :cond_90

    .line 1450
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPService:I

    .line 1451
    sget-object v8, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v9, 0x1

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_90

    .line 1452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+CIEV: 1,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPService:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1457
    :cond_90
    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v5, v8, :cond_b7

    .line 1458
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    .line 1459
    if-eqz p1, :cond_b7

    sget-object v8, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v9, 0x6

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_b7

    .line 1460
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+CIEV: 6,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1463
    :cond_b7
    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v7, v8, :cond_c6

    .line 1464
    iput v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    .line 1465
    if-eqz p1, :cond_c6

    .line 1466
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1470
    :cond_c6
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_2f .. :try_end_cf} :catchall_f0

    .line 1471
    monitor-exit p0

    return-void

    .end local v0           #VoIPservice:I
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    .end local v5           #roam:I
    .end local v6           #service:I
    .end local v7           #stat:I
    :cond_d1
    move v6, v9

    .line 1407
    goto/16 :goto_a

    .restart local v6       #service:I
    :cond_d4
    move v5, v9

    .line 1408
    goto/16 :goto_11

    .line 1420
    .restart local v0       #VoIPservice:I
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v5       #roam:I
    :catch_d7
    move-exception v2

    .line 1421
    .local v2, e:Ljava/lang/Exception;
    :try_start_d8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateServiceState exeption :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_d8 .. :try_end_ee} :catchall_f0

    goto/16 :goto_2d

    .line 1407
    .end local v0           #VoIPservice:I
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    .end local v5           #roam:I
    .end local v6           #service:I
    :catchall_f0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v0       #VoIPservice:I
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v5       #roam:I
    .restart local v6       #service:I
    :cond_f3
    move v0, v9

    .line 1425
    goto/16 :goto_36

    .line 1435
    :cond_f6
    const/4 v7, 0x1

    .restart local v7       #stat:I
    goto/16 :goto_40

    .line 1438
    .end local v7           #stat:I
    :cond_f9
    if-ne v5, v8, :cond_fe

    const/4 v7, 0x5

    .restart local v7       #stat:I
    :goto_fc
    goto/16 :goto_40

    .end local v7           #stat:I
    :cond_fe
    move v7, v8

    goto :goto_fc
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"

    .prologue
    .line 1343
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v7}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_bb

    move-result v7

    if-nez v7, :cond_b

    .line 1404
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 1347
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v6

    .line 1351
    .local v6, signalStrength:Landroid/telephony/SignalStrength;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_bb

    .line 1352
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 1354
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 1355
    .local v2, mWifiLevel:I
    if-eqz v0, :cond_44

    .line 1357
    :try_start_25
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_be

    move-result-object v4

    .line 1362
    :goto_29
    if-eqz v4, :cond_44

    .line 1363
    :try_start_2b
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 1364
    const-string v7, "newRssi"

    const/16 v8, -0xc8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1365
    .local v3, mWifiRssi:I
    const/4 v7, 0x5

    invoke-static {v3, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1370
    .end local v3           #mWifiRssi:I
    :cond_44
    if-eqz v6, :cond_14d

    .line 1371
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 1372
    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1377
    .local v5, signal:I
    :goto_54
    invoke-direct {p0, v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 1378
    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v5, v7, :cond_dd

    .line 1379
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1380
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    .line 1381
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v8, 0x5

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_9

    .line 1382
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+CIEV: 5,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1383
    const-string v7, "Bluetooth HS/HF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Strength mSignal:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mWifiLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mVoIPSignal:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_2b .. :try_end_b9} :catchall_bb

    goto/16 :goto_9

    .line 1343
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #mWifiLevel:I
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #signal:I
    .end local v6           #signalStrength:Landroid/telephony/SignalStrength;
    :catchall_bb
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1358
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #mWifiLevel:I
    .restart local v4       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v6       #signalStrength:Landroid/telephony/SignalStrength;
    :catch_be
    move-exception v1

    .line 1359
    .local v1, e:Ljava/lang/Exception;
    :try_start_bf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSignalState exeption :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1374
    .end local v1           #e:Ljava/lang/Exception;
    :cond_d7
    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    .restart local v5       #signal:I
    goto/16 :goto_54

    .line 1386
    :cond_dd
    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-nez v7, :cond_9

    if-eqz v4, :cond_9

    .line 1387
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 1388
    if-eqz v2, :cond_9

    .line 1389
    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    if-eq v7, v2, :cond_9

    .line 1390
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1391
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    .line 1392
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v8, 0x5

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_9

    .line 1393
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+CIEV: 5,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1394
    const-string v7, "Bluetooth HS/HF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Strength mWifiLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSignal:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mVoIPSignal:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPSignal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1402
    .end local v5           #signal:I
    :cond_14d
    const-string v7, "Bluetooth HS/HF"

    const-string v8, "Signal Strength null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_bf .. :try_end_154} :catchall_bb

    goto/16 :goto_9
.end method


# virtual methods
.method public changeVoIPStateToPhoneState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 5
    .parameter

    .prologue
    .line 2022
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    .line 2023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVoIPStateToCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2025
    const/4 v1, 0x5

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x6

    if-ne p1, v1, :cond_21

    .line 2026
    :cond_1e
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    .line 2031
    :cond_20
    :goto_20
    return-object v0

    .line 2027
    :cond_21
    if-eqz p1, :cond_20

    .line 2028
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_20
.end method

.method public convertToCallState(I)Lcom/android/internal/telephony/Call$State;
    .registers 3
    .parameter "index"

    .prologue
    .line 2035
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 2037
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    packed-switch p1, :pswitch_data_22

    .line 2058
    :goto_5
    return-object v0

    .line 2039
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2041
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2043
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2045
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2047
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2049
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2051
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2053
    :pswitch_1b
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2055
    :pswitch_1e
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_5

    .line 2037
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method declared-synchronized handleVoipCallStateChange()V
    .registers 14

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 2063
    monitor-enter p0

    .line 2068
    :try_start_4
    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    .line 2075
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x2

    invoke-direct {v9, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2077
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_308

    move-result-object v10

    .line 2080
    :try_start_16
    invoke-interface {v10}, Landroid/os/IVoIPInterface;->getState()I
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_308
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_2ce

    move-result v4

    .line 2081
    :try_start_1a
    invoke-interface {v10}, Landroid/os/IVoIPInterface;->getActiveFgCallState()I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_308
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_3bb

    move-result v3

    .line 2082
    :try_start_1e
    invoke-interface {v10}, Landroid/os/IVoIPInterface;->getFirstActiveBgCallState()I
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_308
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_3c0

    move-result v1

    .line 2083
    :try_start_22
    invoke-interface {v10}, Landroid/os/IVoIPInterface;->getFirstActiveRingingCallState()I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_308
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_3c4

    move-result v0

    .line 2088
    :goto_26
    :try_start_26
    invoke-virtual {p0, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->changeVoIPStateToPhoneState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    .line 2089
    invoke-virtual {p0, v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 2090
    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 2091
    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 2095
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleVoipCallStateChange() mPhone:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "                            mFVoIPCall:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mBVoIPCall:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mRVoIPCall:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "                            mVoIPPhoneState:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v12}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", newVoIPState:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "                            mVoIPCall      :"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mVoIPCallsetup:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mVoIPCallheld:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    if-eq v11, v0, :cond_101

    .line 2102
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0, v11}, Lcom/android/phone/BluetoothHandsfree;->access$2902(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 2103
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3ca

    .line 2114
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2118
    :cond_101
    :goto_101
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3d0

    .line 2166
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    :cond_112
    move v1, v2

    move v0, v2

    .line 2169
    :goto_114
    sget-object v12, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v7, v12, v7

    packed-switch v7, :pswitch_data_3dc

    :cond_11f
    :goto_11f
    :pswitch_11f
    move v7, v1

    .line 2190
    :goto_120
    sget-object v1, Lcom/android/phone/BluetoothHandsfree$35;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v12

    aget v1, v1, v12

    sparse-switch v1, :sswitch_data_3e8

    :cond_12b
    :goto_12b
    move v4, v0

    move v0, v2

    .line 2215
    :goto_12d
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3c7

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_3c7

    .line 2217
    const-string v0, "mPhone == OFFHOOK, CS = ACTIVE"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    move v3, v5

    .line 2222
    :goto_156
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoIPcall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VoIPcallsetup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VoIPcallheld : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVoIPState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAudioPossible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserWantsAudio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isHeadsetConnected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    if-eq v0, v4, :cond_1ef

    .line 2228
    if-ne v4, v5, :cond_1d5

    .line 2231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 2234
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-nez v0, :cond_1d5

    .line 2235
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2239
    :cond_1d5
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CIEV: 2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2244
    :cond_1ef
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    if-eq v0, v7, :cond_223

    .line 2245
    iput v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    .line 2253
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCall:I

    if-ne v0, v5, :cond_20b

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    if-eqz v0, :cond_20b

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    if-eq v0, v5, :cond_223

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_223

    .line 2255
    :cond_20b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CIEV: 3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallsetup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2260
    :cond_223
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    if-eq v0, v3, :cond_241

    .line 2261
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CIEV: 4,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mVoIPCallheld:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_241
    .catchall {:try_start_26 .. :try_end_241} :catchall_308

    .line 2267
    :cond_241
    if-ne v7, v5, :cond_2c3

    if-eq v7, v8, :cond_2c3

    .line 2270
    const/4 v2, 0x0

    .line 2271
    const/16 v0, 0x80

    .line 2275
    :try_start_248
    invoke-interface {v10}, Landroid/os/IVoIPInterface;->getCurrentRemoteCallNumber()Ljava/lang/String;
    :try_end_24b
    .catchall {:try_start_248 .. :try_end_24b} :catchall_308
    .catch Landroid/os/RemoteException; {:try_start_248 .. :try_end_24b} :catch_373

    move-result-object v2

    .line 2280
    :goto_24c
    if-eqz v2, :cond_38f

    .line 2281
    :try_start_24e
    const-string v0, "@chaton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2282
    if-ltz v0, :cond_38c

    .line 2283
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2287
    :goto_25b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempNumber:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 2289
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v0

    .line 2294
    :goto_27f
    if-nez v4, :cond_283

    if-eqz v3, :cond_393

    .line 2296
    :cond_283
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2c3

    .line 2297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CCWA: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CIEV: 3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2314
    :cond_2c3
    :goto_2c3
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v9}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_2cc
    .catchall {:try_start_24e .. :try_end_2cc} :catchall_308

    .line 2315
    monitor-exit p0

    return-void

    .line 2084
    :catch_2ce
    move-exception v0

    move v1, v2

    move v3, v2

    move v4, v2

    .line 2085
    :goto_2d2
    :try_start_2d2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleVoipCallStateChange exeption :"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_26

    .line 2105
    :pswitch_2eb
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_101

    .line 2106
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2108
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCloseAudioDuringCallSetup:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2110
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_306
    .catchall {:try_start_2d2 .. :try_end_306} :catchall_308

    goto/16 :goto_101

    .line 2063
    :catchall_308
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2121
    :pswitch_30b
    :try_start_30b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move v1, v2

    move v0, v5

    .line 2122
    goto/16 :goto_114

    .line 2126
    :pswitch_315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 2127
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2129
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move v1, v6

    move v0, v2

    .line 2141
    goto/16 :goto_114

    .line 2143
    :pswitch_32a
    const/4 v1, 0x3

    .line 2149
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v12, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v0, v12}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move v0, v2

    .line 2150
    goto/16 :goto_114

    .line 2162
    :pswitch_334
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v0, :cond_112

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v0, :cond_112

    .line 2163
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    move v1, v2

    move v0, v2

    goto/16 :goto_114

    :pswitch_346
    move v7, v5

    .line 2173
    goto/16 :goto_120

    .line 2185
    :pswitch_349
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_11f

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_11f

    .line 2186
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v12, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_11f

    .line 2192
    :sswitch_359
    if-ne v0, v5, :cond_35f

    move v4, v0

    move v0, v5

    .line 2193
    goto/16 :goto_12d

    :cond_35f
    move v0, v6

    move v4, v5

    .line 2198
    goto/16 :goto_12d

    .line 2210
    :sswitch_363
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v1, :cond_12b

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v1, :cond_12b

    .line 2211
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_12b

    .line 2276
    :catch_373
    move-exception v1

    .line 2277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVoipCallStateChange exeption :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    goto/16 :goto_24c

    :cond_38c
    move-object v1, v2

    .line 2285
    goto/16 :goto_25b

    .line 2291
    :cond_38f
    const-string v1, ""

    goto/16 :goto_27f

    .line 2302
    :cond_393
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 2303
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 2304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 2305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 2307
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3b2

    .line 2308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 2309
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2311
    :cond_3b2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_3b9
    .catchall {:try_start_30b .. :try_end_3b9} :catchall_308

    goto/16 :goto_2c3

    .line 2084
    :catch_3bb
    move-exception v0

    move v1, v2

    move v3, v2

    goto/16 :goto_2d2

    :catch_3c0
    move-exception v0

    move v1, v2

    goto/16 :goto_2d2

    :catch_3c4
    move-exception v0

    goto/16 :goto_2d2

    :cond_3c7
    move v3, v0

    goto/16 :goto_156

    .line 2103
    :pswitch_data_3ca
    .packed-switch 0x1
        :pswitch_2eb
    .end packed-switch

    .line 2118
    :pswitch_data_3d0
    .packed-switch 0x1
        :pswitch_30b
        :pswitch_315
        :pswitch_32a
        :pswitch_334
    .end packed-switch

    .line 2169
    :pswitch_data_3dc
    .packed-switch 0x4
        :pswitch_349
        :pswitch_11f
        :pswitch_346
        :pswitch_346
    .end packed-switch

    .line 2190
    :sswitch_data_3e8
    .sparse-switch
        0x4 -> :sswitch_363
        0x8 -> :sswitch_359
    .end sparse-switch
.end method
