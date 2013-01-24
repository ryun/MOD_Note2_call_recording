.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$13;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;
    }
.end annotation


# static fields
.field static BIN_DEFAULT_DIR:Ljava/lang/String;

.field static BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

.field static LANGUAGE_CHINA:I

.field static LANGUAGE_ENGLISH:I

.field static LANGUAGE_KOREA:I

.field static VERSION_DEFAULT_DIR:Ljava/lang/String;

.field static VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field private static dialedNumber:Ljava/lang/String;

.field private static elapsedTime:J

.field static headerSize:I

.field protected static isFinishCdmaCallBarring:Z

.field public static kIsAudioResetDone:Z

.field private static lastTime:J

.field private static mCallConnectedToneHandle:Landroid/media/MediaPlayer;

.field private static mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field public static mIsAudioSolutionAboutRoutingInitiated:Z

.field public static mIsAudioSolutionInitiated:Z

.field private static mIsMmiDialogHiding:Z

.field private static mMmiDialog:Landroid/app/AlertDialog;

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field public static mPreSSCState:I

.field private static mRingToneIsPlaying:Z

.field private static mRingTonePlayer:Landroid/media/MediaPlayer;

.field public static mSpeakerOnByExtra:Z

.field private static mWB:Z

.field static mobileSize:I

.field public static mpreRAFTstate:I

.field static provinceSize:I

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private static sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static sCurrentExtraVol:Z

.field private static sIsExtraVolEnabled:Z

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sIsVoiceCallEq:Z

.field private static sToast:Landroid/widget/Toast;

.field private static sVoipSupported:Z

.field private static systemTime:J

.field static telSize:I

.field static titleSeekCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 174
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 177
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 191
    sput-object v3, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 193
    sput-object v3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 196
    const-string v2, "default_noise_reduction"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 198
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mWB:Z

    .line 201
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    .line 204
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sCurrentExtraVol:Z

    .line 207
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    .line 209
    sput-object v3, Lcom/android/phone/PhoneUtils;->mRingTonePlayer:Landroid/media/MediaPlayer;

    .line 210
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mRingToneIsPlaying:Z

    .line 215
    sput-object v3, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 216
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 219
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->isFinishCdmaCallBarring:Z

    .line 221
    sput-object v3, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    .line 222
    sput-object v3, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    .line 223
    sput-object v3, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    .line 225
    sput-object v3, Lcom/android/phone/PhoneUtils;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 226
    sput-object v3, Lcom/android/phone/PhoneUtils;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 239
    sput v0, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    .line 245
    sput v0, Lcom/android/phone/PhoneUtils;->mPreSSCState:I

    .line 248
    sput-wide v4, Lcom/android/phone/PhoneUtils;->systemTime:J

    .line 249
    sput-wide v4, Lcom/android/phone/PhoneUtils;->lastTime:J

    .line 250
    sput-wide v4, Lcom/android/phone/PhoneUtils;->elapsedTime:J

    .line 253
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionInitiated:Z

    .line 255
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionAboutRoutingInitiated:Z

    .line 264
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    .line 345
    new-instance v2, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 2578
    new-instance v2, Lcom/android/phone/PhoneUtils$6;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    sput-object v2, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 3848
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 3850
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3851
    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    move v0, v1

    :cond_7c
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 4351
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->kIsAudioResetDone:Z

    .line 5181
    new-instance v0, Lcom/android/phone/PhoneUtils$11;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$11;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5230
    const/16 v0, 0x83

    sput v0, Lcom/android/phone/PhoneUtils;->telSize:I

    .line 5231
    const/16 v0, 0x60

    sput v0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    .line 5232
    const/16 v0, 0x81

    sput v0, Lcom/android/phone/PhoneUtils;->mobileSize:I

    .line 5233
    sput v6, Lcom/android/phone/PhoneUtils;->headerSize:I

    .line 5234
    const/16 v0, 0xc

    sput v0, Lcom/android/phone/PhoneUtils;->titleSeekCount:I

    .line 5235
    sput v1, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    .line 5236
    sput v6, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    .line 5237
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/PhoneUtils;->LANGUAGE_ENGLISH:I

    .line 5239
    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 5240
    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 5241
    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    .line 5242
    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 412
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/PhoneUtils;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/Phone;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 148
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/Phone;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->notifyMMIOperation(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$700()Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800()Landroid/bluetooth/BluetoothHeadset;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/PhoneUtils;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$802(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 1
    .parameter "x0"

    .prologue
    .line 148
    sput-object p0, Lcom/android/phone/PhoneUtils;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$900(J)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->startAutoAnswer(J)V

    return-void
.end method

.method private static activateSpeakerIfShouldBe(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3745
    const-string v0, "activateSpeakerIfShouldBe()..."

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3750
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-ne v0, v2, :cond_5d

    .line 3751
    const-string v0, "activateSpeakerIfShouldBe(): In a dock -> may need to turn on speaker."

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3752
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3753
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    .line 3755
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_5d

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_5d

    :cond_26
    move v0, v2

    .line 3760
    :goto_27
    const-string v3, "keyboard_open_spk_on"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3761
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v2, :cond_45

    .line 3763
    const-string v0, "activateSpeakerIfShouldBe(): Hardkeyboard is opened -> may need to turn on speaker."

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    move v0, v2

    .line 3768
    :cond_45
    sget-boolean v3, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    if-ne v3, v2, :cond_51

    .line 3769
    const-string v0, "activateSpeakerIfShouldBe(): By extra -> may need to turn on speaker."

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3771
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    move v0, v2

    .line 3773
    :cond_51
    if-eqz v0, :cond_5b

    .line 3774
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3778
    :goto_5a
    return v2

    :cond_5b
    move v2, v1

    goto :goto_5a

    :cond_5d
    move v0, v1

    goto :goto_27
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 829
    const-string v1, "answerAndEndActive()..."

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 841
    const-string v1, "PhoneUtils"

    const-string v2, "end active call failed!"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 842
    const/4 v0, 0x0

    .line 852
    :cond_18
    :goto_18
    return v0

    .line 848
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 849
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_18
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCall("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 429
    const-string v0, "GATE"

    const-string v3, "<GATE-M>ANSWER_CALL</GATE-M>"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_2b
    if-nez p0, :cond_33

    .line 433
    const-string v0, "answerCall()... : riningCall is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 592
    :cond_32
    :goto_32
    return v2

    .line 436
    :cond_33
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 438
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 439
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 440
    const-string v3, "cb_incoming_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 441
    if-ne v0, v1, :cond_6f

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->isFinishCdmaCallBarring:Z

    if-nez v0, :cond_6f

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/phone/CallLockSettings;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 444
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_32

    .line 447
    :cond_6f
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->isFinishCdmaCallBarring:Z

    if-eqz v0, :cond_75

    .line 448
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->isFinishCdmaCallBarring:Z

    .line 452
    :cond_75
    invoke-static {}, Lcom/android/phone/PhoneUtils;->checkDuplicatedIntent()Z

    move-result v0

    if-nez v0, :cond_32

    .line 457
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 460
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_174

    move v5, v1

    .line 462
    :goto_8e
    const/4 v3, 0x0

    .line 464
    if-eqz v5, :cond_9e

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_9e

    .line 467
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 468
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 473
    :cond_9e
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 474
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 475
    const-string v7, "audio"

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 476
    if-eqz v5, :cond_177

    .line 477
    const-string v7, "phone_type=cdma"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 484
    :cond_b9
    :goto_b9
    const-string v0, "feature_chn_dual_mode_with_one_ril"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 485
    const-string v0, "persist.radio.boot.modem"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 487
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v8, "audio"

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modemId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 489
    if-ne v7, v1, :cond_17e

    .line 491
    const-string v7, "phone_type=cp1"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 499
    :cond_f0
    :goto_f0
    if-eqz p0, :cond_22b

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerCall: call state = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 502
    if-eqz v5, :cond_125

    .line 503
    :try_start_114
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v7, :cond_185

    .line 507
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    :try_end_125
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_114 .. :try_end_125} :catch_221

    .line 543
    :cond_125
    :goto_125
    :try_start_125
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    .line 546
    iget-object v7, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V
    :try_end_132
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_125 .. :try_end_132} :catch_1e9

    .line 550
    const/4 v7, 0x0

    :try_start_133
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 552
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioEffectAboutRouting()V

    .line 553
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 554
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioEffect()V

    .line 557
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_14e

    .line 558
    iget-object v7, v6, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 561
    :cond_14e
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfShouldBe(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    .line 571
    if-eqz v0, :cond_170

    if-nez v4, :cond_170

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_170

    if-eqz v3, :cond_164

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_170

    .line 574
    :cond_164
    const-string v0, "PhoneUtils"

    const-string v4, "Forcing speaker off due to new incoming call..."

    invoke-static {v0, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {v6, v0, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_170
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_133 .. :try_end_170} :catch_226

    :cond_170
    move v0, v1

    :cond_171
    :goto_171
    move v2, v0

    .line 592
    goto/16 :goto_32

    :cond_174
    move v5, v2

    .line 460
    goto/16 :goto_8e

    .line 480
    :cond_177
    const-string v7, "phone_type=gsm"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 494
    :cond_17e
    const-string v7, "phone_type=cp2"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_f0

    .line 512
    :cond_185
    :try_start_185
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_219

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_1d7

    .line 514
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 516
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCONFCallState(Lcom/android/phone/PhoneUtilsExt$CONFCallState;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGT Multi Call ->> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGT Multi Call ->> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 531
    :cond_1d7
    :goto_1d7
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 536
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    :try_end_1e0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_185 .. :try_end_1e0} :catch_221

    move-result-object v3

    .line 537
    if-eqz v3, :cond_125

    .line 538
    const/4 v0, 0x1

    :try_start_1e4
    invoke-virtual {v3, v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_1e7
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1e4 .. :try_end_1e7} :catch_1e9

    goto/16 :goto_125

    .line 577
    :catch_1e9
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    .line 578
    :goto_1ed
    const-string v7, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerCall: caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    .line 580
    if-eqz v5, :cond_171

    .line 582
    iget-object v1, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v3, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 584
    if-eqz v4, :cond_171

    .line 585
    invoke-virtual {v4, v2}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_171

    .line 523
    :cond_219
    :try_start_219
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    :try_end_220
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_219 .. :try_end_220} :catch_221

    goto :goto_1d7

    .line 577
    :catch_221
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    goto :goto_1ed

    :catch_226
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move v0, v1

    goto :goto_1ed

    :cond_22b
    move v0, v2

    goto/16 :goto_171
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 3231
    packed-switch p0, :pswitch_data_18

    .line 3237
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 3232
    :pswitch_8
    const-string v0, "MODE_INVALID"

    goto :goto_7

    .line 3233
    :pswitch_b
    const-string v0, "MODE_CURRENT"

    goto :goto_7

    .line 3234
    :pswitch_e
    const-string v0, "MODE_NORMAL"

    goto :goto_7

    .line 3235
    :pswitch_11
    const-string v0, "MODE_RINGTONE"

    goto :goto_7

    .line 3236
    :pswitch_14
    const-string v0, "MODE_IN_CALL"

    goto :goto_7

    .line 3231
    nop

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method static blockCallStrategy(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 5749
    const-string v0, "com.sec.android.app.firewall"

    .line 5750
    const-string v0, "black_call_num"

    .line 5751
    const-string v0, "numbers"

    .line 5752
    const-string v0, "checked"

    .line 5753
    const-string v0, "content://com.sec.android.app.firewall/black_call_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5754
    const-string v0, "unknown_mode"

    .line 5756
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 5757
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unknown_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 5758
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 5759
    if-lez v8, :cond_67

    .line 5760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknownMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " presentation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5763
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v0, v3, :cond_4f

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_56

    .line 5765
    :cond_4f
    const-string v0, "blockCallStrategy UNKNOW, RESTRICTED"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v6

    .line 5868
    :goto_55
    return v0

    .line 5769
    :cond_56
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v3, :cond_67

    .line 5770
    const-string v0, "blockCallStrategy isEmpty"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v6

    .line 5771
    goto :goto_55

    .line 5776
    :cond_67
    const-string v3, "checked=1"

    .line 5778
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5779
    if-nez v10, :cond_7c

    .line 5780
    const-string v0, "blockCallStrategy->cursor is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v7

    .line 5781
    goto :goto_55

    .line 5784
    :cond_7c
    const-string v0, "content://com.sec.android.app.firewall/black_call_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5786
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 5788
    :cond_88
    const-string v0, "numbers"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numbers = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' and checked = 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5791
    if-nez v0, :cond_c3

    .line 5792
    const-string v0, "blockCallStrategy->ursor \'cur_rejectNumber\' is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5793
    if-eqz v10, :cond_c1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c1
    move v0, v7

    .line 5794
    goto :goto_55

    .line 5796
    :cond_c3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 5798
    :cond_c9
    const-string v3, "criteria"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 5799
    packed-switch v3, :pswitch_data_1d0

    .line 5861
    :cond_d6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 5863
    :cond_dc
    if-eqz v0, :cond_e1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5865
    :cond_e1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_88

    .line 5867
    :cond_e7
    if-eqz v10, :cond_ec

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_ec
    move v0, v7

    .line 5868
    goto/16 :goto_55

    .line 5801
    :pswitch_ef
    const-string v3, "blockCallStrategy-> same"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5802
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isNumberNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 5803
    const-string v1, "phoneNumber is null"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5804
    if-eqz v10, :cond_104

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5805
    :cond_104
    if-eqz v0, :cond_109

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5806
    :cond_109
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->shouldBlockUnknownNumber(I)Z

    move-result v0

    goto/16 :goto_55

    .line 5808
    :cond_10f
    invoke-static {v11, v9}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 5809
    const-string v1, "in Same"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5810
    if-eqz v10, :cond_11f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5811
    :cond_11f
    if-eqz v0, :cond_124

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_124
    move v0, v6

    .line 5812
    goto/16 :goto_55

    .line 5816
    :pswitch_127
    const-string v3, "blockCallStrategy-> startsWith"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5817
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isNumberNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 5818
    const-string v1, "phoneNumber is null"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5819
    if-eqz v10, :cond_13c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5820
    :cond_13c
    if-eqz v0, :cond_141

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5821
    :cond_141
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->shouldBlockUnknownNumber(I)Z

    move-result v0

    goto/16 :goto_55

    .line 5823
    :cond_147
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 5824
    const-string v1, "in startsWith"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5825
    if-eqz v10, :cond_157

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5826
    :cond_157
    if-eqz v0, :cond_15c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_15c
    move v0, v6

    .line 5827
    goto/16 :goto_55

    .line 5831
    :pswitch_15f
    const-string v3, "blockCallStrategy-> endsWith"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5832
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isNumberNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 5833
    const-string v1, "phoneNumber is null"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5834
    if-eqz v10, :cond_174

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5835
    :cond_174
    if-eqz v0, :cond_179

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5836
    :cond_179
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->shouldBlockUnknownNumber(I)Z

    move-result v0

    goto/16 :goto_55

    .line 5838
    :cond_17f
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 5839
    const-string v1, "in endsWith"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5840
    if-eqz v10, :cond_18f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5841
    :cond_18f
    if-eqz v0, :cond_194

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_194
    move v0, v6

    .line 5842
    goto/16 :goto_55

    .line 5846
    :pswitch_197
    const-string v3, "blockCallStrategy-> contains"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5847
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isNumberNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 5848
    const-string v1, "phoneNumber is null"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5849
    if-eqz v10, :cond_1ac

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5850
    :cond_1ac
    if-eqz v0, :cond_1b1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5851
    :cond_1b1
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->shouldBlockUnknownNumber(I)Z

    move-result v0

    goto/16 :goto_55

    .line 5853
    :cond_1b7
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 5854
    const-string v1, "in contains"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5855
    if-eqz v10, :cond_1c7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5856
    :cond_1c7
    if-eqz v0, :cond_1cc

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1cc
    move v0, v6

    .line 5857
    goto/16 :goto_55

    .line 5799
    nop

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_127
        :pswitch_15f
        :pswitch_197
    .end packed-switch
.end method

.method static canEnableNoiseSuppression(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 3022
    const/4 v2, 0x1

    .line 3023
    .local v2, result:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3024
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 3026
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 3027
    const/4 v3, 0x0

    .line 3040
    :goto_10
    return v3

    .line 3030
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2f

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_23
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 3036
    :cond_2f
    const/4 v2, 0x0

    .line 3039
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canEnableNoiseSuppression, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    move v3, v2

    .line 3040
    goto :goto_10
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .registers 9
    .parameter "phone"

    .prologue
    const/4 v7, 0x0

    .line 1979
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    .line 1980
    .local v4, pendingMmis:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 1981
    .local v1, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelMmiCode: num pending MMIs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1983
    const/4 v0, 0x0

    .line 1984
    .local v0, canceled:Z
    if-lez v1, :cond_34

    .line 1989
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 1990
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1991
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1992
    const/4 v0, 0x1

    .line 1997
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :cond_34
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_3d

    .line 1999
    :try_start_38
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_44

    .line 2004
    :cond_3d
    :goto_3d
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v5, :cond_43

    .line 2005
    sput-object v7, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2007
    :cond_43
    return v0

    .line 2000
    :catch_44
    move-exception v2

    .line 2001
    .local v2, e:Landroid/os/RemoteException;
    sput-object v7, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_3d
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3633
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3634
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :goto_d
    return-void

    .line 3638
    :cond_e
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3640
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d
.end method

.method static checkAutoAnsweringMode(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 5117
    if-nez p1, :cond_d

    .line 5118
    const-string v0, "PhoneUtils"

    const-string v1, "- autoAnswerCall : don\'t get ringing connection"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5176
    :cond_c
    :goto_c
    return-void

    .line 5124
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "autoanswering_without_device"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5129
    if-nez v1, :cond_c0

    .line 5130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5131
    const-string v3, "automatic_answering_enable_sharedpref"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5135
    if-eqz v1, :cond_c

    .line 5139
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "answeringmode_auto_time"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5143
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_51

    .line 5144
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 5145
    if-eqz v1, :cond_c

    .line 5148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneUtils;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 5149
    sget-object v1, Lcom/android/phone/PhoneUtils;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v2, Lcom/android/phone/PhoneUtils;->sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v0, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_c

    .line 5154
    :cond_51
    const-string v3, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 5157
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5158
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 5159
    if-nez v3, :cond_86

    .line 5161
    const-string v4, "PhoneUtils"

    const-string v5, "getActualDefaultRingtoneUri : uriString is null. Silent"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    :goto_76
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_7e

    if-nez v3, :cond_b7

    .line 5168
    :cond_7e
    const-string v0, "PhoneUtils"

    const-string v1, "skipping ring because volume is zero or ringtone is silent"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 5163
    :cond_86
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActualDefaultRingtoneUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone URI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_b7
    move v0, v1

    .line 5173
    :goto_b8
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 5175
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->startAutoAnswer(J)V

    goto/16 :goto_c

    :cond_c0
    move v0, v2

    goto :goto_b8
.end method

.method public static checkCnapSpecialCases(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3525
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3540
    :cond_9
    :goto_9
    return v0

    .line 3526
    :cond_a
    const-string v1, "PRIVATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "R"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "O"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "T"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "RES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "PRIVATE NUMBER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 3531
    :cond_4a
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    goto :goto_9

    .line 3532
    :cond_4d
    const-string v1, "UNAVAILABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "UNA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "U"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3537
    :cond_6d
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_9
.end method

.method public static checkDuplicatedIntent()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 5626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/phone/PhoneUtils;->systemTime:J

    .line 5627
    sget-wide v1, Lcom/android/phone/PhoneUtils;->systemTime:J

    sget-wide v3, Lcom/android/phone/PhoneUtils;->lastTime:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/android/phone/PhoneUtils;->elapsedTime:J

    .line 5628
    const-string v1, "ctc_voicecall_additional_setting"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5629
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getBarringPopup()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5637
    :goto_22
    return v0

    .line 5632
    :cond_23
    sget-wide v1, Lcom/android/phone/PhoneUtils;->elapsedTime:J

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_31

    .line 5633
    sget-wide v0, Lcom/android/phone/PhoneUtils;->systemTime:J

    sput-wide v0, Lcom/android/phone/PhoneUtils;->lastTime:J

    .line 5634
    const/4 v0, 0x1

    goto :goto_22

    .line 5636
    :cond_31
    sget-wide v1, Lcom/android/phone/PhoneUtils;->systemTime:J

    sput-wide v1, Lcom/android/phone/PhoneUtils;->lastTime:J

    goto :goto_22
.end method

.method static dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 4630
    const/4 v2, 0x0

    .line 4632
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeCall: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4635
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 4638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> phone.dial() returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4640
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 4643
    if-nez v3, :cond_8e

    .line 4644
    if-ne v4, v0, :cond_8c

    .line 4645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialed MMI code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4648
    sget-object v2, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_59
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_59} :catch_82

    if-eqz v2, :cond_7c

    .line 4650
    :try_start_5b
    sget-object v2, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 4651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extended NW bindService setUssdString ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_7c} :catch_7d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_5b .. :try_end_7c} :catch_82

    .line 4709
    :cond_7c
    :goto_7c
    return v0

    .line 4652
    :catch_7d
    move-exception v2

    .line 4653
    const/4 v2, 0x0

    :try_start_7f
    sput-object v2, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_81
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_7f .. :try_end_81} :catch_82

    goto :goto_7c

    .line 4704
    :catch_82
    move-exception v0

    .line 4705
    const-string v2, "PhoneUtils"

    const-string v3, "Exception from phone.dial()"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 4706
    goto :goto_7c

    :cond_8c
    move v0, v1

    .line 4657
    goto :goto_7c

    .line 4660
    :cond_8e
    :try_start_8e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4662
    if-ne v4, v1, :cond_97

    .line 4663
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 4676
    :cond_97
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v0, "content"

    .line 4677
    if-eqz p2, :cond_b5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 4678
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 4679
    if-nez v0, :cond_bd

    .line 4680
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 4700
    :cond_b5
    :goto_b5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 4702
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfShouldBe(Lcom/android/internal/telephony/Phone;)Z

    move v0, v2

    goto :goto_7c

    .line 4685
    :cond_bd
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_c6

    .line 4686
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_b5

    .line 4688
    :cond_c6
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_cc
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_8e .. :try_end_cc} :catch_82

    goto :goto_b5
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x7d8

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1703
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1706
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v4

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMMIComplete: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1710
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v0, :cond_3d

    .line 1712
    :try_start_28
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1713
    const-string v0, "Extended NW displayMMIComplete removeMsg"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_3b} :catch_279

    .line 1716
    :goto_3b
    sput-object v7, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1720
    :cond_3d
    sget-object v0, Lcom/android/phone/PhoneUtils$13;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_280

    .line 1752
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected MmiCode state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :pswitch_61
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- using text from PENDING MMI message: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1755
    :goto_82
    if-eqz p4, :cond_87

    .line 1756
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1761
    :cond_87
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_10f

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v4, v5, :cond_10f

    .line 1762
    const-string v4, "displaying PUK unblocking progress dialog."

    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1766
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1767
    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1768
    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1769
    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1770
    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1771
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setType(I)V

    .line 1772
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1775
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 1779
    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 1953
    :cond_bb
    :goto_bb
    return-void

    .line 1727
    :pswitch_bc
    const v0, 0x7f0e002d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move v0, v2

    .line 1728
    goto :goto_82

    .line 1730
    :pswitch_c5
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 1733
    const v0, 0x104010e

    .line 1734
    const v1, 0x7f0e0047

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_82

    .line 1742
    :cond_d6
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v0, :cond_ec

    .line 1743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1748
    :cond_ec
    :pswitch_ec
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- using text from MMI message: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1750
    goto/16 :goto_82

    .line 1784
    :cond_10f
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_118

    .line 1785
    invoke-virtual {v3, v7}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1788
    :cond_118
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v0

    .line 1789
    if-eqz v0, :cond_160

    .line 1790
    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->getECNSentFlag()Z

    move-result v3

    if-nez v3, :cond_12a

    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->getECNUVRSentFlag()Z

    move-result v3

    if-eqz v3, :cond_160

    .line 1792
    :cond_12a
    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->getECNUVRSentFlag()Z

    move-result v3

    if-eqz v3, :cond_133

    .line 1793
    invoke-virtual {v0, v2}, Lcom/android/phone/ECNUtils;->setECNUVRSentFlag(Z)V

    .line 1796
    :cond_133
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1797
    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->getECNSentFlag()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 1798
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v4, v3, :cond_15b

    .line 1799
    invoke-virtual {v0, v1}, Lcom/android/phone/ECNUtils;->processUNR(Ljava/lang/String;)Z

    move-result v1

    .line 1800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneUtils->displayMMIComplete() : isUNR- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 1802
    :cond_15b
    invoke-virtual {v0, v2}, Lcom/android/phone/ECNUtils;->setECNSentFlag(Z)V

    goto/16 :goto_bb

    .line 1809
    :cond_160
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v4, v0, :cond_202

    .line 1810
    const-string v0, "MMI code has finished running."

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1813
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v0, :cond_27c

    .line 1815
    :try_start_16d
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_172} :catch_1fc

    move-result-object v0

    .line 1819
    :goto_173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extended NW displayMMIInitiate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1820
    if-eqz v0, :cond_bb

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_bb

    .line 1824
    :goto_197
    const-string v1, "disappear_ussd_cancel_popup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 1825
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v4, v1, :cond_bb

    .line 1832
    :cond_1a3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 1838
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setType(I)V

    .line 1840
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1843
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1846
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v4, v0, :cond_1ef

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 1847
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$3;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1950
    :cond_1ef
    :goto_1ef
    const-string v0, "beep_vibration_for_ussd"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1951
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->notifyMMICompleteThread(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_bb

    .line 1816
    :catch_1fc
    move-exception v0

    .line 1817
    sput-object v7, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object v0, v1

    goto/16 :goto_173

    .line 1857
    :cond_202
    const-string v0, "USSD code has requested user input. Constructing input dialog."

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1882
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1884
    const v3, 0x7f040021

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1887
    const v0, 0x7f09009c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1888
    const-string v4, "keypad_type_to_phone_for_ussd"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 1889
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1893
    :cond_22b
    new-instance v4, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v4, p0, v0, p2}, Lcom/android/phone/PhoneUtils$4;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 1911
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0e0037

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0e002e

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 1921
    new-instance v1, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/PhoneUtils$5;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;)V

    .line 1937
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1938
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1941
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setType(I)V

    .line 1943
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1947
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1ef

    .line 1714
    :catch_279
    move-exception v0

    goto/16 :goto_3b

    :cond_27c
    move-object v0, v1

    goto/16 :goto_197

    .line 1720
    nop

    :pswitch_data_280
    .packed-switch 0x1
        :pswitch_61
        :pswitch_bc
        :pswitch_c5
        :pswitch_ec
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0e002c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMMIInitiate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1466
    if-eqz p3, :cond_21

    .line 1467
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 1499
    :cond_21
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v0, :cond_8c

    .line 1500
    const-string v0, "running USSD code, displaying indeterminate progress."

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1502
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1503
    const-string v0, ""

    .line 1505
    :try_start_31
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v0}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_80

    move-result-object v0

    .line 1511
    :goto_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended NW displayMMIInitiate ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1513
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1514
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1515
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1517
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d8

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 1518
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1520
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1522
    :try_start_73
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7e
    .catch Ljava/lang/NullPointerException; {:try_start_73 .. :try_end_7e} :catch_88

    :goto_7e
    move-object v0, v1

    .line 1549
    :goto_7f
    return-object v0

    .line 1507
    :catch_80
    move-exception v0

    .line 1508
    sput-object v2, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 1509
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_37

    .line 1523
    :catch_88
    move-exception v0

    .line 1524
    sput-object v2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_7e

    .line 1529
    :cond_8c
    if-eqz p1, :cond_ac

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_ac

    move v0, v3

    .line 1531
    :goto_95
    if-nez v0, :cond_ae

    .line 1532
    const-string v0, "not a USSD code, displaying status toast."

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1533
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1534
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v2

    .line 1536
    goto :goto_7f

    :cond_ac
    move v0, v4

    .line 1529
    goto :goto_95

    .line 1538
    :cond_ae
    const-string v0, "running USSD code, displaying indeterminate progress."

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1541
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1542
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1543
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1544
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1545
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1547
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_7f
.end method

