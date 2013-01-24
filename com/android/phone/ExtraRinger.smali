.class public Lcom/android/phone/ExtraRinger;
.super Ljava/lang/Object;
.source "ExtraRinger.java"


# instance fields
.field private final EXTRA_RINGER_ACCELEROMETER_OK:I

.field private final EXTRA_RINGER_ALL_SENSOR_OK:I

.field private final EXTRA_RINGER_INIT:I

.field private final EXTRA_RINGER_LIGHT_OK:I

.field private final EXTRA_RINGER_SENSOR_NOT_OK:I

.field private final EXTRA_RINGTONE_ESCALATING_THRESHOLD_TIME:I

.field private final LUX_IN_POCKET:I

.field private final SET_EXTRA_RINGTONE_VOLUME:I

.field private final VERTICAL_ANGLE:I

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentExtraRingerVolume:I

.field private mExtraRingerUpdateDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mOriginRingtoneVolume:I

.field private mSensorChecked:I

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/android/phone/ExtraRinger;->mOriginRingtoneVolume:I

    .line 33
    iput v1, p0, Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I

    .line 35
    iput v1, p0, Lcom/android/phone/ExtraRinger;->mExtraRingerUpdateDelay:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/ExtraRinger;->SET_EXTRA_RINGTONE_VOLUME:I

    .line 39
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/ExtraRinger;->EXTRA_RINGTONE_ESCALATING_THRESHOLD_TIME:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/ExtraRinger;->LUX_IN_POCKET:I

    .line 43
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/phone/ExtraRinger;->VERTICAL_ANGLE:I

    .line 45
    iput v1, p0, Lcom/android/phone/ExtraRinger;->EXTRA_RINGER_INIT:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/ExtraRinger;->EXTRA_RINGER_LIGHT_OK:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/ExtraRinger;->EXTRA_RINGER_ACCELEROMETER_OK:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/ExtraRinger;->EXTRA_RINGER_ALL_SENSOR_OK:I

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/ExtraRinger;->EXTRA_RINGER_SENSOR_NOT_OK:I

    .line 55
    iput v1, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    .line 57
    new-instance v0, Lcom/android/phone/ExtraRinger$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ExtraRinger$1;-><init>(Lcom/android/phone/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/phone/ExtraRinger;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/android/phone/ExtraRinger$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ExtraRinger$2;-><init>(Lcom/android/phone/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/phone/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 162
    new-instance v0, Lcom/android/phone/ExtraRinger$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ExtraRinger$3;-><init>(Lcom/android/phone/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    .line 78
    iput-object p1, p0, Lcom/android/phone/ExtraRinger;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ExtraRinger;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/phone/ExtraRinger;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/ExtraRinger;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ExtraRinger;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ExtraRinger;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/phone/ExtraRinger;->mExtraRingerUpdateDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/ExtraRinger;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    return p1
.end method

.method static synthetic access$476(Lcom/android/phone/ExtraRinger;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/ExtraRinger;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/phone/ExtraRinger;->updateSensorState()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 232
    const-string v0, "ExtraRinger"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method private makeExtraRingtone()V
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/16 v4, 0x64

    .line 215
    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 229
    :cond_b
    :goto_b
    return-void

    .line 219
    :cond_c
    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/ExtraRinger;->mOriginRingtoneVolume:I

    .line 220
    iget v1, p0, Lcom/android/phone/ExtraRinger;->mOriginRingtoneVolume:I

    iput v1, p0, Lcom/android/phone/ExtraRinger;->mCurrentExtraRingerVolume:I

    .line 222
    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 224
    .local v0, maxVolume:I
    iget v1, p0, Lcom/android/phone/ExtraRinger;->mOriginRingtoneVolume:I

    if-ge v1, v0, :cond_b

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 225
    const/16 v1, 0x7d0

    iget v2, p0, Lcom/android/phone/ExtraRinger;->mOriginRingtoneVolume:I

    sub-int v2, v0, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/phone/ExtraRinger;->mExtraRingerUpdateDelay:I

    .line 227
    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/phone/ExtraRinger;->mExtraRingerUpdateDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b
.end method

.method private updateSensorState()V
    .registers 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSensorState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    packed-switch v0, :pswitch_data_50

    .line 212
    :goto_1d
    return-void

    .line 195
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1d

    .line 198
    :pswitch_26
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1d

    .line 201
    :pswitch_2e
    invoke-direct {p0}, Lcom/android/phone/ExtraRinger;->makeExtraRingtone()V

    .line 202
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1d

    .line 206
    :pswitch_40
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1d

    .line 193
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_26
        :pswitch_2e
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public startExtraRinger()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    const-string v2, "extra_ringer"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 143
    :goto_c
    return-void

    .line 104
    :cond_d
    const-string v2, "startExtraRinger.."

    invoke-direct {p0, v2}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "extra_ringer"

    const-string v2, "extra_ringer_default_on"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v3

    :goto_23
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, isON:I
    if-nez v0, :cond_31

    .line 113
    const-string v2, "Extra ringer off."

    invoke-direct {p0, v2}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_c

    .end local v0           #isON:I
    :cond_2f
    move v2, v4

    .line 106
    goto :goto_23

    .line 117
    .restart local v0       #isON:I
    :cond_31
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 118
    .local v1, phone:Lcom/android/phone/PhoneApp;
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_4d

    iget-object v2, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 120
    :cond_47
    const-string v2, "startExtraRinger : There is audio device"

    invoke-direct {p0, v2}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 124
    :cond_4d
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    if-ne v2, v5, :cond_61

    .line 126
    const-string v2, "startExtraRinger : Already max volume"

    invoke-direct {p0, v2}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 130
    :cond_61
    iput v4, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    .line 132
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_73

    .line 133
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    .line 136
    :cond_73
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 137
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/phone/ExtraRinger;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 140
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ExtraRinger;->mLightSensor:Landroid/hardware/Sensor;

    .line 141
    iget-object v2, p0, Lcom/android/phone/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/phone/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/phone/ExtraRinger;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_c
.end method

.method public stopExtraRinger()V
    .registers 5

    .prologue
    const/16 v1, 0x64

    const/4 v3, 0x0

    .line 83
    const-string v0, "stopExtraRinger"

    invoke-direct {p0, v0}, Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 85
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    :cond_15
    iget v0, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 89
    iget-object v0, p0, Lcom/android/phone/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 91
    :cond_22
    iput v3, p0, Lcom/android/phone/ExtraRinger;->mSensorChecked:I

    .line 92
    return-void
.end method
