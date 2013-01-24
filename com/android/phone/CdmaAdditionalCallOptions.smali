.class public Lcom/android/phone/CdmaAdditionalCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaAdditionalCallOptions$18;,
        Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
    }
.end annotation


# static fields
.field public static DBG:Z


# instance fields
.field private areaCodeText:Landroid/widget/EditText;

.field doActivate:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field private mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

.field private mEnhancedVPHandler:Landroid/os/Handler;

.field private mErrAlertPopup:Landroid/app/AlertDialog;

.field private mGetCallWaitingComplete:Landroid/os/Handler;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevBusyDialog:I

.field private mQueryVoicePrivacyComplete:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallWaitingReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallEqListSetting:Landroid/preference/ListPreference;

.field private mVoiceCallVisible:Z

.field private mVoicePrivacy:Landroid/preference/CheckBoxPreference;

.field private mWaitPopup:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    .line 95
    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mErrAlertPopup:Landroid/app/AlertDialog;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSkipCallWaitingReq:Z

    .line 418
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$5;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$6;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSetOptionComplete:Landroid/os/Handler;

    .line 598
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$7;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$7;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 737
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$10;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$10;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mEnhancedVPHandler:Landroid/os/Handler;

    .line 784
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$11;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$11;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    .line 940
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$16;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$16;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->handler:Landroid/os/Handler;

    .line 944
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$17;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$17;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CdmaAdditionalCallOptions;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetVPResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetVPMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateNoiseReduction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaAdditionalCallOptions;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetCWMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteBusyDialog()V
    .registers 3

    .prologue
    .line 733
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteBusyDialog mPrevBusyDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 734
    :cond_22
    iget v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->removeDialog(I)V

    .line 735
    return-void
.end method