.method static displaySSInfo(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0e03b8

    const/4 v3, 0x1

    .line 1560
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1561
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v1, :cond_95

    .line 1563
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_104

    .line 1639
    :cond_11
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSnoti.code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/  SSnoti.notificationType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1640
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1641
    :goto_3c
    return-void

    .line 1565
    :pswitch_3d
    const v0, 0x7f0e03b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1570
    :pswitch_45
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_DisableToastPopupWhenMOConditionalCallForwarding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_57

    .line 1571
    const-string v0, "Do not show toast popup in case of conditional call forwarding + MO"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_3c

    .line 1574
    :cond_57
    const v0, 0x7f0e03b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1577
    :pswitch_5f
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1580
    :pswitch_64
    const v0, 0x7f0e03b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1583
    :pswitch_6c
    const v0, 0x7f0e03ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1586
    :pswitch_74
    const v0, 0x7f0e03bb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1589
    :pswitch_7c
    const v0, 0x7f0e03bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1592
    :pswitch_84
    const v0, 0x7f0e03bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1595
    :pswitch_8c
    const v0, 0x7f0e03be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1601
    :cond_95
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v1, v3, :cond_11

    .line 1603
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_11a

    goto/16 :goto_11

    .line 1605
    :pswitch_a0
    const v0, 0x7f0e03bf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1608
    :pswitch_a9
    const v0, 0x7f0e03c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1611
    :pswitch_b2
    const v0, 0x7f0e03c1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1614
    :pswitch_bb
    const v0, 0x7f0e03c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1617
    :pswitch_c4
    const v0, 0x7f0e03c3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1620
    :pswitch_cd
    const v0, 0x7f0e03c4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1623
    :pswitch_d6
    const v0, 0x7f0e03c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1626
    :pswitch_df
    const v0, 0x7f0e03c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1629
    :pswitch_e8
    const v0, 0x7f0e03c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1632
    :pswitch_f1
    const v0, 0x7f0e03c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1635
    :pswitch_fa
    const v0, 0x7f0e03c9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_11

    .line 1563
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_45
        :pswitch_5f
        :pswitch_64
        :pswitch_6c
        :pswitch_74
        :pswitch_7c
        :pswitch_84
        :pswitch_8c
    .end packed-switch

    .line 1603
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a9
        :pswitch_b2
        :pswitch_bb
        :pswitch_c4
        :pswitch_cd
        :pswitch_d6
        :pswitch_df
        :pswitch_e8
        :pswitch_f1
        :pswitch_fa
    .end packed-switch
.end method

.method static dumpCallManager()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3993
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3994
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3998
    const-string v0, "PhoneUtils"

    const-string v3, "############### dumpCallManager() ##############"

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4005
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallManager: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4006
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4007
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4008
    const-string v0, " - FG call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1d0

    const-string v0, "YES "

    :goto_47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4010
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4011
    const-string v0, "  Conn: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4012
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4013
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4014
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4015
    const-string v0, " - BG call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1d4

    const-string v0, "YES "

    :goto_85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4017
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4018
    const-string v0, "  Conn: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4019
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4020
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4021
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4022
    const-string v0, " - RINGING call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1d8

    const-string v0, "YES "

    :goto_c7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4023
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4024
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4025
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4027
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f3
    :goto_f3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1dc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 4028
    if-eqz v0, :cond_f3

    .line 4029
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4032
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4033
    const-string v4, " - FG call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4034
    const-string v4, "  State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4035
    const-string v4, "  Conn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4036
    const-string v3, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4037
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4038
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4039
    const-string v4, " - BG call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4040
    const-string v4, "  State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4041
    const-string v4, "  Conn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4042
    const-string v3, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4043
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4044
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4045
    const-string v3, " - RINGING call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4046
    const-string v3, "  State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4047
    const-string v3, "  Conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4048
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_f3

    .line 4008
    :cond_1d0
    const-string v0, "NO "

    goto/16 :goto_47

    .line 4015
    :cond_1d4
    const-string v0, "NO "

    goto/16 :goto_85

    .line 4022
    :cond_1d8
    const-string v0, "NO "

    goto/16 :goto_c7

    .line 4052
    :cond_1dc
    const-string v0, "PhoneUtils"

    const-string v1, "############## END dumpCallManager() ###############"

    invoke-static {v0, v1, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4053
    return-void
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3917
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 3918
    const-string v0, "PhoneUtils"

    const-string v3, "dumpCallState():"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3919
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3924
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3925
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3926
    const-string v3, "  - FG call: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3927
    const-string v3, " isAlive "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3928
    const-string v3, " isRinging "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3929
    const-string v3, " isDialing "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3930
    const-string v3, " isIdle "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3931
    const-string v3, " hasConnections "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3932
    const-string v0, "PhoneUtils"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3934
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3935
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3936
    const-string v3, "  - BG call: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3937
    const-string v3, " isAlive "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3938
    const-string v3, " isRinging "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3939
    const-string v3, " isDialing "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3940
    const-string v3, " isIdle "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3941
    const-string v3, " hasConnections "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3942
    const-string v0, "PhoneUtils"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3944
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3945
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3946
    const-string v3, "  - RINGING call: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3947
    const-string v3, " isAlive "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3948
    const-string v3, " isRinging "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3949
    const-string v3, " isDialing "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3950
    const-string v3, " isIdle "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3951
    const-string v3, " hasConnections "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3952
    const-string v0, "PhoneUtils"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3955
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_226

    move v0, v1

    .line 3956
    :goto_191
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_229

    move v3, v1

    .line 3957
    :goto_19c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_22c

    move v5, v1

    .line 3958
    :goto_1a7
    if-eqz v3, :cond_22f

    if-eqz v5, :cond_22f

    move v4, v1

    .line 3959
    :goto_1ac
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3960
    const-string v2, "  - hasRingingCall "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3961
    const-string v0, " hasActiveCall "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3962
    const-string v0, " hasHoldingCall "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3963
    const-string v0, " allLinesTaken "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3964
    const-string v0, "PhoneUtils"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3967
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_205

    .line 3968
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_232

    .line 3969
    const-string v0, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - CDMA call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    :cond_205
    :goto_205
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    .line 3980
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - Ringer state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3981
    return-void

    :cond_226
    move v0, v2

    .line 3955
    goto/16 :goto_191

    :cond_229
    move v3, v2

    .line 3956
    goto/16 :goto_19c

    :cond_22c
    move v5, v2

    .line 3957
    goto/16 :goto_1a7

    :cond_22f
    move v4, v2

    .line 3958
    goto/16 :goto_1ac

    .line 3972
    :cond_232
    const-string v0, "PhoneUtils"

    const-string v2, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_205
.end method

.method static explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 1347
    :try_start_0
    const-string v1, "explicitCallTransfer"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1348
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V
    :try_end_9
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1353
    :goto_9
    return-void

    .line 1349
    :catch_a
    move-exception v0

    .line 1350
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explicitCallTransfer: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method static fallbackHangupVTCall(Lcom/android/internal/telephony/Call;)Z
    .registers 5
    .parameter

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->fallbackHangupVTCall()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_5

    .line 780
    const/4 v0, 0x1

    .line 785
    :goto_4
    return v0

    .line 781
    :catch_5
    move-exception v0

    .line 782
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fallbackHangupVTCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static fallbackHangupVTRingingCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 679
    const-string v1, "hangupVTRingingCall()"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 680
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 681
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 683
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    .line 687
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 688
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_23

    .line 689
    const-string v0, "hangup ringing call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 690
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->fallbackHangupVTCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 707
    :goto_22
    return v0

    .line 691
    :cond_23
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v1, :cond_36

    .line 692
    const-string v1, "hangup Call waiting call"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 694
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    goto :goto_22

    .line 700
    :cond_36
    const-string v0, "No Ringing call to hangup"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x0

    goto :goto_22

    .line 703
    :cond_3d
    if-ne v2, v0, :cond_49

    .line 706
    const-string v0, "hangupVTRingingCall: hangupVTCall"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 707
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->fallbackHangupVTCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_22

    .line 709
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3699
    if-eqz p0, :cond_29

    .line 3700
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3701
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3702
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 3710
    :goto_1a
    return-object v0

    .line 3704
    :cond_1b
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 3707
    :cond_24
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 3710
    :cond_29
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method static getBufferUnicodeString([BII)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5298
    .line 5301
    const/16 v1, 0x80

    new-array v4, v1, [B

    move v1, v0

    .line 5303
    :goto_6
    if-ge v1, p2, :cond_11

    .line 5305
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v4, v1

    .line 5303
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    move v2, v0

    move v3, v0

    .line 5307
    :goto_13
    if-ge v2, p2, :cond_2a

    .line 5309
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_35

    add-int/lit8 v1, p2, -0x1

    if-ge v2, v1, :cond_35

    aget-byte v1, v4, v2

    if-nez v1, :cond_35

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v4, v1

    if-nez v1, :cond_35

    const/4 v1, 0x1

    .line 5311
    :goto_28
    if-eqz v1, :cond_37

    .line 5319
    :cond_2a
    new-array v1, v3, [B

    .line 5320
    :goto_2c
    if-ge v0, v3, :cond_3d

    .line 5322
    aget-byte v2, v4, v0

    aput-byte v2, v1, v0

    .line 5320
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_35
    move v1, v0

    .line 5309
    goto :goto_28

    .line 5316
    :cond_37
    add-int/lit8 v3, v3, 0x1

    .line 5307
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13

    .line 5324
    :cond_3d
    const-string v0, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiJian buffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "End"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5328
    :try_start_65
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_6d

    .line 5334
    :goto_6c
    return-object v0

    .line 5330
    :catch_6d
    move-exception v0

    .line 5332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5334
    const-string v0, ""

    goto :goto_6c
.end method

.method static getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 11
    .parameter "phone"
    .parameter "call"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 4468
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCallNumber() phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    if-eqz p0, :cond_8c

    .line 4470
    const/4 v2, 0x0

    .line 4471
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 4472
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_69

    .line 4473
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 4480
    :goto_28
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    if-eqz v2, :cond_8c

    .line 4482
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 4484
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 4485
    .local v0, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v0, :cond_8c

    .line 4487
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4488
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 4489
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 4490
    const-string v5, "PhoneUtils"

    const-string v6, "getCallNumber : voicemail - "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    :cond_61
    const-string v5, "PhoneUtils"

    const-string v6, "phoneNumber = "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    .end local v0           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #phoneType:I
    :goto_68
    return-object v3

    .line 4474
    .restart local v2       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    :cond_69
    if-eq v4, v8, :cond_6e

    const/4 v5, 0x3

    if-ne v4, v5, :cond_73

    .line 4476
    :cond_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_28

    .line 4478
    :cond_73
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4497
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    :cond_8c
    const-string v5, "PhoneUtils"

    const-string v6, "getCallNumber : number is null"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_68
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2136
    const/4 v0, 0x0

    .line 2138
    if-eqz p1, :cond_16

    .line 2142
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2143
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_17

    .line 2144
    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2145
    if-eqz v0, :cond_16

    .line 2146
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2184
    :cond_16
    :goto_16
    return-object v0

    .line 2149
    :cond_17
    instance-of v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_90

    .line 2151
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2156
    :goto_1f
    if-nez v1, :cond_8e

    .line 2159
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 2164
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 2166
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2167
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 2168
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2172
    :cond_69
    :goto_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerInfo: Roaming area number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2175
    :cond_7f
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 2176
    if-eqz v1, :cond_8e

    .line 2177
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2178
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :cond_8e
    move-object v0, v1

    goto :goto_16

    .line 2154
    :cond_90
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    goto :goto_1f

    .line 2169
    :cond_94
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2170
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getUserInputDialingNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_69
.end method

.method static getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const v8, 0x7f0e0007

    const v7, 0x7f0e0006

    const v6, 0x7f0e0004

    const/4 v5, 0x1

    .line 4730
    .line 4731
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4732
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4733
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4735
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 4741
    :goto_1d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_16c

    .line 4742
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4743
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4744
    const-string v0, "getCallerName : conferenceCall"

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 4832
    :goto_39
    return-object v3

    .line 4737
    :cond_3a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    if-nez v0, :cond_16f

    move-object v0, v1

    .line 4738
    goto :goto_1d

    .line 4748
    :cond_48
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4749
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a6

    .line 4751
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_a0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 4754
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4755
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 4757
    :cond_7b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4759
    :cond_7f
    if-nez v1, :cond_86

    .line 4760
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v1, v0

    .line 4780
    :cond_86
    :goto_86
    if-eqz v1, :cond_16c

    .line 4781
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_10f

    .line 4782
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4784
    if-nez v0, :cond_ac

    .line 4785
    const-string v0, "PhoneUtils"

    const-string v1, "getCallerName : callerInfo is null"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_39

    .line 4763
    :cond_a0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v1, v0

    goto :goto_86

    .line 4766
    :cond_a6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v1, v0

    goto :goto_86

    .line 4788
    :cond_ac
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 4789
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 4831
    :cond_b6
    :goto_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v3, v0

    .line 4832
    goto/16 :goto_39

    .line 4790
    :cond_cf
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_da

    .line 4791
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b6

    .line 4793
    :cond_da
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 4794
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ed

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_ed

    .line 4796
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_b6

    .line 4798
    :cond_ed
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4799
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_102

    .line 4800
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 4801
    :cond_102
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_b6

    .line 4802
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 4807
    :cond_10f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 4808
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 4810
    :cond_11e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 4811
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_148

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v0, :cond_148

    .line 4813
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4814
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 4815
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 4816
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b6

    .line 4820
    :cond_148
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4821
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v1, :cond_15e

    .line 4822
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b6

    .line 4823
    :cond_15e
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v2, v1, :cond_b6

    .line 4824
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b6

    :cond_16c
    move-object v0, v3

    goto/16 :goto_b6

    :cond_16f
    move-object v0, v2

    goto/16 :goto_1d
.end method

.method static getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4838
    if-nez p0, :cond_5

    move-object v0, v2

    .line 4865
    :cond_4
    :goto_4
    return-object v0

    .line 4840
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4841
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4842
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4843
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 4845
    if-nez v0, :cond_33

    .line 4846
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4847
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 4848
    if-nez v0, :cond_33

    .line 4849
    const-string v0, "PhoneUtils"

    const-string v1, "getCallerNumber : callerInfo is null"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v2

    .line 4850
    goto :goto_4

    .line 4853
    :cond_33
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 4854
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_46

    .line 4856
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_4

    .line 4858
    :cond_46
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0004

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4859
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_69

    .line 4860
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4861
    :cond_69
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_4

    .line 4862
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCompactNameFromCallerInfo: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2703
    const/4 v0, 0x0

    .line 2704
    if-eqz p0, :cond_29

    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2708
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2716
    :cond_29
    :goto_29
    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2720
    :cond_31
    if-eqz p0, :cond_5a

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_5a

    .line 2721
    const v0, 0x7f0e0006

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2728
    :cond_40
    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: compactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2729
    return-object v0

    .line 2712
    :cond_57
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_29

    .line 2722
    :cond_5a
    if-eqz p0, :cond_6a

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v1, :cond_6a

    .line 2723
    const v0, 0x7f0e0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 2725
    :cond_6a
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitialNumber(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2048
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2049
    const/4 v0, 0x0

    .line 2065
    :goto_21
    return-object v0

    .line 2055
    :cond_22
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2056
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> got EXTRA_ACTUAL_NUMBER_TO_DIAL; returning \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_21

    .line 2065
    :cond_51
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method public static getLastDialedNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 5990
    sget-object v0, Lcom/android/phone/PhoneUtils;->dialedNumber:Ljava/lang/String;

    return-object v0
.end method

.method static getMute()Z
    .registers 3

    .prologue
    .line 3186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3188
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3190
    if-nez v1, :cond_17

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3196
    :cond_17
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3198
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 3200
    :goto_23
    return v0

    :cond_24
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v0

    goto :goto_23
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 2093
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2094
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_8

    .line 2095
    const/4 v0, 0x0

    .line 2116
    :cond_7
    :goto_7
    return-object v0

    .line 2097
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2101
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2102
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2108
    :cond_19
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2112
    .local v0, number:Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_2d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2114
    :cond_2d
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3
.end method

.method static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5340
    .line 5341
    const-string v2, ""

    .line 5342
    const-string v2, ""

    .line 5343
    const/4 v2, 0x2

    new-array v8, v2, [B

    .line 5344
    const/4 v2, 0x4

    new-array v9, v2, [B

    .line 5345
    const/16 v2, 0x20

    new-array v10, v2, [B

    .line 5346
    const/4 v5, 0x0

    .line 5356
    const/4 v4, 0x0

    .line 5358
    sget v2, Lcom/android/phone/PhoneUtils;->LANGUAGE_ENGLISH:I

    .line 5359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number_region_activation_preference"

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 5362
    if-nez v2, :cond_39

    .line 5364
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiJian number_region_activation_preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    const/4 v2, 0x0

    .line 5618
    :cond_38
    :goto_38
    return-object v2

    .line 5369
    :cond_39
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context.getResources().getConfiguration().locale: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5372
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locale.CHINA: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_182

    .line 5376
    sget v2, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    .line 5377
    const-string v3, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale.CHINA currLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    :goto_a2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 5393
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_1e0

    .line 5396
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x33

    if-ge v6, v7, :cond_1d0

    .line 5398
    const/4 v6, 0x3

    if-lt v3, v6, :cond_1cd

    .line 5399
    const/4 v3, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5409
    :goto_c7
    const/4 v6, 0x0

    move v7, v6

    move-object v6, v3

    .line 5420
    :goto_ca
    :try_start_ca
    new-instance v3, Ljava/io/File;

    sget-object v11, Lcom/android/phone/PhoneUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5421
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f3

    .line 5422
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/phone/PhoneUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v12, "r"

    invoke-direct {v3, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_ca .. :try_end_e0} :catchall_3cc

    move-object v4, v3

    .line 5427
    :goto_e1
    const/4 v3, 0x0

    const/4 v11, 0x4

    :try_start_e3
    invoke-virtual {v4, v9, v3, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5428
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    .line 5429
    const/4 v3, 0x0

    const/16 v11, 0x20

    invoke-virtual {v4, v10, v3, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5430
    new-instance v3, Ljava/lang/String;

    const-string v11, "UTF-16LE"

    invoke-direct {v3, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5432
    const/4 v3, 0x0

    const/16 v11, 0x20

    invoke-virtual {v4, v10, v3, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5433
    new-instance v3, Ljava/lang/String;

    const-string v11, "UTF-16LE"

    invoke-direct {v3, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5435
    const/4 v3, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v3, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5436
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v10

    .line 5437
    const/4 v3, 0x0

    const/4 v12, 0x4

    invoke-virtual {v4, v9, v3, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5438
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v12

    .line 5439
    const/4 v3, 0x0

    const/4 v14, 0x4

    invoke-virtual {v4, v9, v3, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5440
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v14

    .line 5441
    const/4 v3, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v4, v9, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5442
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v16

    .line 5464
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v18

    .line 5465
    sget v3, Lcom/android/phone/PhoneUtils;->titleSeekCount:I

    mul-int/lit8 v3, v3, 0x4

    int-to-long v0, v3

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5468
    sget v3, Lcom/android/phone/PhoneUtils;->provinceSize:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    mul-long v18, v18, v10

    move-wide/from16 v0, v18

    long-to-int v3, v0

    new-array v3, v3, [B

    .line 5469
    const/4 v9, 0x0

    sget v18, Lcom/android/phone/PhoneUtils;->provinceSize:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v10, v10, v18

    long-to-int v10, v10

    invoke-virtual {v4, v3, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5472
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5473
    if-nez v7, :cond_2bc

    .line 5475
    sget v7, Lcom/android/phone/PhoneUtils;->telSize:I

    int-to-long v7, v7

    mul-long/2addr v7, v12

    long-to-int v7, v7

    new-array v7, v7, [B

    .line 5476
    const/4 v8, 0x0

    sget v9, Lcom/android/phone/PhoneUtils;->telSize:I

    int-to-long v9, v9

    mul-long/2addr v9, v12

    long-to-int v9, v9

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5479
    long-to-int v8, v12

    invoke-static {v7, v6, v8}, Lcom/android/phone/PhoneUtils;->teleBinarySearch([BII)I

    move-result v6

    .line 5481
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1ff

    .line 5483
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_177
    .catchall {:try_start_e3 .. :try_end_177} :catchall_3df

    .line 5484
    const/4 v2, 0x0

    .line 5601
    if-eqz v4, :cond_38

    :try_start_17a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17d} :catch_17f

    goto/16 :goto_38

    .line 5602
    :catch_17f
    move-exception v3

    goto/16 :goto_38

    .line 5379
    :cond_182
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b1

    .line 5382
    sget v2, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    .line 5383
    const-string v3, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale.CHINA currLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 5387
    :cond_1b1
    sget v2, Lcom/android/phone/PhoneUtils;->LANGUAGE_ENGLISH:I

    .line 5388
    const-string v3, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale.CHINA currLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 5401
    :cond_1cd
    const/4 v2, 0x0

    goto/16 :goto_38

    .line 5404
    :cond_1d0
    const/4 v6, 0x4

    if-lt v3, v6, :cond_1dd

    .line 5405
    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c7

    .line 5407
    :cond_1dd
    const/4 v2, 0x0

    goto/16 :goto_38

    .line 5412
    :cond_1e0
    const/4 v6, 0x7

    if-lt v3, v6, :cond_1f0

    .line 5413
    const/4 v3, 0x0

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5416
    const/4 v6, 0x1

    move v7, v6

    move-object v6, v3

    goto/16 :goto_ca

    .line 5415
    :cond_1f0
    const/4 v2, 0x0

    goto/16 :goto_38

    .line 5424
    :cond_1f3
    :try_start_1f3
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/phone/PhoneUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v12, "r"

    invoke-direct {v3, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fc
    .catchall {:try_start_1f3 .. :try_end_1fc} :catchall_3cc

    move-object v4, v3

    goto/16 :goto_e1

    .line 5488
    :cond_1ff
    :try_start_1ff
    sget v8, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v8, v6

    aget-byte v8, v7, v8

    .line 5490
    if-gez v8, :cond_214

    .line 5492
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_209
    .catchall {:try_start_1ff .. :try_end_209} :catchall_3df

    .line 5493
    const/4 v2, 0x0

    .line 5601
    if-eqz v4, :cond_38

    :try_start_20c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_211

    goto/16 :goto_38

    .line 5602
    :catch_211
    move-exception v3

    goto/16 :goto_38

    .line 5495
    :cond_214
    :try_start_214
    sget v9, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    if-ne v2, v9, :cond_279

    .line 5497
    if-eqz v8, :cond_3ee

    .line 5499
    sget v2, Lcom/android/phone/PhoneUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 5502
    :goto_225
    sget v2, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_22f
    .catchall {:try_start_214 .. :try_end_22f} :catchall_3df

    move-result-object v2

    .line 5601
    :goto_230
    if-eqz v4, :cond_235

    :try_start_232
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_235
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_235} :catch_3da

    .line 5610
    :cond_235
    :goto_235
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strProvince: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "strCity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "End"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    if-eqz v4, :cond_262

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 5613
    :cond_262
    if-eqz v3, :cond_3d4

    if-eqz v2, :cond_3d4

    .line 5614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_38

    .line 5504
    :cond_279
    :try_start_279
    sget v9, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    if-ne v2, v9, :cond_29e

    .line 5506
    if-eqz v8, :cond_3eb

    .line 5508
    sget v2, Lcom/android/phone/PhoneUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 5511
    :goto_28e
    sget v2, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x40

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_230

    .line 5515
    :cond_29e
    if-eqz v8, :cond_3e8

    .line 5517
    sget v2, Lcom/android/phone/PhoneUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 5520
    :goto_2ad
    sget v2, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x40

    invoke-static {v7, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_230

    .line 5526
    :cond_2bc
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    .line 5527
    sget v7, Lcom/android/phone/PhoneUtils;->telSize:I

    int-to-long v0, v7

    move-wide/from16 v18, v0

    mul-long v11, v18, v12

    add-long/2addr v9, v11

    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5529
    sget v7, Lcom/android/phone/PhoneUtils;->mobileSize:I

    int-to-long v9, v7

    mul-long/2addr v9, v14

    long-to-int v7, v9

    new-array v7, v7, [B

    .line 5530
    const/4 v9, 0x0

    sget v10, Lcom/android/phone/PhoneUtils;->mobileSize:I

    int-to-long v10, v10

    mul-long/2addr v10, v14

    long-to-int v10, v10

    invoke-virtual {v4, v7, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5534
    sget v9, Lcom/android/phone/PhoneUtils;->headerSize:I

    int-to-long v9, v9

    mul-long v9, v9, v16

    long-to-int v9, v9

    new-array v9, v9, [B

    .line 5535
    const/4 v10, 0x0

    sget v11, Lcom/android/phone/PhoneUtils;->headerSize:I

    int-to-long v11, v11

    mul-long v11, v11, v16

    long-to-int v11, v11

    invoke-virtual {v4, v9, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5537
    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 5538
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 5539
    move-wide/from16 v0, v16

    long-to-int v11, v0

    invoke-static {v9, v10, v11}, Lcom/android/phone/PhoneUtils;->mobileHeaderSearch([BII)I

    move-result v9

    .line 5541
    if-gez v9, :cond_310

    .line 5543
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_305
    .catchall {:try_start_279 .. :try_end_305} :catchall_3df

    .line 5544
    const/4 v2, 0x0

    .line 5601
    if-eqz v4, :cond_38

    :try_start_308
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_30b} :catch_30d

    goto/16 :goto_38

    .line 5602
    :catch_30d
    move-exception v3

    goto/16 :goto_38

    .line 5546
    :cond_310
    const/16 v10, 0x4e20

    :try_start_312
    new-array v10, v10, [B

    .line 5548
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    .line 5549
    mul-int/lit16 v9, v9, 0x2710

    mul-int/lit8 v9, v9, 0x2

    int-to-long v13, v9

    add-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5551
    const/4 v9, 0x0

    const/16 v11, 0x4e20

    invoke-virtual {v4, v10, v9, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5552
    rem-int/lit16 v6, v6, 0x2710

    .line 5553
    const/4 v9, 0x0

    mul-int/lit8 v11, v6, 0x2

    aget-byte v11, v10, v11

    aput-byte v11, v8, v9

    .line 5554
    const/4 v9, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v10, v6

    aput-byte v6, v8, v9

    .line 5555
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->readUnsignedShort([B)I

    move-result v6

    .line 5556
    if-gtz v6, :cond_34d

    .line 5558
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_342
    .catchall {:try_start_312 .. :try_end_342} :catchall_3df

    .line 5559
    const/4 v2, 0x0

    .line 5601
    if-eqz v4, :cond_38

    :try_start_345
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_348
    .catch Ljava/io/IOException; {:try_start_345 .. :try_end_348} :catch_34a

    goto/16 :goto_38

    .line 5602
    :catch_34a
    move-exception v3

    goto/16 :goto_38

    .line 5562
    :cond_34d
    :try_start_34d
    sget v8, Lcom/android/phone/PhoneUtils;->mobileSize:I

    add-int/lit8 v9, v6, -0x1

    mul-int/2addr v8, v9

    aget-byte v8, v7, v8

    .line 5564
    if-gez v8, :cond_364

    .line 5566
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_359
    .catchall {:try_start_34d .. :try_end_359} :catchall_3df

    .line 5567
    const/4 v2, 0x0

    .line 5601
    if-eqz v4, :cond_38

    :try_start_35c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_35f
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_35f} :catch_361

    goto/16 :goto_38

    .line 5602
    :catch_361
    move-exception v3

    goto/16 :goto_38

    .line 5569
    :cond_364
    :try_start_364
    sget v9, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    if-ne v2, v9, :cond_384

    .line 5571
    if-eqz v8, :cond_3e6

    .line 5573
    sget v2, Lcom/android/phone/PhoneUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 5576
    :goto_375
    sget v2, Lcom/android/phone/PhoneUtils;->mobileSize:I

    add-int/lit8 v5, v6, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_230

    .line 5578
    :cond_384
    sget v9, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    if-ne v2, v9, :cond_3ac

    .line 5580
    if-eqz v8, :cond_3e4

    .line 5582
    sget v2, Lcom/android/phone/PhoneUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 5585
    :goto_399
    sget v2, Lcom/android/phone/PhoneUtils;->mobileSize:I

    add-int/lit8 v5, v6, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x40

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_230

    .line 5589
    :cond_3ac
    if-eqz v8, :cond_3e2

    .line 5591
    sget v2, Lcom/android/phone/PhoneUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 5594
    :goto_3bb
    sget v2, Lcom/android/phone/PhoneUtils;->mobileSize:I

    add-int/lit8 v5, v6, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x40

    invoke-static {v7, v2, v5}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_3c9
    .catchall {:try_start_364 .. :try_end_3c9} :catchall_3df

    move-result-object v2

    goto/16 :goto_230

    .line 5600
    :catchall_3cc
    move-exception v2

    move-object v3, v4

    .line 5601
    :goto_3ce
    if-eqz v3, :cond_3d3

    :try_start_3d0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d3
    .catch Ljava/io/IOException; {:try_start_3d0 .. :try_end_3d3} :catch_3dd

    .line 5605
    :cond_3d3
    :goto_3d3
    throw v2

    .line 5615
    :cond_3d4
    if-nez v2, :cond_38

    .line 5618
    const-string v2, ""

    goto/16 :goto_38

    .line 5602
    :catch_3da
    move-exception v5

    goto/16 :goto_235

    :catch_3dd
    move-exception v3

    goto :goto_3d3

    .line 5600
    :catchall_3df
    move-exception v2

    move-object v3, v4

    goto :goto_3ce

    :cond_3e2
    move-object v3, v5

    goto :goto_3bb

    :cond_3e4
    move-object v3, v5

    goto :goto_399

    :cond_3e6
    move-object v3, v5

    goto :goto_375

    :cond_3e8
    move-object v3, v5

    goto/16 :goto_2ad

    :cond_3eb
    move-object v3, v5

    goto/16 :goto_28e

    :cond_3ee
    move-object v3, v5

    goto/16 :goto_225
.end method

.method public static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3893
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3894
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_13

    .line 3895
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3901
    :cond_12
    :goto_12
    return-object v0

    .line 3896
    :cond_13
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_1f

    .line 3897
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 3898
    :cond_1f
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p1, v1, :cond_12

    .line 3899
    const v0, 0x7f0e057c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3
    .parameter "intent"

    .prologue
    .line 3687
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3688
    .local v0, uri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_d
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3671
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3672
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3675
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_a
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v3

    .line 3677
    :goto_e
    return-object v3

    .line 3676
    :catch_f
    move-exception v0

    .line 3677
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_e
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3652
    const-string v4, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3653
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3656
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_b
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3658
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v4

    .line 3660
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_13
    return-object v4

    .line 3659
    :catch_14
    move-exception v0

    .line 3660
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_13
.end method

.method public static getSimState()I
    .registers 7

    .prologue
    .line 6050
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6051
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 6052
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 6053
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 6054
    .local v2, simState:I
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6056
    return v2
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3826
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 3827
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    move-object v1, v0

    .line 3828
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    .line 3829
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- pickPhoneBasedOnNumber:found SipPhone! obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3837
    :goto_4c
    return-object v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method static hadCallerImage()Z
    .registers 3

    .prologue
    .line 2232
    const/4 v0, 0x0

    .line 2233
    .local v0, result:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1e

    .line 2234
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1e

    .line 2236
    :cond_1d
    const/4 v0, 0x1

    .line 2240
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hadCallerImage result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2241
    return v0
.end method

.method static handleEndCallTunePlayCompleted(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mediaPlayer"

    .prologue
    .line 4396
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4397
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 4398
    :cond_9
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 4400
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 4401
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->kIsAudioResetDone:Z

    .line 4402
    return-void
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHeadsetHook()..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3253
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 3257
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_37

    .line 3337
    :goto_36
    return v2

    .line 3269
    :cond_37
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_76

    move v0, v1

    .line 3270
    :goto_42
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_78

    move v3, v1

    .line 3271
    :goto_4d
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_58

    move v2, v1

    .line 3273
    :cond_58
    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_c3

    .line 3278
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3279
    const/4 v5, 0x2

    if-ne v0, v5, :cond_7a

    .line 3280
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :goto_74
    move v2, v1

    .line 3337
    goto :goto_36

    :cond_76
    move v0, v2

    .line 3269
    goto :goto_42

    :cond_78
    move v3, v2

    .line 3270
    goto :goto_4d

    .line 3281
    :cond_7a
    if-eq v0, v1, :cond_7f

    const/4 v5, 0x3

    if-ne v0, v5, :cond_9f

    .line 3283
    :cond_7f
    if-eqz v3, :cond_92

    if-eqz v2, :cond_92

    .line 3284
    const-string v0, "handleHeadsetHook: ringing (both lines in use) ==> answer!"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3285
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_74

    .line 3287
    :cond_92
    const-string v0, "handleHeadsetHook: ringing ==> answer!"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3290
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_74

    .line 3293
    :cond_9f
    const/4 v2, 0x4

    if-ne v0, v2, :cond_aa

    .line 3294
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_74

    .line 3298
    :cond_aa
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3301
    :cond_c3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_74
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 795
    if-eqz p0, :cond_5

    .line 796
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_5} :catch_6

    .line 801
    :cond_5
    :goto_5
    return-void

    .line 798
    :catch_6
    move-exception v0

    .line 799
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_5
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .registers 7
    .parameter "call"

    .prologue
    const/4 v2, 0x1

    .line 759
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 761
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_23

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 763
    const-string v3, "- hangup(Call): hangupForegroundResumeBackground..."

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 764
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 774
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_22
    return v2

    .line 766
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_23
    const-string v3, "- hangup(Call): regular hangup()..."

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 767
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2c
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_22

    .line 770
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_2d
    move-exception v1

    .line 771
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    .line 774
    const/4 v2, 0x0

    goto :goto_22
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 613
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_34

    .line 614
    const-string v0, "hangup(): hanging up ringing call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 615
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 630
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> hungup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 632
    return v0

    .line 616
    :cond_34
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_44

    .line 617
    const-string v0, "hangup(): hanging up foreground call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 618
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_1c

    .line 619
    :cond_44
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_54

    .line 620
    const-string v0, "hangup(): hanging up background call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 621
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_1c

    .line 628
    :cond_54
    const-string v1, "hangup(): no active call to hang up"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .registers 3
    .parameter

    .prologue
    .line 714
    const-string v0, "hangup active call"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 715
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .registers 3
    .parameter

    .prologue
    .line 719
    const-string v0, "hangup holding call"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 720
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 729
    .line 731
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 732
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 735
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 736
    const-string v3, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 737
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 741
    :goto_18
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 742
    const-string v3, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 743
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 746
    :goto_27
    if-nez v0, :cond_2b

    if-eqz v2, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1

    :cond_2d
    move v2, v1

    goto :goto_27

    :cond_2f
    move v0, v1

    goto :goto_18
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 636
    const-string v1, "hangup ringing call"

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 638
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->stopRing()V

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 642
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2b

    .line 644
    const-string v0, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 645
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 674
    :goto_2a
    return v0

    .line 646
    :cond_2b
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4b

    .line 653
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 657
    const-string v1, "hangupRingingCall(): CDMA-specific call-waiting hangup"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 659
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    goto :goto_2a

    .line 664
    :cond_41
    const-string v0, "hangupRingingCall(): call-waiting call: hangup()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 665
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_2a

    .line 673
    :cond_4b
    const-string v0, "PhoneUtils"

    const-string v1, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .registers 4
    .parameter "call"

    .prologue
    .line 3363
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3364
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3365
    const/4 v2, 0x1

    .line 3368
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 3348
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 3615
    if-nez p0, :cond_4

    .line 3621
    :cond_3
    :goto_3
    return v2

    .line 3618
    :cond_4
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3619
    .local v1, name:Ljava/lang/String;
    const-string v3, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3621
    .local v0, gatewayUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3
.end method

.method static hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    .line 4601
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4602
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4603
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4605
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-ne v4, v3, :cond_16

    .line 4615
    :cond_15
    :goto_15
    return v3

    .line 4608
    :cond_16
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eq v4, v3, :cond_15

    .line 4611
    :cond_1e
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eq v4, v3, :cond_15

    .line 4615
    :cond_26
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public static hideBargeInNotification()V
    .registers 2

    .prologue
    .line 6111
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 6112
    const-string v0, "Not supported: BargeIn"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 6120
    :goto_e
    return-void

    .line 6116
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6117
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6119
    const/16 v1, 0x7001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_e
.end method

.method static hideMmiDialog()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 1963
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1964
    const-string v0, "PhoneUtils"

    const-string v1, "Hide Mmi Dialog"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1965
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 1966
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 1968
    :cond_1b
    return-void
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter

    .prologue
    .line 361
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v0, :cond_c

    .line 362
    new-instance v0, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 366
    :cond_c
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 371
    const-string v0, "Extended NW bindService IExtendedNetworkService"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method static isAnyKeyMode(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4331
    const-string v2, "anykey_mode"

    .line 4333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anykey_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4334
    if-ge v2, v1, :cond_11

    .line 4338
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method static isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4058
    const-string v0, "com.android.phone.callsettings"

    .line 4059
    const-string v0, "reject_num"

    .line 4060
    const-string v0, "reject_videocall_num"

    .line 4063
    const-string v0, "unknown_mode"

    .line 4064
    const-string v0, "unknown_videocall_mode"

    .line 4067
    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4069
    const-string v0, "autoreject_mode"

    .line 4071
    const-string v0, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 4073
    const-string v0, "autoreject_videocall_mode"

    .line 4084
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4085
    const-string v0, "Emergency Call Back mode. all number should be allowed"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4190
    :cond_32
    :goto_32
    return v3

    .line 4089
    :cond_33
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4090
    const-string v0, "autoreject_mode_enable_sharedpref"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4093
    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 4094
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_videocall_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4096
    const-string v0, "autoreject_videocall_mode_enable_sharedpref"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4103
    :goto_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAutoRejectCall mode : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " mIsrejectMode : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4105
    if-eqz v0, :cond_32

    .line 4109
    packed-switch v1, :pswitch_data_14a

    move v0, v3

    .line 4189
    :goto_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoRejectCall : Is reject number? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v3, v0

    .line 4190
    goto :goto_32

    .line 4099
    :cond_9f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_61

    :pswitch_aa
    move v0, v3

    .line 4112
    goto :goto_87

    :pswitch_ac
    move v0, v4

    .line 4116
    goto :goto_87

    .line 4121
    :pswitch_ae
    const/4 v0, 0x0

    .line 4122
    if-eqz p1, :cond_b5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4124
    :cond_b5
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 4125
    if-eqz p1, :cond_e2

    .line 4126
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 4127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 4128
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_d6

    const v2, 0x7f0e01fb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 4130
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 4132
    :cond_d6
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v2

    .line 4133
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v7, :cond_e2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_e2

    move v1, v2

    .line 4139
    :cond_e2
    const-string v2, "separate_call_reject"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10d

    if-eqz p1, :cond_10d

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 4140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "unknown_videocall_mode"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4148
    :goto_100
    if-lez v2, :cond_118

    .line 4150
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v7, :cond_10a

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v7, :cond_118

    :cond_10a
    move v0, v4

    .line 4153
    goto/16 :goto_87

    .line 4144
    :cond_10d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "unknown_mode"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_100

    .line 4168
    :cond_118
    if-lez v2, :cond_11f

    if-nez v0, :cond_11f

    move v0, v4

    .line 4170
    goto/16 :goto_87

    .line 4172
    :cond_11f
    if-nez v0, :cond_129

    .line 4173
    const-string v0, "isAutoRejectCall : phonenumber is null "

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v3

    .line 4175
    goto/16 :goto_87

    .line 4178
    :cond_129
    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_143

    if-eqz p1, :cond_143

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 4179
    invoke-static {p0, v0, v6}, Lcom/android/phone/PhoneUtils;->isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto/16 :goto_87

    .line 4181
    :cond_143
    invoke-static {p0, v0, v5}, Lcom/android/phone/PhoneUtils;->isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto/16 :goto_87

    .line 4109
    nop

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_ac
        :pswitch_ae
    .end packed-switch
.end method

.method private static isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 23
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "contentURI"

    .prologue
    .line 4262
    const-string v10, "reject_number"

    .line 4263
    .local v10, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v8, "reject_checked"

    .line 4264
    .local v8, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v9, "reject_match"

    .line 4266
    .local v9, AUTOREJECT_MATCH:Ljava/lang/String;
    const/4 v12, 0x0

    .line 4267
    .local v12, MATCH_EQUAL:I
    const/4 v14, 0x1

    .line 4268
    .local v14, MATCH_STARTS_WITH:I
    const/4 v11, 0x2

    .line 4269
    .local v11, MATCH_ENDS_WITH:I
    const/4 v13, 0x3

    .line 4271
    .local v13, MATCH_INCLUDE:I
    const/16 v16, 0x0

    .line 4273
    .local v16, isRejectNumber:Z
    const-string v5, "reject_checked=1"

    .line 4276
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4279
    .local v15, cur:Landroid/database/Cursor;
    if-nez v15, :cond_28

    .line 4280
    const-string v2, "isAutoRejectMachedNumber : cursor is null"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 4281
    const/16 v16, 0x0

    move/from16 v17, v16

    .line 4324
    .end local v16           #isRejectNumber:Z
    .local v17, isRejectNumber:I
    :goto_27
    return v17

    .line 4284
    .end local v17           #isRejectNumber:I
    .restart local v16       #isRejectNumber:Z
    :cond_28
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 4286
    :cond_2e
    const-string v2, "reject_number"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4288
    .local v19, rejectNumber:Ljava/lang/String;
    const-string v2, "reject_match"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 4290
    .local v18, matchCriteria:I
    packed-switch v18, :pswitch_data_ec

    .line 4319
    :cond_45
    :goto_45
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_50

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 4321
    .end local v18           #matchCriteria:I
    .end local v19           #rejectNumber:Ljava/lang/String;
    :cond_50
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4322
    const/4 v15, 0x0

    move/from16 v17, v16

    .line 4324
    .restart local v17       #isRejectNumber:I
    goto :goto_27

    .line 4293
    .end local v17           #isRejectNumber:I
    .restart local v18       #matchCriteria:I
    .restart local v19       #rejectNumber:Ljava/lang/String;
    :pswitch_57
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectMachedNumber : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4295
    const/16 v16, 0x1

    goto :goto_45

    .line 4299
    :pswitch_7c
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectMachedNumber : MATCH_STARTS_WITH, rejectNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4302
    const/16 v16, 0x1

    goto :goto_45

    .line 4306
    :pswitch_a1
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectMachedNumber : MATCH_ENDS_WITH, rejectNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4309
    const/16 v16, 0x1

    goto :goto_45

    .line 4313
    :pswitch_c6
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectMachedNumber : MATCH_INCLUDE, rejectNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4315
    const/16 v16, 0x1

    goto/16 :goto_45

    .line 4290
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_57
        :pswitch_7c
        :pswitch_a1
        :pswitch_c6
    .end packed-switch
.end method

.method public static isAutoRejectOutgoingCall(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4209
    const-string v2, "com.android.phone.callsettings"

    .line 4210
    const-string v2, "reject_outgoingcall_num"

    .line 4212
    const-string v2, "content://com.android.phone.callsettings/reject_outgoingcall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4221
    if-nez p1, :cond_14

    .line 4222
    const-string v1, "isAutoRejectOutgoingCall : phonenumber is null "

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4258
    :cond_13
    :goto_13
    return v0

    .line 4226
    :cond_14
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4227
    const-string v4, "autoreject_outgoingcall_mode_enable_sharedpref"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4231
    if-eqz v3, :cond_13

    .line 4235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoreject_outgoingcall_mode"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4240
    packed-switch v3, :pswitch_data_4c

    .line 4257
    :goto_2e
    :pswitch_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectOutgoingCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_13

    :pswitch_45
    move v0, v1

    .line 4247
    goto :goto_2e

    .line 4250
    :pswitch_47
    invoke-static {p0, p1, v2}, Lcom/android/phone/PhoneUtils;->isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_2e

    .line 4240
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_45
        :pswitch_47
    .end packed-switch
.end method

.method static isCallMode(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 5649
    const-string v6, "com.sec.android.app.firewall"

    .line 5650
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5651
    .local v1, MODE_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5652
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 5653
    .local v8, mode:I
    if-eqz v7, :cond_3d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5654
    const-string v0, "vip_mode"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 5655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRejectCallMode() => mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5657
    :cond_3d
    if-eqz v7, :cond_42

    .line 5658
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5659
    :cond_42
    return v8
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2754
    const-string v2, "support_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2786
    :cond_a
    :goto_a
    return v0

    .line 2757
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 2758
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2759
    const/4 v4, 0x2

    if-ne v3, v4, :cond_48

    .line 2760
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 2762
    const-string v3, "support_lgt_multi_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2763
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_34

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-eq v3, v4, :cond_40

    :cond_34
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v2, v3, :cond_a

    :cond_40
    move v0, v1

    .line 2769
    goto :goto_a

    .line 2771
    :cond_42
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_a

    move v0, v1

    .line 2772
    goto :goto_a

    .line 2777
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 2778
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_a

    move v0, v1

    .line 2782
    goto :goto_a
.end method

.method public static isEncryptionMode()Z
    .registers 3

    .prologue
    .line 5995
    const/4 v0, 0x0

    .line 5996
    const-string v1, "trigger_restart_min_framework"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "1"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5998
    :cond_1d
    const/4 v0, 0x1

    .line 6000
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEncryptionMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 6002
    return v0
.end method

.method static isExtraVolOn(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3009
    const-string v2, "extra_volume"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3017
    :cond_a
    :goto_a
    return v0

    .line 3013
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExtraVolOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/PhoneUtils;->sCurrentExtraVol:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3014
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->sCurrentExtraVol:Z

    if-eqz v2, :cond_a

    move v0, v1

    .line 3015
    goto :goto_a
.end method

.method public static isFactoryMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6007
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6015
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1a

    .line 6016
    const-string v2, "PhoneUtils"

    const-string v3, "Factory mode is enabled by Case #1"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 6022
    :cond_1a
    if-nez v2, :cond_74

    .line 6023
    const-string v3, "999999999999999"

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 6024
    const-string v0, "PhoneUtils"

    const-string v2, "Factory mode is enabled by Case #2"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 6030
    :goto_3e
    if-nez v0, :cond_5f

    .line 6032
    :try_start_40
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4d} :catch_60

    move-result-object v2

    .line 6038
    :goto_4e
    if-eqz v2, :cond_6b

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 6039
    const-string v1, "PhoneUtils"

    const-string v2, "Not factory mode"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    :cond_5f
    :goto_5f
    return v0

    .line 6033
    :catch_60
    move-exception v2

    .line 6034
    const-string v2, "OFF"

    .line 6035
    const-string v3, "PhoneUtils"

    const-string v4, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 6041
    :cond_6b
    const-string v0, "PhoneUtils"

    const-string v2, "Factory mode is enabled by Case #3"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 6042
    goto :goto_5f

    :cond_74
    move v0, v2

    goto :goto_3e
.end method

.method static isMultiCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter "cm"

    .prologue
    const/4 v3, 0x0

    .line 2820
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2821
    .local v2, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2822
    .local v1, foreCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2824
    .local v0, backCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2829
    :cond_17
    :goto_17
    return v3

    .line 2826
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_17

    .line 2827
    const/4 v3, 0x1

    goto :goto_17
.end method

.method static isNoiseSuppressionOn(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3088
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3099
    :cond_8
    :goto_8
    return v2

    .line 3092
    :cond_9
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3093
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v4, "dualmic_enabled"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3095
    .local v1, noiseSuppression:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoiseSuppressionOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3096
    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    .line 3097
    goto :goto_8
.end method

.method private static isNumberNull(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 5738
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 3786
    if-eqz p0, :cond_17

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3792
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3794
    .local v0, ecmMode:Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 3795
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3798
    .end local v0           #ecmMode:Ljava/lang/String;
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .registers 2
    .parameter "state"

    .prologue
    .line 3845
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static isRejectAllCalls(Landroid/content/Context;)I
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5662
    const-string v0, "com.sec.android.app.firewall"

    .line 5663
    const-string v0, "content://com.sec.android.app.firewall/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5664
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5665
    const/4 v0, -0x1

    .line 5667
    if-eqz v1, :cond_3d

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 5668
    const-string v0, "black_call"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRejectAllCallsMode() => isRejectAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5671
    :cond_3d
    if-eqz v1, :cond_42

    .line 5672
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5673
    :cond_42
    return v0
.end method

.method static isRejectAllCalls2(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 5677
    const-string v0, "isRejectCalls"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5678
    const-string v6, "com.sec.android.app.firewall"

    .line 5679
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5680
    .local v1, MODE_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5681
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 5683
    .local v8, isRejectAll:I
    if-eqz v7, :cond_42

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 5684
    const-string v0, "white_call"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 5685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRejectAllCallsMode() => isRejectAll: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5687
    :cond_42
    if-eqz v7, :cond_47

    .line 5688
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5689
    :cond_47
    return v8
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 3725
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3733
    :cond_7
    :goto_7
    return v0

    .line 3728
    :cond_8
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3729
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3732
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3733
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 2954
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2955
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method static isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 3105
    const/4 v0, 0x0

    .line 3107
    .local v0, result:Z
    const-string v1, "enable_noise_reduction_in_wbamr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3108
    const/4 v0, 0x1

    .line 3111
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedNoiseReductionInWBMode, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3112
    return v0
.end method

.method static isVipCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .registers 19
    .parameter "context"
    .parameter "conn"

    .prologue
    .line 5693
    const-string v6, "com.sec.android.app.firewall"

    .line 5694
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v10, "white_call_num"

    .line 5695
    .local v10, VIP_TABLE:Ljava/lang/String;
    const-string v9, "numbers"

    .line 5696
    .local v9, VIP_NUMBER:Ljava/lang/String;
    const-string v8, "checked"

    .line 5697
    .local v8, VIP_CHECKED:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/white_call_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5698
    .local v1, VIP_CONTENT_URI:Landroid/net/Uri;
    const-string v7, "unknown_mode"

    .line 5700
    .local v7, UNKNOWN_MODE:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v15

    .line 5701
    .local v15, presentation:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "unknown_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 5702
    .local v16, unknownMode:I
    if-lez v16, :cond_2b

    .line 5704
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v15, v0, :cond_29

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v15, v0, :cond_2b

    .line 5706
    :cond_29
    const/4 v0, 0x1

    .line 5734
    :goto_2a
    return v0

    .line 5709
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 5712
    .local v14, phoneNumber:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5713
    .local v12, cur:Landroid/database/Cursor;
    if-nez v12, :cond_44

    .line 5714
    const-string v0, "isVIPCall : cursor is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5715
    const/4 v0, 0x1

    goto :goto_2a

    .line 5718
    :cond_44
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 5720
    :cond_4a
    const-string v0, "numbers"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5722
    .local v11, VipNumber:Ljava/lang/String;
    const-string v0, "checked"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6f

    .line 5723
    const/4 v13, 0x1

    .line 5727
    .local v13, isChecked:Z
    :goto_62
    invoke-static {v11, v14}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-eqz v13, :cond_71

    .line 5728
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5729
    const/4 v0, 0x0

    goto :goto_2a

    .line 5725
    .end local v13           #isChecked:Z
    :cond_6f
    const/4 v13, 0x0

    .restart local v13       #isChecked:Z
    goto :goto_62

    .line 5731
    :cond_71
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 5733
    .end local v11           #VipNumber:Ljava/lang/String;
    .end local v13           #isChecked:Z
    :cond_77
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5734
    const/4 v0, 0x1

    goto :goto_2a
.end method

.method static isVipModeReject(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5872
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 5874
    const/4 v2, -0x1

    .line 5884
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isCallMode(Landroid/content/Context;)I

    move-result v3

    .line 5885
    packed-switch v3, :pswitch_data_b2

    .line 5936
    :cond_12
    :goto_12
    return v0

    .line 5887
    :pswitch_13
    const-string v1, "mode:MODEOFF"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 5890
    :pswitch_19
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRejectAllCalls(Landroid/content/Context;)I

    move-result v2

    .line 5891
    const-string v3, "mode:VIP1"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v3, v1

    .line 5894
    :goto_27
    if-nez v3, :cond_36

    .line 5895
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRejectAllCalls2(Landroid/content/Context;)I

    move-result v2

    .line 5896
    const-string v3, "mode:VIP2"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5899
    :cond_36
    if-ne v2, v1, :cond_50

    .line 5900
    const-string v0, "blocktype: Reject AllCalls"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5901
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_4c

    .line 5902
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    :goto_4a
    move v0, v1

    .line 5906
    goto :goto_12

    .line 5904
    :cond_4c
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_4a

    .line 5908
    :cond_50
    const/4 v3, 0x2

    if-ne v2, v3, :cond_84

    .line 5909
    const-string v3, "blocktype: Reject Only BlackCalls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5910
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/phone/PhoneUtils;->blockCallStrategy(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 5911
    const-string v0, "in BlackList"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5912
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_7b

    .line 5913
    const-string v0, "hangupRingingCall"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5914
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    :goto_79
    move v0, v1

    .line 5919
    goto :goto_12

    .line 5916
    :cond_7b
    const-string v0, "hangup"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5917
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_79

    .line 5922
    :cond_84
    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    .line 5923
    const-string v2, "blocktype: Accept Only WhiteCalls"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5924
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/phone/PhoneUtils;->isVipCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5925
    const-string v0, "in WhiteList"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5926
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_ab

    .line 5927
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    :goto_a8
    move v0, v1

    .line 5931
    goto/16 :goto_12

    .line 5929
    :cond_ab
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_a8

    :pswitch_af
    move v3, v0

    goto/16 :goto_27

    .line 5885
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_19
        :pswitch_af
    .end packed-switch
.end method

.method public static isVoiceCallEq()Z
    .registers 1

    .prologue
    .line 5110
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    return v0
.end method

.method public static isVoiceCallEqEnabled(Landroid/content/Context;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5021
    .line 5023
    const-string v2, "com.sec.hearingadjust"

    .line 5025
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5026
    if-eqz v2, :cond_32

    .line 5027
    const-string v3, "com.sec.hearingadjust"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    :goto_10
    move v1, v0

    .line 5037
    :goto_11
    return v1

    .line 5032
    :catch_12
    move-exception v2

    .line 5033
    const-string v3, "LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_11

    .line 5030
    :catch_30
    move-exception v0

    goto :goto_11

    :cond_32
    move v0, v1

    goto :goto_10
.end method

.method public static isVoipSupported()Z
    .registers 2

    .prologue
    .line 3860
    const-string v0, "disable_sip_call_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3861
    const-string v0, "PhoneUtils"

    const-string v1, "sip not supported in this carrier."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    const/4 v0, 0x0

    .line 3864
    :goto_10
    return v0

    :cond_11
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    goto :goto_10
.end method

.method static isWBMode(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 3116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWBMode, return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->mWB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3117
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mWB:Z

    return v0
.end method

.method static isWebExEnabled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 5017
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 3984
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "message"
    .parameter "always"

    .prologue
    .line 3988
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3989
    return-void
.end method

.method static mergeCalls()V
    .registers 1

    .prologue
    .line 1403
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 1404
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1408
    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    .line 1409
    const-string v0, "mergeCalls(): CDMA..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1411
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_38

    .line 1414
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1421
    const-string v1, "- sending flash..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 1423
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1440
    :cond_38
    :goto_38
    return-void

    .line 1428
    :cond_39
    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    .line 1434
    :try_start_3c
    const-string v0, "mergeCalls(): calling cm.conference()..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_48
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3c .. :try_end_48} :catch_49

    goto :goto_38

    .line 1436
    :catch_49
    move-exception v0

    .line 1437
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeCalls: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method static mobileHeaderSearch([BII)I
    .registers 8
    .parameter "header"
    .parameter "iNum"
    .parameter "count"

    .prologue
    .line 5281
    const/4 v2, 0x0

    .line 5282
    .local v2, i:I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 5283
    .local v1, buffer2:[B
    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_23

    .line 5285
    const/4 v3, 0x0

    sget v4, Lcom/android/phone/PhoneUtils;->headerSize:I

    mul-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 5286
    const/4 v3, 0x1

    sget v4, Lcom/android/phone/PhoneUtils;->headerSize:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 5287
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->readUnsignedShort([B)I

    move-result v0

    .line 5288
    .local v0, areaCode:I
    if-ne v0, p1, :cond_20

    .line 5293
    .end local v0           #areaCode:I
    .end local v2           #i:I
    :goto_1f
    return v2

    .line 5283
    .restart local v0       #areaCode:I
    .restart local v2       #i:I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5293
    .end local v0           #areaCode:I
    :cond_23
    const/4 v2, -0x1

    goto :goto_1f
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0e0004

    .line 3557
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 3601
    :cond_7
    :goto_7
    return-object p2

    .line 3560
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3568
    const v0, 0x7f0e01fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_4f

    .line 3570
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3571
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3579
    :cond_4f
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_5d

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v0, p3, :cond_95

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_95

    .line 3582
    :cond_5d
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    .line 3583
    const/4 v1, -0x1

    if-eq v0, v1, :cond_95

    .line 3585
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_b1

    .line 3586
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3591
    :cond_6f
    :goto_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecialCnap: number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; presentation now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3594
    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3598
    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3587
    :cond_b1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_6f

    .line 3588
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6f
.end method

.method private static notifyMMICompleteThread(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter

    .prologue
    .line 1646
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1651
    new-instance v0, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneUtils$2;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 1656
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "USSDNoti"

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1658
    return-void
.end method

.method private static notifyMMIOperation(Lcom/android/internal/telephony/Phone;)V
    .registers 13
    .parameter "phone"

    .prologue
    const/4 v11, 0x1

    .line 1664
    const/16 v6, 0x18

    .line 1665
    .local v6, type:I
    const/16 v5, 0x1388

    .line 1666
    .local v5, toneLengthMillis:I
    const/16 v7, 0x190

    .line 1668
    .local v7, vibLength:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1670
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    if-ne v8, v11, :cond_46

    .line 1671
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1672
    .local v0, context:Landroid/content/Context;
    const-string v8, "vibrator"

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator;

    .line 1673
    .local v3, mVibrator:Landroid/os/SystemVibrator;
    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 1689
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #mVibrator:Landroid/os/SystemVibrator;
    :cond_29
    :goto_29
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyMMIOperation: mAudioManager.getRingerMode() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1690
    return-void

    .line 1675
    :cond_46
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    if-eqz v8, :cond_29

    .line 1677
    :try_start_4c
    new-instance v4, Landroid/media/ToneGenerator;

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-direct {v4, v8, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_54} :catch_64

    .line 1682
    .local v4, toneGen:Landroid/media/ToneGenerator;
    :goto_54
    if-eqz v4, :cond_29

    .line 1683
    invoke-virtual {v4, v6}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1684
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1685
    invoke-virtual {v4}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1686
    invoke-virtual {v4}, Landroid/media/ToneGenerator;->release()V

    goto :goto_29

    .line 1678
    .end local v4           #toneGen:Landroid/media/ToneGenerator;
    :catch_64
    move-exception v1

    .line 1679
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyMMIOperation: Exception caught while creating ToneGenerator "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1680
    const/4 v4, 0x0

    .restart local v4       #toneGen:Landroid/media/ToneGenerator;
    goto :goto_54
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 13
    .parameter "cm"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3451
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3454
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_12

    move v8, v9

    .line 3511
    :cond_11
    :goto_11
    return v8

    .line 3458
    :cond_12
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3459
    .local v7, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3460
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v10, 0x2

    if-ne v7, v10, :cond_43

    .line 3464
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3465
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v10, "feature_ctc"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 3469
    const-string v10, "thrway_active_disable"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_37

    move v8, v9

    .line 3470
    goto :goto_11

    .line 3472
    :cond_37
    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v10, v11, :cond_11

    move v8, v9

    goto :goto_11

    .line 3474
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_43
    if-eq v7, v8, :cond_48

    const/4 v10, 0x3

    if-ne v7, v10, :cond_a2

    .line 3482
    :cond_48
    const/4 v5, 0x0

    .line 3483
    .local v5, hasRingingCall:Z
    const/4 v3, 0x0

    .line 3484
    .local v3, hasActiveCall:Z
    const/4 v4, 0x0

    .line 3485
    .local v4, hasHoldingCall:Z
    const/4 v0, 0x0

    .line 3487
    .local v0, allLinesTaken:Z
    const-string v10, "feature_ktt"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 3488
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_88

    move v5, v8

    .line 3489
    :goto_5f
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_8a

    move v3, v8

    .line 3490
    :goto_6a
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_8c

    move v4, v8

    .line 3491
    :goto_75
    const/4 v0, 0x0

    .line 3499
    :goto_76
    if-nez v5, :cond_86

    if-nez v0, :cond_86

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    :cond_86
    move v8, v9

    goto :goto_11

    :cond_88
    move v5, v9

    .line 3488
    goto :goto_5f

    :cond_8a
    move v3, v9

    .line 3489
    goto :goto_6a

    :cond_8c
    move v4, v9

    .line 3490
    goto :goto_75

    .line 3493
    :cond_8e
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 3494
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 3495
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 3496
    if-eqz v3, :cond_a0

    if-eqz v4, :cond_a0

    move v0, v8

    :goto_9f
    goto :goto_76

    :cond_a0
    move v0, v9

    goto :goto_9f

    .line 3508
    .end local v0           #allLinesTaken:Z
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    :cond_a2
    const/4 v10, 0x4

    if-ne v7, v10, :cond_b0

    .line 3510
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3511
    .restart local v1       #app:Lcom/android/phone/PhoneApp;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    move v8, v9

    goto/16 :goto_11

    .line 3515
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_b0
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .registers 7
    .parameter "cm"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3417
    const-string v4, "support_conference_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3440
    :cond_a
    :goto_a
    return v3

    .line 3420
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3421
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3a

    .line 3423
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3424
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v4, "thrway_active_disable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3427
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_38

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_38

    :goto_36
    move v3, v2

    goto :goto_a

    :cond_38
    move v2, v3

    goto :goto_36

    .line 3430
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_3a
    const/4 v4, 0x4

    if-ne v1, v4, :cond_42

    .line 3431
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3432
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    goto :goto_a

    .line 3440
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_60

    :goto_5e
    move v3, v2

    goto :goto_a

    :cond_60
    move v2, v3

    goto :goto_5e
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3380
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3381
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3382
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3384
    :cond_1a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 3387
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3388
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3404
    :cond_35
    :goto_35
    return v0

    :cond_36
    move v0, v1

    .line 3388
    goto :goto_35

    .line 3390
    :cond_38
    if-eq v2, v0, :cond_3d

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d

    .line 3397
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5b

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_35

    :cond_5b
    move v0, v1

    goto :goto_35

    .line 3402
    :cond_5d
    const/4 v0, 0x4

    if-ne v2, v0, :cond_65

    .line 3403
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move v0, v1

    .line 3404
    goto :goto_35

    .line 3408
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickPhoneBasedOnNumber: scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sipUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_41

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3818
    if-eqz p3, :cond_44

    .line 3819
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3820
    if-eqz v0, :cond_44

    .line 3822
    :goto_40
    return-object v0

    .line 3812
    :cond_41
    const-string v0, "null"

    goto :goto_2d

    .line 3822
    :cond_44
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_40
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 917
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 918
    sput-object p2, Lcom/android/phone/PhoneUtils;->dialedNumber:Ljava/lang/String;

    .line 920
    const-string v0, "AutoCSP"

    const-string v1, "Check if AutoCSP Service is available"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getAutoCSP()Lcom/android/phone/IAutoCSP;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_39

    .line 927
    :try_start_1b
    invoke-interface {v0}, Lcom/android/phone/IAutoCSP;->isAutoCSPEnabled()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 929
    invoke-interface {v0, p2}, Lcom/android/phone/IAutoCSP;->getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_fc

    move-result-object v0

    .line 930
    :try_start_25
    sput-object v0, Lcom/android/phone/PhoneUtils;->dialedNumber:Ljava/lang/String;

    .line 933
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 934
    const v1, 0x7f0e06a6

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_38c

    :cond_38
    move-object p2, v0

    .line 944
    :cond_39
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()..., GW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_102

    const-string v0, "non-null"

    :goto_48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergency? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()... number: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GW:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactRef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 951
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 954
    const/4 v0, 0x0

    .line 955
    if-eqz p5, :cond_a4

    if-nez p4, :cond_a4

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 958
    const/4 v0, 0x1

    .line 961
    :cond_a4
    const/4 v3, 0x0

    .line 964
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallType()Lcom/android/phone/PhoneUtilsExt$CallType;

    move-result-object v1

    .line 965
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_394

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeCall:  callType = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 967
    if-nez v1, :cond_394

    .line 968
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    move-object v2, v1

    .line 971
    :goto_d2
    if-eqz v0, :cond_190

    .line 974
    if-eqz p5, :cond_e2

    const-string v0, "tel"

    invoke-virtual {p5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 975
    :cond_e2
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v0, 0x2

    .line 1177
    :cond_fb
    :goto_fb
    return v0

    .line 937
    :catch_fc
    move-exception v0

    .line 938
    :goto_fd
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_39

    .line 944
    :cond_102
    const-string v0, "null"

    goto/16 :goto_48

    .line 984
    :cond_106
    invoke-virtual {p5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 989
    :goto_10a
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 990
    const-string v1, "GATE"

    const-string v4, "<GATE-M>MO_CALL</GATE-M>"

    invoke-static {v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_117
    iget-object v1, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v4, :cond_193

    const/4 v1, 0x1

    .line 998
    :goto_122
    :try_start_122
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15a

    .line 999
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v4

    if-eqz v4, :cond_15a

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_15a

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf()Z

    move-result v4

    if-nez v4, :cond_15a

    .line 1001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send dtmf : char ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1002
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p1, p2, v4, v6, v7}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1005
    :cond_15a
    const-string v4, "ims_vt_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b7

    .line 1006
    sget-object v4, Lcom/android/phone/PhoneUtils$13;->$SwitchMap$com$android$phone$PhoneUtilsExt$CallType:[I

    invoke-virtual {v2}, Lcom/android/phone/PhoneUtilsExt$CallType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_398

    .line 1027
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2ae

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_2ae

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_2ae

    .line 1030
    const-string v0, "Cannot place Voice Call Due To Presence of Incoming VT Call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1031
    const/4 v0, 0x2

    goto/16 :goto_fb

    :cond_190
    move-object v0, p2

    .line 986
    goto/16 :goto_10a

    .line 995
    :cond_193
    const/4 v1, 0x0

    goto :goto_122

    .line 1008
    :pswitch_195
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1b8

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_1b8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v4, :cond_1b8

    .line 1011
    const-string v0, "Cannot place Voice Call Due To Presence of Incoming VT Call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1012
    const/4 v0, 0x2

    goto/16 :goto_fb

    .line 1014
    :cond_1b8
    iget-object v2, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v4, v0

    .line 1039
    :goto_1bf
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 1040
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setEmptyFlash(Z)V

    .line 1041
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSendDtmf(Z)V
    :try_end_1cf
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_122 .. :try_end_1cf} :catch_2c0

    .line 1055
    :cond_1cf
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1056
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2cb

    const/4 v0, 0x1

    move v2, v0

    .line 1059
    :goto_1dc
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 1060
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1061
    if-eqz v2, :cond_2cf

    .line 1062
    const-string v2, "phone_type=cdma"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1069
    :cond_1f3
    :goto_1f3
    const-string v0, "feature_chn_dual_mode_with_one_ril"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 1070
    const-string v0, "persist.radio.boot.modem"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1072
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v7, "audio"

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1073
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modemId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1074
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2d6

    .line 1076
    const-string v2, "phone_type=cp1"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1084
    :cond_22d
    :goto_22d
    if-nez v4, :cond_2e0

    .line 1085
    const/4 v0, 0x1

    if-ne v6, v0, :cond_2dd

    if-nez p5, :cond_2dd

    .line 1086
    const-string v0, "dialed MMI code: ****"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialed MMI code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x1

    .line 1090
    sget-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v1, :cond_fb

    .line 1092
    :try_start_255
    sget-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v1, p2}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extended NW bindService setUssdString ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_276
    .catch Landroid/os/RemoteException; {:try_start_255 .. :try_end_276} :catch_278

    goto/16 :goto_fb

    .line 1094
    :catch_278
    move-exception v1

    .line 1095
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto/16 :goto_fb

    .line 1017
    :pswitch_27e
    :try_start_27e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall:  DIAL_VIDEO\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1018
    if-eqz v5, :cond_2a4

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_2a4

    .line 1020
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_1bf

    .line 1022
    :cond_2a4
    const-string v0, "PhoneUtils"

    const-string v1, "Inside Place Call _ PhoneApp or mCM is NULL"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v0, 0x2

    goto/16 :goto_fb

    .line 1033
    :cond_2ae
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v4, v0

    .line 1034
    goto/16 :goto_1bf

    .line 1037
    :cond_2b7
    iget-object v2, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_2bc
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_27e .. :try_end_2bc} :catch_2c0

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1bf

    .line 1043
    :catch_2c0
    move-exception v0

    .line 1047
    const-string v1, "PhoneUtils"

    const-string v2, "Exception from app.mCM.dial()"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    const/4 v0, 0x2

    goto/16 :goto_fb

    .line 1056
    :cond_2cb
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1dc

    .line 1065
    :cond_2cf
    const-string v2, "phone_type=gsm"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_1f3

    .line 1079
    :cond_2d6
    const-string v2, "phone_type=cp2"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_22d

    .line 1099
    :cond_2dd
    const/4 v0, 0x2

    goto/16 :goto_fb

    .line 1102
    :cond_2e0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2e6

    .line 1103
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 1107
    :cond_2e6
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2ed

    .line 1108
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1110
    :cond_2ed
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_391

    .line 1113
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1116
    :goto_302
    if-nez p5, :cond_366

    .line 1122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v0, "content"

    .line 1123
    if-eqz p3, :cond_31e

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31e

    .line 1124
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1125
    if-nez v0, :cond_356

    .line 1126
    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1159
    :cond_31e
    :goto_31e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioEffectAboutRouting()V

    .line 1160
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 1161
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioEffect()V

    .line 1163
    const-string v0, "about to activate speaker"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1165
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfShouldBe(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 1168
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 1169
    if-eqz v1, :cond_353

    if-nez v0, :cond_353

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_353

    if-eqz v2, :cond_347

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_353

    .line 1172
    :cond_347
    const-string v0, "PhoneUtils"

    const-string v1, "Forcing speaker off when initiating a new outgoing call..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v5, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :cond_353
    move v0, v3

    goto/16 :goto_fb

    .line 1131
    :cond_356
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_35f

    .line 1132
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_31e

    .line 1134
    :cond_35f
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_31e

    .line 1143
    :cond_366
    const/4 v0, 0x0

    .line 1144
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v6, "content"

    .line 1145
    if-eqz p3, :cond_380

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_380

    .line 1146
    invoke-static {p0, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1152
    :cond_380
    if-nez v0, :cond_386

    .line 1153
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1155
    :cond_386
    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1156
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_31e

    .line 937
    :catch_38c
    move-exception v1

    move-object p2, v0

    move-object v0, v1

    goto/16 :goto_fd

    :cond_391
    move-object v2, v0

    goto/16 :goto_302

    :cond_394
    move-object v2, v1

    goto/16 :goto_d2

    .line 1006
    nop

    :pswitch_data_398
    .packed-switch 0x1
        :pswitch_195
        :pswitch_27e
    .end packed-switch
.end method

.method static playCallConnectTone(Landroid/content/Context;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4405
    const-string v2, "call_conn_tone"

    .line 4406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_conn_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4408
    if-ge v2, v1, :cond_16

    .line 4410
    const-string v1, "call connect tone is unchecked"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4431
    :cond_15
    :goto_15
    return v0

    .line 4413
    :cond_16
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v2

    if-nez v2, :cond_15

    .line 4419
    const-string v2, "sec_korea_mm_audio"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4420
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 4421
    if-eqz v2, :cond_3a

    .line 4422
    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-nez v2, :cond_15

    .line 4427
    :cond_3a
    const/high16 v0, 0x7f07

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    .line 4428
    sget-object v0, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4c

    .line 4429
    const-string v0, "playCallConnectTone : excuted"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_4c
    move v0, v1

    .line 4431
    goto :goto_15
.end method

.method static playCallEndTone(Landroid/content/Context;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4356
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->kIsAudioResetDone:Z

    .line 4357
    const-string v2, "call_end_tone"

    .line 4358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_end_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4359
    if-ge v2, v1, :cond_18

    .line 4361
    const-string v1, "call disconnect tone is unchecked"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4391
    :cond_17
    :goto_17
    return v0

    .line 4366
    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4372
    :cond_2c
    const v0, 0x7f070001

    new-instance v2, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    new-instance v3, Lcom/android/phone/PhoneUtils$8;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$8;-><init>()V

    invoke-static {p0, v0, v2, p1, v3}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    .line 4388
    sget-object v0, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_48

    .line 4389
    const-string v0, "playCallEndTone : excuted"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_48
    move v0, v1

    .line 4391
    goto :goto_17
.end method

.method static playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;
    .registers 5
    .parameter "context"
    .parameter "resID"
    .parameter "completionListener"
    .parameter "mMediaType"

    .prologue
    .line 4506
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method static playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
    .registers 15
    .parameter "context"
    .parameter "resID"
    .parameter "completionListener"
    .parameter "mMediaType"
    .parameter "errorListener"

    .prologue
    .line 4510
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 4511
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v0, :cond_b5

    .line 4512
    const/4 v6, 0x0

    .line 4514
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_100
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_bc
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_f} :catch_e8

    move-result-object v6

    .line 4515
    if-nez v6, :cond_22

    .line 4516
    const/4 v0, 0x0

    .line 4590
    .end local v0           #mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_13
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18

    .line 4594
    :goto_16
    const/4 v6, 0x0

    .line 4597
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_17
    return-object v0

    .line 4591
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_18
    move-exception v8

    .line 4592
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "PhoneUtils"

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_16

    .line 4517
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v0       #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_22
    :try_start_22
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 4519
    if-nez p3, :cond_9f

    .line 4520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4526
    :cond_37
    :goto_37
    const-string v1, "separate_connect_tone"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 4527
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 4529
    .local v9, mAudioManager:Landroid/media/AudioManager;
    const-string v1, "situation=14;device=0"

    invoke-virtual {v9, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "situation=14;device=0"

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMediaTone->Call Connection Gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "situation=14;device=0"

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4539
    .end local v9           #mAudioManager:Landroid/media/AudioManager;
    :cond_7e
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 4541
    if-nez p2, :cond_89

    .line 4542
    new-instance v7, Lcom/android/phone/PhoneUtils$9;

    invoke-direct {v7}, Lcom/android/phone/PhoneUtils$9;-><init>()V

    .end local p2
    .local v7, completionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    move-object p2, v7

    .line 4560
    .end local v7           #completionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    .restart local p2
    :cond_89
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4563
    if-nez p4, :cond_b8

    .line 4564
    new-instance v1, Lcom/android/phone/PhoneUtils$10;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4577
    :goto_96
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_99
    .catchall {:try_start_22 .. :try_end_99} :catchall_100
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_99} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_99} :catch_bc
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_99} :catch_e8

    .line 4590
    :try_start_99
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_ca

    .line 4594
    :goto_9c
    const/4 v6, 0x0

    goto/16 :goto_17

    .line 4521
    :cond_9f
    const/4 v1, 0x1

    if-ne p3, v1, :cond_37

    .line 4522
    const/16 v1, 0xb

    :try_start_a4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_100
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a4 .. :try_end_a7} :catch_bc
    .catch Ljava/lang/SecurityException; {:try_start_a4 .. :try_end_a7} :catch_e8

    goto :goto_37

    .line 4579
    :catch_a8
    move-exception v8

    .line 4580
    .local v8, ex:Ljava/io/IOException;
    :try_start_a9
    const-string v1, "PhoneUtils"

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_100

    .line 4590
    :try_start_b1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_d4

    .line 4594
    .end local v8           #ex:Ljava/io/IOException;
    :goto_b4
    const/4 v6, 0x0

    .line 4597
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_b5
    :goto_b5
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 4574
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_b8
    :try_start_b8
    invoke-virtual {v0, p4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_100
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catch Ljava/lang/SecurityException; {:try_start_b8 .. :try_end_bb} :catch_e8

    goto :goto_96

    .line 4582
    :catch_bc
    move-exception v8

    .line 4583
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    :try_start_bd
    const-string v1, "PhoneUtils"

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_100

    .line 4590
    :try_start_c5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_de

    .line 4594
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :goto_c8
    const/4 v6, 0x0

    .line 4595
    goto :goto_b5

    .line 4591
    :catch_ca
    move-exception v8

    .line 4592
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "PhoneUtils"

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_9c

    .line 4591
    .local v8, ex:Ljava/io/IOException;
    :catch_d4
    move-exception v8

    .line 4592
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "PhoneUtils"

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_b4

    .line 4591
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    :catch_de
    move-exception v8

    .line 4592
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "PhoneUtils"

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_c8

    .line 4585
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_e8
    move-exception v8

    .line 4586
    .local v8, ex:Ljava/lang/SecurityException;
    :try_start_e9
    const-string v1, "PhoneUtils"

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I
    :try_end_f1
    .catchall {:try_start_e9 .. :try_end_f1} :catchall_100

    .line 4590
    :try_start_f1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f6

    .line 4594
    .end local v8           #ex:Ljava/lang/SecurityException;
    :goto_f4
    const/4 v6, 0x0

    .line 4595
    goto :goto_b5

    .line 4591
    .restart local v8       #ex:Ljava/lang/SecurityException;
    :catch_f6
    move-exception v8

    .line 4592
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "PhoneUtils"

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_f4

    .line 4589
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_100
    move-exception v1

    .line 4590
    :try_start_101
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_106

    .line 4594
    :goto_104
    const/4 v6, 0x0

    throw v1

    .line 4591
    :catch_106
    move-exception v8

    .line 4592
    .restart local v8       #ex:Ljava/lang/Exception;
    const-string v2, "PhoneUtils"

    const-string v3, "close failed:"

    const/4 v4, 0x1

    invoke-static {v2, v3, v8, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_104
.end method

.method public static readUnsignedInt([B)J
    .registers 12
    .parameter "bytes"

    .prologue
    .line 5246
    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 5247
    .local v0, b0:J
    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 5248
    .local v2, b1:J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 5249
    .local v4, b2:J
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 5250
    .local v6, b3:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static readUnsignedShort([B)I
    .registers 4
    .parameter "bytes"

    .prologue
    .line 5255
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 5256
    .local v0, b0:I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 5257
    .local v1, b1:I
    or-int v2, v0, v1

    return v2
.end method

.method static restoreExtraVol(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 2996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreExtraVol, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2998
    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 3006
    :cond_21
    :goto_21
    return-void

    .line 3003
    :cond_22
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    if-eq v0, v1, :cond_21

    .line 3004
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    goto :goto_21
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .registers 6

    .prologue
    .line 1360
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1363
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1366
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_60

    .line 1368
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1371
    .local v2, phoneType:I
    const/4 v3, 0x0

    .line 1377
    .local v3, shouldMute:Ljava/lang/Boolean;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3d

    .line 1378
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 1390
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_2c
    :goto_2c
    if-nez v3, :cond_35

    .line 1391
    const-string v4, "problem retrieving mute value for this connection."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1392
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1396
    :cond_35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1399
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :goto_3c
    return-object v3

    .line 1380
    .restart local v2       #phoneType:I
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_3d
    const/4 v4, 0x1

    if-eq v2, v4, :cond_43

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4c

    .line 1382
    :cond_43
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    goto :goto_2c

    .line 1385
    :cond_4c
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2c

    .line 1386
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    goto :goto_2c

    .line 1399
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :cond_60
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3c
.end method

.method static restoreNoiseSuppression(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 3075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreNoiseSuppression, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3077
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eqz v0, :cond_24

    .line 3085
    :cond_23
    :goto_23
    return-void

    .line 3082
    :cond_24
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    if-eq v0, v1, :cond_23

    .line 3083
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto :goto_23
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSpeakerMode, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2944
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_28

    .line 2945
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2951
    :cond_27
    :goto_27
    return-void

    .line 2948
    :cond_28
    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 2949
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoiceCallEq()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_27
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter

    .prologue
    .line 1206
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 1207
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_21

    .line 1210
    const-string v0, "PhoneUtils"

    const-string v1, "onReceive: (CDMA) sending empty flash to network"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 1214
    :cond_21
    return-void
.end method

.method public static sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3905
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send view notification to Contacts (uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.VIEW_NOTIFICATION"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3907
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ViewNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3909
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3910
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1444
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separateCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_21
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1449
    :goto_21
    return-void

    .line 1446
    :catch_22
    move-exception v0

    .line 1447
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private static setAudioEffect()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 5944
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionInitiated:Z

    if-nez v0, :cond_1d

    .line 5945
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionInitiated:Z

    .line 5947
    const-string v0, "setAudioEffect"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5949
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5950
    invoke-static {v1, v1}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 5952
    :cond_1d
    return-void
.end method

.method private static setAudioEffectAboutRouting()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5959
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionAboutRoutingInitiated:Z

    if-nez v0, :cond_b2

    .line 5960
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionAboutRoutingInitiated:Z

    .line 5962
    const-string v0, "setAudioEffectAboutRouting"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5964
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5965
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5966
    const-string v0, "noise_reduction_sharedpref"

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5968
    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 5970
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "call_noise_reduction"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b3

    move v0, v1

    .line 5972
    :goto_4c
    const-string v4, "noise_reduction_sharedpref"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5974
    :cond_52
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 5975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first noise reduction : set= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  set result ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5979
    :cond_89
    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 5981
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 5982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first extra volume : set= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5985
    :cond_b2
    return-void

    :cond_b3
    move v0, v2

    goto :goto_4c
.end method

.method static setAudioMode()V
    .registers 1

    .prologue
    .line 3205
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 3206
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .registers 9
    .parameter "cm"

    .prologue
    const/4 v7, 0x1

    .line 3213
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAudioMode()..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3215
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3216
    .local v1, context:Landroid/content/Context;
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3218
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 3219
    .local v3, modeBefore:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 3220
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 3222
    .local v2, modeAfter:I
    if-eq v3, v2, :cond_37

    .line 3229
    :goto_36
    return-void

    .line 3226
    :cond_37
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAudioMode() no change: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_36
.end method

.method static setMute(Z)V
    .registers 6
    .parameter "muted"

    .prologue
    .line 3136
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3139
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3143
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3144
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_33

    .line 3145
    const-string v3, "problem retrieving mute value for this connection."

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3147
    :cond_33
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 3149
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_3d
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3155
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3156
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3157
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3158
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v0

    if-eqz v0, :cond_64

    move v0, v1

    .line 3159
    :goto_23
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 3160
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3162
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 3163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteInternal: using phone.setMute("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3164
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 3176
    :goto_59
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 3178
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 3179
    return-void

    .line 3158
    :cond_64
    const/4 v0, 0x0

    goto :goto_23

    .line 3166
    :cond_66
    if-nez v3, :cond_6a

    if-eqz v0, :cond_96

    .line 3167
    :cond_6a
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMuteInternal: using setMicrophoneMute("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3170
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_59

    .line 3172
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteInternal: using phone.setMute("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3173
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_59
.end method

.method private static setRilcommandSender(I)[B
    .registers 8
    .parameter "requestedState"

    .prologue
    const/4 v6, 0x1

    .line 4969
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4970
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4972
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x11

    :try_start_d
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4973
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4974
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4975
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_41

    .line 4980
    if-eqz v1, :cond_21

    .line 4982
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_26

    .line 4989
    :cond_21
    :goto_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :cond_25
    :goto_25
    return-object v3

    .line 4983
    :catch_26
    move-exception v2

    .line 4984
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRilcommandSender : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 4985
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 4976
    .end local v2           #e:Ljava/io/IOException;
    :catch_41
    move-exception v2

    .line 4977
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_42
    const-string v3, "setRilcommandSender : can\'t write byte"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_6a

    .line 4978
    const/4 v3, 0x0

    .line 4980
    if-eqz v1, :cond_25

    .line 4982
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_25

    .line 4983
    :catch_4f
    move-exception v2

    .line 4984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRilcommandSender : close fail - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 4985
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 4980
    .end local v2           #e:Ljava/io/IOException;
    :catchall_6a
    move-exception v3

    if-eqz v1, :cond_70

    .line 4982
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 4986
    :cond_70
    :goto_70
    throw v3

    .line 4983
    :catch_71
    move-exception v2

    .line 4984
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRilcommandSender : close fail - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 4985
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70
.end method

.method public static setVoiceCallEq(ZZ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5049
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 5050
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5051
    const-string v4, "dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    .line 5052
    if-eqz p0, :cond_15f

    .line 5053
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    if-eqz v4, :cond_1a

    if-nez p1, :cond_1a

    .line 5107
    :cond_19
    :goto_19
    return-void

    .line 5056
    :cond_1a
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5057
    const-string v0, "PhoneUtils"

    const-string v1, "- setVoiceCallEq : don\'t use setVoiceCallEq in WB mode"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_19

    .line 5061
    :cond_2c
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 5063
    if-nez v4, :cond_3a

    if-eqz p1, :cond_19

    .line 5065
    :cond_3a
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v5

    .line 5066
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v6

    if-nez v6, :cond_151

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_151

    if-eqz v5, :cond_52

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v5

    if-nez v5, :cond_151

    :cond_52
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_151

    .line 5069
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_diagnosis"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_c2

    .line 5070
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_direction"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 5072
    if-eq v5, v7, :cond_c2

    .line 5073
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "hearing_parameters"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dha=1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5077
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCallEq:setParameter("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5079
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    goto/16 :goto_19

    .line 5083
    :cond_c2
    const-string v1, "dha="

    .line 5084
    packed-switch v4, :pswitch_data_172

    .line 5088
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5090
    :goto_da
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",0,0,0,0,0,0,0,0,0,0,0,0,0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5091
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVoiceCallEq:setParameter("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5093
    if-eqz v4, :cond_14f

    move v0, v2

    :goto_10f
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    goto/16 :goto_19

    .line 5085
    :pswitch_113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_da

    .line 5086
    :pswitch_127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "4"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_da

    .line 5087
    :pswitch_13b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "5"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_da

    :cond_14f
    move v0, v3

    .line 5093
    goto :goto_10f

    .line 5096
    :cond_151
    const-string v1, "dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5097
    const-string v0, "setVoiceCallEq:setParameter(dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0)"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5098
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    goto/16 :goto_19

    .line 5101
    :cond_15f
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    if-eqz v1, :cond_19

    .line 5102
    const-string v1, "dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5103
    const-string v0, "setVoiceCallEq:setParameter(dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0)"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5104
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sIsVoiceCallEq:Z

    goto/16 :goto_19

    .line 5084
    nop

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_113
        :pswitch_127
        :pswitch_13b
    .end packed-switch
.end method

.method static setWBMode(Z)V
    .registers 1
    .parameter "value"

    .prologue
    .line 3121
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mWB:Z

    .line 3122
    return-void
.end method

.method private static shouldBlockUnknownNumber(I)Z
    .registers 2
    .parameter "mode"

    .prologue
    .line 5742
    if-lez p0, :cond_4

    .line 5743
    const/4 v0, 0x1

    .line 5745
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static showBargeInNotification()V
    .registers 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6061
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 6062
    const-string v0, "Not supported: BargeIn"

    invoke-static {v0, v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 6108
    :goto_10
    return-void

    .line 6066
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 6067
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6068
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6069
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 6070
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "voicetalk_language"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6072
    if-nez v0, :cond_9d

    .line 6073
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 6084
    :cond_35
    :goto_35
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6086
    invoke-virtual {v2, v3, v10}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 6087
    const v0, 0x7f080006

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 6090
    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6091
    invoke-virtual {v2, v3, v10}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 6093
    const v2, 0x7f0e02b3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v9

    aput-object v4, v3, v9

    aget-object v0, v0, v8

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6095
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6097
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02040f

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 6099
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 6101
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 6102
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.VoiceInputControlSettings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6104
    invoke-static {v1, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 6105
    const/high16 v5, 0x7f0e

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6107
    const/16 v1, 0x7001

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_10

    .line 6074
    :cond_9d
    const-string v5, "v-es-LA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 6075
    const-string v0, "es"

    goto :goto_35

    .line 6076
    :cond_a8
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 6077
    const-string v5, "zh-CN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 6078
    const-string v0, "zh"

    goto/16 :goto_35
.end method

.method static showHidedMmiDialog()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 1955
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 1956
    const-string v0, "showHidedMmiDialog..."

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 1957
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1958
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 1960
    :cond_16
    return-void
.end method

.method private static startAutoAnswer(J)V
    .registers 5
    .parameter "timeoutMillis"

    .prologue
    .line 5217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoAnswer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 5218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 5219
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/PhoneUtils$12;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$12;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5227
    return-void
.end method

.method static startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4435
    .line 4437
    const-string v2, "call_answer_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "call_end_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4439
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCallVibration : vibType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4448
    if-ge v2, v1, :cond_43

    .line 4460
    :goto_3c
    return v0

    .line 4442
    :cond_3d
    const-string v1, "startCallVibration : There are no machted type "

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_3c

    .line 4451
    :cond_43
    if-ne v2, v1, :cond_66

    .line 4452
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    .line 4453
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 4455
    :cond_5d
    const/16 v2, 0xa

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(II)V

    :cond_66
    :goto_66
    move v0, v1

    .line 4460
    goto :goto_3c

    .line 4457
    :cond_68
    const/16 v2, 0xf

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(II)V

    goto :goto_66
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 9
    .parameter "context"
    .parameter "call"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 2205
    const/4 v0, 0x0

    .line 2206
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2207
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 2208
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2223
    :goto_10
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    return-object v2

    .line 2209
    :cond_15
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    .line 2211
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_10

    .line 2214
    :cond_20
    const/4 v2, 0x4

    if-ne v1, v2, :cond_28

    .line 2215
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_10

    .line 2220
    :cond_28
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2252
    if-nez p1, :cond_f

    .line 2254
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2255
    iput-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2570
    :goto_e
    return-object v1

    .line 2263
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_6d

    .line 2264
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGetCallerInfo: previous number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2268
    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hadCallerImage()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2271
    const-string v0, "startGetCallerInfo: There is a callerinfo already query completed"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2272
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2274
    :cond_67
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v3, v0, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2277
    :cond_6d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 2313
    instance-of v0, v1, Landroid/net/Uri;

    if-eqz v0, :cond_af

    .line 2317
    new-instance v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2318
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, v1

    .line 2319
    check-cast v0, Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v0, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2321
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2322
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2324
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query based on Uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_e

    .line 2328
    :cond_af
    if-nez v1, :cond_331

    .line 2333
    const-string v0, "get_orig_dial_string_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_244

    .line 2334
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2345
    :goto_bd
    const-string v1, "PhoneUtils.startGetCallerInfo: new query for phone number..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- number (address): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- phoneType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2351
    packed-switch v1, :pswitch_data_518

    .line 2356
    const-string v1, "  ==> Unknown phone type"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2360
    :goto_13a
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2361
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2365
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2369
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2370
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 2371
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2374
    :cond_166
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2375
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2376
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CNAP Info from FW(1): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CDNIP Info from FW(1): number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f2

    .line 2390
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v2, v0, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2393
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 2394
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b0

    .line 2395
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 2396
    if-eqz v2, :cond_201

    .line 2397
    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setContactsNumber(Ljava/lang/String;)V

    .line 2398
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallCardNumber(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 2400
    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setCallCardNumber(Ljava/lang/String;)V

    .line 2420
    :cond_201
    :goto_201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startGetCallerInfo : Roaming area number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2423
    :cond_217
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2427
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_2dc

    .line 2428
    iput-boolean v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2455
    :cond_225
    :goto_225
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query based on number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2336
    :cond_244
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_26a

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v7, :cond_26a

    .line 2337
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    .line 2338
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bd

    .line 2340
    :cond_26a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bd

    .line 2352
    :pswitch_270
    const-string v1, "  ==> PHONE_TYPE_NONE"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_13a

    .line 2353
    :pswitch_277
    const-string v1, "  ==> PHONE_TYPE_GSM"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_13a

    .line 2354
    :pswitch_27e
    const-string v1, "  ==> PHONE_TYPE_CDMA"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_13a

    .line 2355
    :pswitch_285
    const-string v1, "  ==> PHONE_TYPE_SIP"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_13a

    .line 2401
    :cond_28c
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_201

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v3, v3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v3, :cond_201

    .line 2402
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v3

    if-eq v3, v7, :cond_2a4

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v3

    if-nez v3, :cond_2ab

    .line 2404
    :cond_2a4
    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setCallCardNumber(Ljava/lang/String;)V

    goto/16 :goto_201

    .line 2406
    :cond_2ab
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallCardNumber(Ljava/lang/String;)V

    goto/16 :goto_201

    .line 2411
    :cond_2b0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_201

    .line 2412
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 2413
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_201

    .line 2415
    :cond_2c6
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_201

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_201

    .line 2416
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getUserInputDialingNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_201

    .line 2430
    :cond_2dc
    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2431
    sget-object v2, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v0, v2, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2433
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v2, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2434
    iput-boolean v6, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_225

    .line 2442
    :cond_2f2
    const-string v2, "startGetCallerInfo: No query to start, send trivial reply."

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2443
    iput-boolean v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2445
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_225

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 2447
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_225

    .line 2448
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setContactsNumber(Ljava/lang/String;)V

    .line 2449
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallCardNumber(Ljava/lang/String;)V

    .line 2450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Roaming area -  number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_225

    .line 2461
    :cond_331
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_4ca

    .line 2465
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 2468
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v0, :cond_369

    .line 2469
    if-eqz p2, :cond_362

    .line 2470
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGetCallerInfo: query already running, adding listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2475
    :cond_362
    const-string v0, "startGetCallerInfo: query already running, listener is null"

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 2479
    :cond_369
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber initially = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_439

    .line 2486
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2488
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2489
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ad

    .line 2490
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2493
    :cond_3ad
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2494
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2495
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2497
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v2, v0, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2500
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CNAP Info from FW(2): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CDNIP Info from FW(2): number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2508
    const-string v2, "startGetCallerInfo: CNAP Info from FW(2)"

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2512
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_428

    .line 2513
    iput-boolean v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_e

    .line 2515
    :cond_428
    sget-object v2, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v0, v2, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2517
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2518
    iput-boolean v6, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_e

    .line 2521
    :cond_439
    const-string v2, "startGetCallerInfo: No query to attach to, send trivial reply."

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2522
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v2, :cond_449

    .line 2523
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2526
    :cond_449
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2528
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2529
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_469

    .line 2530
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2533
    :cond_469
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2534
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2535
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CNAP Info from FW(3): name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CDNIP Info from FW(3): number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Name/Number Pres="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2544
    const-string v0, "startGetCallerInfo: CNAP Info from FW(3)"

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2545
    iput-boolean v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_e

    .line 2555
    :cond_4ca
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2556
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2558
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2559
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2560
    const-string v1, "visual_expression"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f3

    .line 2561
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2564
    :cond_4f3
    iput-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2565
    iput-boolean v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2567
    const-string v1, "startGetCallerInfo: query already done, returning CallerInfo"

    invoke-static {v1, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> cit.currentInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_e

    .line 2351
    nop

    :pswitch_data_518
    .packed-switch 0x0
        :pswitch_270
        :pswitch_277
        :pswitch_27e
        :pswitch_285
    .end packed-switch
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2837
    const-string v2, "startNewCall (Add call)"

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2838
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 2841
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2842
    const-string v1, "PhoneUtils"

    const-string v2, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2872
    :goto_1b
    return v0

    .line 2848
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2849
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2852
    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2855
    :cond_30
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2856
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2861
    const-string v4, "add_call_mode"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2863
    :try_start_41
    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_44} :catch_46

    move v0, v1

    .line 2872
    goto :goto_1b

    .line 2864
    :catch_46
    move-exception v1

    .line 2868
    const-string v1, "PhoneUtils"

    const-string v2, "Activity for adding calls isn\'t found."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method static startToast(I)V
    .registers 2
    .parameter "res"

    .prologue
    .line 4721
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(Ljava/lang/String;)V

    .line 4722
    return-void
.end method

.method static startToast(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 4713
    if-eqz p0, :cond_f

    .line 4714
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4718
    :goto_e
    return-void

    .line 4716
    :cond_f
    const-string v0, "displayToast : msg or context is null"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_e
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z
    .registers 6
    .parameter "heldCall"

    .prologue
    .line 1328
    const-string v2, "switchHoldingAndActive()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1330
    :try_start_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1331
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1333
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1338
    :goto_1c
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1339
    const/4 v2, 0x1

    .line 1342
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_20
    return v2

    .line 1336
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_21
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_24
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_1c

    .line 1340
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_25
    move-exception v1

    .line 1341
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    const/4 v2, 0x0

    goto :goto_20
.end method

.method static teleBinarySearch([BII)I
    .registers 9
    .parameter "telephoneCityProvince"
    .parameter "iNum"
    .parameter "count"

    .prologue
    .line 5263
    const/4 v2, 0x0

    .line 5264
    .local v2, i:I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 5266
    .local v1, buffer2:[B
    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_2b

    .line 5268
    const/4 v3, 0x0

    sget v4, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 5269
    const/4 v3, 0x1

    sget v4, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 5270
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->readUnsignedShort([B)I

    move-result v0

    .line 5271
    .local v0, areaCode:I
    if-ne v0, p1, :cond_28

    .line 5276
    .end local v0           #areaCode:I
    .end local v2           #i:I
    :goto_27
    return v2

    .line 5266
    .restart local v0       #areaCode:I
    .restart local v2       #i:I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5276
    .end local v0           #areaCode:I
    :cond_2b
    const/4 v2, -0x1

    goto :goto_27
.end method

.method private static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "number"

    .prologue
    .line 1181
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    if-nez p0, :cond_a

    .line 1197
    .end local p0
    :cond_9
    :goto_9
    return-object p0

    .line 1188
    .restart local p0
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1189
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 1190
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1191
    .local v1, c:C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_26

    const/16 v3, 0x40

    if-eq v1, v3, :cond_26

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2c

    .line 1192
    :cond_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1194
    :cond_2c
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1197
    .end local v1           #c:C
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method static turnOnExtraVol(Landroid/content/Context;ZZ)V
    .registers 10
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnExtraVol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2960
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2962
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v3, "extra_volume"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2993
    :cond_28
    :goto_28
    return-void

    .line 2966
    :cond_29
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2967
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 2968
    .local v2, btHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-ne p1, v5, :cond_83

    .line 2969
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_7d

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 2970
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2971
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sCurrentExtraVol:Z

    .line 2972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnExtraVol: set= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2975
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 2976
    invoke-static {v6, v6}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 2990
    :cond_78
    :goto_78
    if-eqz p2, :cond_28

    .line 2991
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    goto :goto_28

    .line 2979
    :cond_7d
    const-string v3, "turnOnExtraVol: Can\'t turn on in current audio state."

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_78

    .line 2982
    :cond_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2983
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sCurrentExtraVol:Z

    .line 2984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnExtraVol: set= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2986
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 2987
    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    goto :goto_78
.end method

.method static turnOnNoiseSuppression(Landroid/content/Context;ZZ)V
    .registers 11
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    const/4 v7, 0x1

    .line 3044
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOnNoiseSuppression: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3045
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3047
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 3072
    :cond_25
    :goto_25
    return-void

    .line 3051
    :cond_26
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3052
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 3053
    .local v2, btHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-ne p1, v7, :cond_89

    .line 3054
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 3055
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualmic_enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOnNoiseSuppression: isNoiseSuppressionEnabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 3064
    :goto_62
    if-eqz p2, :cond_25

    const-string v5, "not_store_ns_pref"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 3065
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 3066
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3067
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3068
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "noise_reduction_sharedpref"

    invoke-interface {v3, v5, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3070
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_25

    .line 3058
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_83
    const-string v5, "turnOnNoiseSuppression: Can\'t turn on in current audio state."

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_62

    .line 3061
    :cond_89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualmic_enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOnNoiseSuppression: isNoiseSuppressionEnabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_62
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnSpeaker(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    .line 2884
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2886
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2889
    if-eqz p2, :cond_38

    .line 2890
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2893
    :cond_38
    if-eqz p1, :cond_b0

    .line 2894
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "noise_suppression_support_speaker"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 2896
    invoke-static {p0, v3, v3}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 2898
    :cond_4b
    invoke-static {v3, v3}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 2906
    :cond_4e
    :goto_4e
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2908
    if-nez p1, :cond_56

    .line 2909
    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 2913
    :cond_56
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 2916
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 2922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallManager State is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2923
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_a1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 2926
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2930
    :cond_a1
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2932
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2934
    return-void

    .line 2900
    :cond_b0
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2901
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->restoreNoiseSuppression(Landroid/content/Context;)V

    goto :goto_4e
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 867
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_13

    .line 870
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 889
    :cond_12
    :goto_12
    return-void

    .line 874
    :cond_13
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 878
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 879
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v0

    if-eq v0, v2, :cond_31

    .line 880
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V

    .line 882
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTtransferState(Z)V

    goto :goto_12

    .line 884
    :cond_31
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V

    goto :goto_12
.end method

.method public static updateRAFT()V
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4906
    const-string v0, "raft"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4965
    :cond_b
    :goto_b
    return-void

    .line 4910
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 4911
    iget-object v5, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 4915
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4916
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 4918
    const-string v6, "999999999999999"

    .line 4920
    const-string v6, "ril.FS"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4922
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    const-string v6, "999999999999999"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    :cond_3a
    move v0, v2

    .line 4926
    :goto_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRAFT current state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4928
    if-nez v5, :cond_5b

    .line 4929
    const-string v0, "updateRAFT(): phone is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 4933
    :cond_5b
    sget-boolean v6, Lcom/android/phone/PhoneApp;->mIsUsbConnected:Z

    if-eq v6, v2, :cond_61

    if-eqz v0, :cond_82

    .line 4934
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRAFT() : FactoryMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4935
    const/4 v1, 0x4

    .line 4954
    :cond_78
    :goto_78
    sget v0, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    if-ne v0, v1, :cond_a4

    .line 4955
    const-string v0, "updateRAFT current and requested states are same, so do nothing"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    goto :goto_b

    .line 4936
    :cond_82
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v6, :cond_90

    .line 4937
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    if-ne v0, v2, :cond_78

    move v1, v3

    .line 4938
    goto :goto_78

    .line 4942
    :cond_90
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-ne v0, v2, :cond_98

    .line 4943
    const/4 v1, 0x2

    goto :goto_78

    .line 4944
    :cond_98
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    if-ne v0, v2, :cond_9e

    move v1, v2

    .line 4945
    goto :goto_78

    .line 4947
    :cond_9e
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    if-ne v0, v2, :cond_78

    move v1, v3

    .line 4948
    goto :goto_78

    .line 4959
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRAFT current state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " next state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4960
    sput v1, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    .line 4962
    sget v0, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setRilcommandSender(I)[B

    move-result-object v0

    .line 4963
    if-eqz v0, :cond_b

    .line 4964
    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_b

    :cond_d6
    move v0, v1

    goto/16 :goto_3b
.end method

.method public static updateSSC()V
    .registers 4

    .prologue
    .line 4870
    const-string v0, "ssc_antenna_solution"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4902
    :cond_8
    :goto_8
    return-void

    .line 4874
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4875
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 4877
    if-nez v1, :cond_17

    .line 4878
    const-string v0, "updateSSC(): phone is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 4883
    :cond_17
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    .line 4884
    const/16 v0, 0xa

    .line 4889
    :goto_1e
    sget v2, Lcom/android/phone/PhoneUtils;->mPreSSCState:I

    if-ne v2, v0, :cond_2a

    .line 4890
    const-string v0, "updateSSC current and requested states are same, so do nothing"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 4886
    :cond_28
    const/4 v0, 0x0

    goto :goto_1e

    .line 4894
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSSC current state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneUtils;->mPreSSCState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " next state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4895
    sput v0, Lcom/android/phone/PhoneUtils;->mPreSSCState:I

    .line 4898
    sget v0, Lcom/android/phone/PhoneUtils;->mPreSSCState:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setRilcommandSender(I)[B

    move-result-object v0

    .line 4899
    if-eqz v0, :cond_8

    .line 4900
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_8
.end method

.method public static useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z
    .registers 8
    .parameter "phone"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3872
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3873
    .local v0, phoneType:I
    if-ne v0, v3, :cond_9

    .line 3886
    :cond_8
    :goto_8
    return v2

    .line 3875
    :cond_9
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1a

    .line 3876
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3880
    .local v1, toneType:I
    if-nez v1, :cond_8

    move v2, v3

    .line 3881
    goto :goto_8

    .line 3885
    .end local v1           #toneType:I
    :cond_1a
    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    .line 3888
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