.method private dismissCallWaiting()V
    .registers 2

    .prologue
    .line 728
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    .line 729
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    .line 730
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 961
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 962
    return-void
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .registers 9
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 451
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    .line 452
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 453
    :cond_f
    const/16 v1, 0xc8

    .line 463
    :goto_11
    return v1

    .line 455
    :cond_12
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 456
    :cond_1b
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 457
    .local v0, cwArray:[I
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v6

    if-ne v1, v5, :cond_83

    const-string v1, "ENABLED"

    :goto_37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 459
    :cond_42
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%08X"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 460
    :cond_6c
    aget v1, v0, v6

    if-ne v1, v5, :cond_80

    aget v1, v0, v5

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_80

    .line 461
    const v1, 0x7f0e04a0

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    .line 463
    :cond_80
    const/16 v1, 0x64

    goto :goto_11

    .line 457
    :cond_83
    const-string v1, "DISABLED"

    goto :goto_37
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 768
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 770
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 771
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetVPResponse: ar.exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 772
    :cond_25
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 781
    :goto_2a
    return-void

    .line 774
    :cond_2b
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_34

    const-string v2, "handleGetVPResponse: VP state successfully queried."

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 775
    :cond_34
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 776
    .local v1, enable:I
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_54

    const/4 v2, 0x1

    :goto_41
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 778
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2a

    :cond_54
    move v2, v3

    .line 776
    goto :goto_41
.end method

.method private handleSetCWMessage()V
    .registers 4

    .prologue
    .line 491
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "handleSetCWMessage"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 492
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 493
    return-void
.end method

.method private handleSetVPMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 759
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 760
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_24

    .line 761
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetVPResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 763
    :cond_24
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_2d

    const-string v1, "handleSetVPResponse: re get"

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 764
    :cond_2d
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 765
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 937
    const-string v0, "CdmaAdditionalOtions"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 807
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 813
    .local v0, window:Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 814
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .registers 4
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 497
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_15

    .line 498
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 499
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_15
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    .line 502
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .registers 5
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 508
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState() mAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,requestedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msgStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 511
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_3e

    .line 512
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_3d

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 586
    :cond_3d
    :goto_3d
    return-void

    .line 517
    :cond_3e
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_84

    .line 518
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 519
    :cond_66
    sparse-switch p2, :sswitch_data_126

    .line 539
    :goto_69
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    goto :goto_3d

    .line 522
    :sswitch_6c
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    .line 523
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_69

    .line 527
    :sswitch_75
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_69

    .line 531
    :sswitch_7b
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    .line 532
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_69

    .line 543
    :cond_84
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 545
    :cond_a0
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$18;->$SwitchMap$com$android$phone$CdmaAdditionalCallOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_134

    .line 585
    :cond_ad
    :goto_ad
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    goto :goto_3d

    .line 550
    :pswitch_b0
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_ad

    .line 551
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_bd

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 552
    :cond_bd
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :pswitch_c5
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_df

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 559
    :cond_df
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_e9

    .line 560
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_ad

    .line 561
    :cond_e9
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_ad

    .line 562
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_ad

    .line 568
    :pswitch_f3
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_108

    .line 569
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_100

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 570
    :cond_100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_108
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_ad

    .line 577
    :pswitch_10c
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_121

    .line 578
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_119

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 579
    :cond_119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_121
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_ad

    .line 519
    nop

    :sswitch_data_126
    .sparse-switch
        0xc8 -> :sswitch_6c
        0x12c -> :sswitch_7b
        0x320 -> :sswitch_75
    .end sparse-switch

    .line 545
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_c5
        :pswitch_f3
        :pswitch_10c
    .end packed-switch
.end method

.method private setNoiseReduction(Z)V
    .registers 5
    .parameter

    .prologue
    .line 881
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 882
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 883
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 885
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    const-string v2, "noise_reduction_sharedpref"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 889
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 892
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_2a

    .line 893
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 895
    :cond_2a
    return-void
.end method

.method private updateNoiseReduction()V
    .registers 5

    .prologue
    .line 899
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 902
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3d

    .line 903
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 904
    const-string v2, "noise_reduction_sharedpref"

    const-string v3, "default_noise_reduction"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 907
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 909
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_37

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 910
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 915
    :cond_3d
    :goto_3d
    return-void

    .line 912
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3d
.end method

.method private updateSummaryAutoAreaCode()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 859
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "area_code_value"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "area_code_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 865
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v1

    .line 869
    :goto_1f
    if-ne v4, v1, :cond_42

    if-eqz v0, :cond_42

    .line 870
    new-array v0, v1, [Ljava/lang/String;

    const-string v4, "%d"

    aput-object v4, v0, v2

    .line 871
    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    .line 872
    const v2, 0x7f0e0311

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 878
    :cond_41
    :goto_41
    return-void

    .line 876
    :cond_42
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    const v1, 0x7f0e0312

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setSummary(I)V

    goto :goto_41

    :cond_4f
    move v0, v2

    goto :goto_1f
.end method


# virtual methods
.method protected makeAreaCodeDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 817
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 818
    const v1, 0x7f040064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 819
    const v0, 0x7f0901b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    .line 820
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    if-eqz v0, :cond_3e

    .line 824
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 825
    if-lez v0, :cond_3e

    .line 826
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 830
    :cond_3e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0310

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002a

    new-instance v2, Lcom/android/phone/CdmaAdditionalCallOptions$13;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$13;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    new-instance v2, Lcom/android/phone/CdmaAdditionalCallOptions$12;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$12;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 854
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->requestInputMethod(Landroid/app/Dialog;)V

    .line 855
    return-object v0
.end method

.method protected makeEQDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 918
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 919
    const v1, 0x7f0e002a

    new-instance v2, Lcom/android/phone/CdmaAdditionalCallOptions$14;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$14;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 925
    const v1, 0x7f0e002e

    new-instance v2, Lcom/android/phone/CdmaAdditionalCallOptions$15;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$15;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 930
    const v1, 0x7f0e0386

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 931
    const v1, 0x7f0e0387

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 932
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 933
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 179
    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 181
    const-string v3, "voiceprivacy_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 183
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    .line 184
    const-string v3, "voicecall_eq_list_setting"

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 186
    new-instance v3, Lcom/android/phone/CdmaAdditionalCallOptions$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$1;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doActivate:Ljava/lang/Runnable;

    .line 193
    new-instance v3, Lcom/android/phone/CdmaAdditionalCallOptions$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$2;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doDeactivate:Ljava/lang/Runnable;

    .line 200
    sget-object v3, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    .line 201
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 202
    const-string v3, "voicecall_barring_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    const-string v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    const-string v3, "button_fdn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :goto_78
    const-string v3, "button_areacode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 217
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$3;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$3;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$4;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$4;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 269
    const-string v3, "button_voicecall_eq_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    iput-object v7, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 273
    :cond_ab
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v3, :cond_c2

    .line 274
    const-string v3, "button_voicecall_eq_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    iput-object v7, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 278
    :cond_c2
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_14a

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 279
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 285
    :goto_df
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 286
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_107

    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_107

    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_107

    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_150

    .line 291
    :cond_107
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    .line 292
    sget-boolean v3, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v3, :cond_115

    const-string v3, "sim card status is wrong"

    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 293
    :cond_115
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_124

    .line 294
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 305
    :cond_124
    :goto_124
    return-void

    .line 207
    :cond_125
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enhanced_voice_privacy_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, VPchecked:I
    if-ne v0, v5, :cond_143

    .line 210
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_78

    .line 213
    :cond_143
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_78

    .line 281
    .end local v0           #VPchecked:I
    :cond_14a
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_df

    .line 299
    :cond_150
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 300
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_124

    .line 302
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_124
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 655
    sget-boolean v4, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayDialog() mWaitPopup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 656
    :cond_28
    const/16 v4, 0x64

    if-eq p1, v4, :cond_30

    const/16 v4, 0x384

    if-ne p1, v4, :cond_66

    .line 657
    :cond_30
    iput p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    .line 658
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 659
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 660
    sparse-switch p1, :sswitch_data_cc

    .line 673
    const/4 v0, 0x0

    .line 723
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_3e
    return-object v0

    .line 662
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_3f
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 663
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 667
    :sswitch_4d
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 668
    const v4, 0x7f0e0080

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    goto :goto_3e

    .line 675
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_66
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_72

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_72

    const/16 v4, 0x320

    if-ne p1, v4, :cond_b5

    .line 677
    :cond_72
    const v3, 0x7f0e007f

    .line 678
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_d6

    .line 690
    const v2, 0x7f0e0084

    .line 693
    .local v2, msgId:I
    :goto_7b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    .local v1, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 696
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 697
    const v4, 0x7f0e02cc

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$8;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$8;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 703
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 705
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$9;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$9;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_3e

    .line 681
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    :sswitch_ad
    const v2, 0x7f0e0083

    .line 682
    .restart local v2       #msgId:I
    goto :goto_7b

    .line 685
    .end local v2           #msgId:I
    :sswitch_b1
    const v2, 0x7f0e0086

    .line 686
    .restart local v2       #msgId:I
    goto :goto_7b

    .line 716
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_b5
    if-ne p1, v6, :cond_bc

    .line 717
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->makeAreaCodeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_3e

    .line 719
    :cond_bc
    const/16 v4, 0x1f7

    if-ne p1, v4, :cond_c6

    .line 720
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->makeEQDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_3e

    .line 723
    :cond_c6
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_3e

    .line 660
    :sswitch_data_cc
    .sparse-switch
        0x64 -> :sswitch_3f
        0x384 -> :sswitch_4d
    .end sparse-switch

    .line 678
    :sswitch_data_d6
    .sparse-switch
        0x12c -> :sswitch_ad
        0x320 -> :sswitch_b1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 966
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 975
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 968
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 969
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 973
    :goto_1d
    const/4 v0, 0x1

    goto :goto_b

    .line 971
    :cond_1f
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    goto :goto_1d

    .line 966
    nop

    :pswitch_data_24
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 362
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 363
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 366
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    :cond_17
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 629
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne p2, v1, :cond_e

    .line 630
    const-string v1, "onPreferenceTreeClick - mAutoAreaCodeButton"

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    .line 650
    :goto_d
    return v0

    .line 633
    :cond_e
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1c

    .line 634
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->setNoiseReduction(Z)V

    goto :goto_d

    .line 650
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onResume()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 313
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 314
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 315
    iput-boolean v6, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "area_code_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 319
    .local v4, value:I
    iget-object v8, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v4, v6, :cond_9d

    move v5, v6

    :goto_1e
    invoke-virtual {v8, v5}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setChecked(Z)V

    .line 320
    const-string v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode()V

    .line 321
    :cond_2c
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v5, :cond_7e

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 323
    .local v1, eqListValue:I
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f080011

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, eqListEntries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "hearing_diagnosis"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6b

    .line 325
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "hearing_direction"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 326
    .local v2, hearingDirection:I
    if-ne v2, v9, :cond_9f

    .line 327
    if-eq v1, v10, :cond_61

    if-ne v1, v11, :cond_6b

    .line 328
    :cond_61
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    const/4 v1, 0x0

    .line 339
    .end local v2           #hearingDirection:I
    :cond_6b
    :goto_6b
    if-nez v1, :cond_b9

    .line 340
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    const v6, 0x7f0e0383

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 344
    :goto_75
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 347
    .end local v0           #eqListEntries:[Ljava/lang/String;
    .end local v1           #eqListValue:I
    :cond_7e
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 348
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateNoiseReduction()V

    .line 354
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_9c
    return-void

    :cond_9d
    move v5, v7

    .line 319
    goto :goto_1e

    .line 331
    .restart local v0       #eqListEntries:[Ljava/lang/String;
    .restart local v1       #eqListValue:I
    .restart local v2       #hearingDirection:I
    :cond_9f
    if-nez v2, :cond_ac

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const/4 v1, 0x3

    goto :goto_6b

    .line 334
    :cond_ac
    if-ne v2, v6, :cond_6b

    .line 335
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    const/4 v1, 0x4

    goto :goto_6b

    .line 342
    .end local v2           #hearingDirection:I
    :cond_b9
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_75
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 383
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    const-string v1, "voiceprivacy_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 386
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 387
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 389
    .end local v0           #isChecked:Z
    :cond_30
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 371
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    .line 373
    return-void
.end method
