.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$44;,
        Lcom/android/phone/InCallScreen$InCallAudioMode;,
        Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field private static mIsRCVMode:Z

.field private static sIsFlightModeProgressing:Z


# instance fields
.field private DisconnectedUserPhoneNumber:Ljava/lang/String;

.field private UserPhoneNumber:Ljava/lang/String;

.field private actionBar:Landroid/app/ActionBar;

.field private autoCSP:Lcom/android/phone/IAutoCSP;

.field private disconnectedCallName:Ljava/lang/String;

.field private final disconnectedDuringWaitingCallDialog:I

.field public hasHoldingBGCall:Z

.field private imeHandler:Landroid/os/Handler;

.field private isEcidQueryDone:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAnswerCallAfterThisDisconnect:I

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mBlockEndAnimation:Z

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallBarringCheckPanel:Landroid/view/ViewGroup;

.field private mCallBarringPasswd:Landroid/widget/EditText;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallRoamingGuardDialog:Landroid/app/AlertDialog;

.field private mCallbarringCancel:Landroid/widget/Button;

.field private mCallbarringOk:Landroid/widget/Button;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mFlagWaitingCallDialog:I

.field private mFlightModeProgressDialog:Landroid/app/ProgressDialog;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallEqDialog:Landroid/app/AlertDialog;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

.field private mIsActivityVisible:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field mIsMultiWindow:Z

.field private mIsShowingCallGuardAnswerAlert:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mLastInCallScreenResumeTime:J

.field private mLocked:Z

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

.field private mNotForegroundButUpdate:Z

.field private mOrientation:I

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRcsBroadcastReceiver:Lcom/android/phone/RcsBroadcastReceiver;

.field private mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

.field private mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

.field private mRcsInvitation:Lcom/android/phone/RcsInvitation;

.field private mRcsSessionObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

.field private mSlidingDrawerTouchID:I

.field private mSlidingTabTouchID:I

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field public mVE_ContentManager:Lcom/android/phone/VE_ContentManager;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;

.field private mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private final noneWaitingCallDialog:I

.field private final showWaitingCallDialog:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v1, :cond_1b

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1b

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 153
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1d

    :goto_16
    sput-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    .line 377
    sput-boolean v2, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    return-void

    :cond_1b
    move v0, v2

    .line 151
    goto :goto_f

    :cond_1d
    move v1, v2

    .line 153
    goto :goto_16
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 300
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsMultiWindow:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 349
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 350
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 352
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsActivityVisible:Z

    .line 353
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mNotForegroundButUpdate:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 370
    iput v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 371
    iput v2, p0, Lcom/android/phone/InCallScreen;->noneWaitingCallDialog:I

    .line 372
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallScreen;->showWaitingCallDialog:I

    .line 373
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InCallScreen;->disconnectedDuringWaitingCallDialog:I

    .line 374
    iput v2, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 375
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    .line 376
    iput v2, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 378
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 381
    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 382
    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mLastInCallScreenResumeTime:J

    .line 387
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBlockEndAnimation:Z

    .line 389
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 390
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 417
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

    .line 425
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->isEcidQueryDone:Z

    .line 426
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    .line 427
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->DisconnectedUserPhoneNumber:Ljava/lang/String;

    .line 434
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mLocked:Z

    .line 437
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 668
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1012
    new-instance v0, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 7278
    new-instance v0, Lcom/android/phone/InCallScreen$41;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$41;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->imeHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const v10, 0x7f0e0375

    const v9, 0x7f0e0374

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5726
    const-string v0, "InCallScreen: Waiting Call Dialog 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5728
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 5729
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e03f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5747
    :goto_54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5748
    new-array v2, v11, [Ljava/lang/String;

    .line 5750
    if-nez v0, :cond_5f

    .line 5751
    const-string v0, ""

    .line 5752
    :cond_5f
    const-string v3, "%s"

    .line 5753
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 5754
    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    const-string v4, "fa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    const-string v4, "ur"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_168

    :cond_81
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_168

    if-eqz v0, :cond_168

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_168

    .line 5756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5757
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5758
    const-string v6, "fa"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 5759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u202d"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v5, v8

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 5760
    const-string v3, "\u200f\u202d"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5761
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5762
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 5780
    :goto_f4
    new-instance v0, Lcom/android/phone/InCallScreen$37;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$37;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5806
    const v0, 0x7f0e0373

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5808
    const v0, 0x7f0e002e

    new-instance v2, Lcom/android/phone/InCallScreen$38;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$38;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5813
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 5814
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Window;->addFlags(I)V

    .line 5815
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5816
    return-void

    .line 5745
    :cond_126
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_54

    .line 5766
    :cond_13a
    const-string v3, "\u200f\u202d"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5767
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5768
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 5770
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    goto :goto_f4

    .line 5775
    :cond_168
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 5777
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    goto/16 :goto_f4
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .registers 14

    .prologue
    const v1, 0x7f0e0374

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5823
    const-string v0, "InCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5826
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 5827
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 5828
    const v2, 0x7f0e03f4

    .line 5829
    const v0, 0x7f0e03f2

    .line 5831
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 5832
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 5833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e03f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5835
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5849
    :goto_63
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5850
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    .line 5851
    const-string v9, "%s"

    .line 5854
    if-nez v4, :cond_71

    .line 5855
    const-string v4, ""

    .line 5856
    :cond_71
    if-nez v3, :cond_75

    .line 5857
    const-string v3, ""

    .line 5860
    :cond_75
    if-ne v0, v1, :cond_13c

    .line 5861
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "%s"

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    .line 5863
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    .line 5870
    :goto_97
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e03f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v12

    .line 5871
    new-instance v0, Lcom/android/phone/InCallScreen$39;

    invoke-direct {v0, p0, v5, v6}, Lcom/android/phone/InCallScreen$39;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5913
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5915
    const v0, 0x7f0e002e

    new-instance v1, Lcom/android/phone/InCallScreen$40;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$40;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5920
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 5921
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/Window;->addFlags(I)V

    .line 5922
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5923
    return-void

    .line 5837
    :cond_d3
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 5838
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5839
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 5840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e03f1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_63

    .line 5844
    :cond_11b
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5845
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5846
    const v0, 0x7f0e0373

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    .line 5847
    goto/16 :goto_63

    .line 5866
    :cond_13c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    .line 5867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    goto/16 :goto_97
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateExpandedViewState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateScreenOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onIncomingRing()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onNewRingingConnection()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    sput-boolean p0, Lcom/android/phone/InCallScreen;->sIsFlightModeProgressing:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/RcsInvitation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsInvitation:Lcom/android/phone/RcsInvitation;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/InCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .registers 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/phone/InCallScreen;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showRadioOnDialog()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/phone/InCallScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput p1, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    return p1
.end method

.method static synthetic access$3902(Lcom/android/phone/InCallScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput p1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/phone/InCallScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .registers 4

    .prologue
    .line 4013
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 4014
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4015
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4017
    :cond_c
    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4020
    const-string v1, "show vm setting"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 4023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4025
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4026
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4027
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 5409
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_12

    .line 5410
    const-string v1, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5411
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5412
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5414
    :cond_12
    const-string v1, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 5428
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 5429
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 5437
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 5438
    return-void
.end method

.method private checkOtaspStateOnResume()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 6829
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v3, :cond_e

    .line 6830
    const-string v3, "checkOtaspStateOnResume: no OtaUtils instance; nothing to do."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v1, v2

    .line 6934
    :cond_d
    :goto_d
    return v1

    .line 6834
    :cond_e
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_22

    .line 6838
    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "checkOtaspStateOnResume: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6846
    :cond_22
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v0

    .line 6853
    .local v0, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v3, :cond_32

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v3, :cond_4f

    :cond_32
    const/4 v1, 0x1

    .line 6857
    .local v1, otaspUiActive:Z
    :goto_33
    if-eqz v1, :cond_60

    .line 6864
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/phone/OtaUtils;->updateUiWidgets(Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V

    .line 6868
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_51

    .line 6869
    const-string v2, "checkOtaspStateOnResume - in OTA Normal mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6870
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_d

    .end local v1           #otaspUiActive:Z
    :cond_4f
    move v1, v2

    .line 6853
    goto :goto_33

    .line 6871
    .restart local v1       #otaspUiActive:Z
    :cond_51
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_d

    .line 6873
    const-string v2, "checkOtaspStateOnResume - in OTA END mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6874
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_d

    .line 6889
    :cond_60
    const-string v3, "checkOtaspStateOnResume - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6890
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6892
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_d

    .line 6893
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_d
.end method

.method private closeDialpadInternal(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 4501
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4503
    const-string v0, "vi_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4504
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 4511
    :cond_17
    if-nez p1, :cond_1f

    .line 4512
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 4514
    :cond_1f
    return-void
.end method

.method private controlActionBar()V
    .registers 3

    .prologue
    .line 7504
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsActivityVisible:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1a

    .line 7505
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7506
    const-string v0, "actionBar hide"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7507
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 7516
    :cond_1a
    :goto_1a
    return-void

    .line 7508
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1a

    .line 7509
    const-string v0, "actionBar show"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7510
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 7513
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->invalidateOptionsMenu()V

    goto :goto_1a
.end method

.method private createWildPromptView()Landroid/view/View;
    .registers 10

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x4160

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x5

    .line 3585
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3586
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3587
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3589
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3593
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3594
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3595
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3596
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3598
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3600
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 3601
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3602
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3603
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3604
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3605
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 3606
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v2, 0x1080018

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3608
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3611
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3613
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3615
    return-object v0
.end method

.method private delayedCleanupAfterDisconnect()V
    .registers 4

    .prologue
    .line 4056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4070
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4071
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4072
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/RcsShare;->disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    :cond_43
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4084
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_58
    const/4 v0, 0x1

    .line 4086
    :goto_59
    if-eqz v0, :cond_63

    .line 4087
    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4168
    :goto_60
    return-void

    .line 4084
    :cond_61
    const/4 v0, 0x0

    goto :goto_59

    .line 4090
    :cond_63
    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4094
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_a8

    .line 4095
    const-string v0, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4113
    const-string v0, "- Post-call behavior:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mLastDisconnectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isPhoneStateRestricted() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4164
    :cond_a8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4166
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_60
.end method

.method private dismissAllDialogs()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5447
    const-string v0, "dismissAllDialogs()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 5454
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 5455
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5456
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5457
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 5459
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    .line 5460
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5461
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5462
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5464
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_37

    .line 5465
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5466
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5467
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5469
    :cond_37
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_47

    .line 5470
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5471
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5472
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 5474
    :cond_47
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_57

    .line 5475
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5476
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5477
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 5479
    :cond_57
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_67

    .line 5480
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5481
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5482
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 5484
    :cond_67
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_77

    .line 5485
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5486
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5487
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 5489
    :cond_77
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_8b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_98

    :cond_8b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_98

    .line 5492
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 5494
    :cond_98
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a8

    .line 5495
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5496
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5497
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 5499
    :cond_a8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b8

    .line 5500
    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5501
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5502
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 5504
    :cond_b8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c6

    .line 5505
    iget v0, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e8

    .line 5507
    const-string v0, "- Don\'t DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5515
    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d6

    .line 5516
    const-string v0, "- DISMISSING mWebExEmailSelectionDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5517
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5518
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    .line 5520
    :cond_d6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e4

    .line 5521
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    .line 5523
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    .line 5525
    :cond_e4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissInCallEqDialog()V

    .line 5526
    return-void

    .line 5510
    :cond_e8
    const-string v0, "- DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5511
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5512
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    goto :goto_c6
.end method

.method private dismissInCallEqDialog()V
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallEqDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 765
    const-string v0, "- DISMISSING mInCallEqDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallEqDialog:Landroid/app/AlertDialog;

    .line 769
    :cond_11
    return-void
.end method

.method private dismissMmiStartedDialog()V
    .registers 3

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 3428
    const-string v0, "dismissMmiStartedDialog().."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3429
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3432
    :cond_12
    return-void
.end method

.method private dismissProgressIndication()V
    .registers 2

    .prologue
    .line 5600
    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5601
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 5602
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 5605
    :cond_11
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .registers 2

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 4031
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4034
    :cond_c
    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4035
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4036
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4038
    :cond_1a
    return-void
.end method

.method private dumpBluetoothState()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 6706
    const-string v0, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6712
    const-string v0, "="

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6713
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_e5

    .line 6714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6715
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_df

    .line 6716
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 6718
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_de

    .line 6719
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6730
    :cond_de
    :goto_de
    return-void

    .line 6725
    :cond_df
    const-string v0, "= mBluetoothHeadset is null"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_de

    .line 6728
    :cond_e5
    const-string v0, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_de
.end method

.method private endInCallScreenSession(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1844
    if-eqz p1, :cond_3e

    .line 1845
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1876
    :cond_33
    :goto_33
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setBlockEndAnimation(Z)V

    .line 1877
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1879
    sput-boolean v2, Lcom/android/phone/InCallScreen;->sIsFlightModeProgressing:Z

    .line 1880
    return-void

    .line 1854
    :cond_3e
    const/4 v0, 0x1

    :try_start_3f
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_42} :catch_73

    .line 1863
    :goto_42
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1864
    invoke-static {}, Lcom/android/phone/EcidClient;->endAllLookupQueries()V

    .line 1867
    :cond_4d
    const-string v0, "vi_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1869
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_33

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_33

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBlockEndAnimation:Z

    if-nez v0, :cond_33

    .line 1872
    sget-object v0, Lcom/android/phone/CallAnimation$AnimationType;->END_CALL:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->startAnimation(Lcom/android/phone/CallAnimation$AnimationType;)Z

    goto :goto_33

    .line 1855
    :catch_73
    move-exception v0

    .line 1857
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1858
    const-string v0, "InCallScreen"

    const-string v1, "moveTaskToBack NullPointException so FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_42
.end method

.method private handleCallKey()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2288
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 2289
    .local v3, hasRingingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 2290
    .local v1, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 2292
    .local v2, hasHoldingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2293
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_60

    .line 2297
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2300
    .local v0, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    const-string v5, "usa_spr_roaming_feature"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v5, v5, Lcom/android/phone/PhoneApp;->mShowCallRoamingGuardDialog:Z

    if-nez v5, :cond_36

    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    if-eqz v5, :cond_37

    .line 2370
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_36
    :goto_36
    return v7

    .line 2306
    .restart local v0       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_37
    if-eqz v3, :cond_42

    .line 2308
    const-string v5, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2309
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_36

    .line 2311
    :cond_42
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_53

    if-eqz v1, :cond_53

    .line 2314
    const-string v5, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2316
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_36

    .line 2317
    :cond_53
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_36

    .line 2320
    const-string v5, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2321
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_36

    .line 2323
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_60
    if-eq v4, v7, :cond_65

    const/4 v5, 0x3

    if-ne v4, v5, :cond_96

    .line 2325
    :cond_65
    if-eqz v3, :cond_72

    .line 2336
    const-string v5, "InCallScreen"

    const-string v6, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2342
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_36

    .line 2343
    :cond_72
    if-eqz v1, :cond_7f

    if-eqz v2, :cond_7f

    .line 2345
    const-string v5, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2346
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_36

    .line 2347
    :cond_7f
    if-eqz v2, :cond_90

    .line 2350
    const-string v5, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2351
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_36

    .line 2361
    :cond_90
    const-string v5, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_36

    .line 2365
    :cond_96
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
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2209
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2219
    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method private handleMissingVoiceMailNumber()V
    .registers 6

    .prologue
    .line 3972
    const-string v0, "handleMissingVoiceMailNumber"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3974
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3975
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3977
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3978
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3980
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e002a

    new-instance v4, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e003d

    new-instance v4, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4006
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4009
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4010
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3444
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3446
    if-eqz v0, :cond_35

    .line 3447
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 3450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3453
    sget-object v2, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_82

    .line 3502
    :cond_35
    :goto_35
    return-void

    .line 3455
    :pswitch_36
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 3456
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v1, :cond_44

    .line 3461
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3463
    :cond_44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 3464
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneIfNeeded(C)V

    goto :goto_35

    .line 3475
    :pswitch_4d
    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3476
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 3477
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 3478
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_35

    .line 3482
    :pswitch_5f
    const-string v1, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3483
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 3484
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_35

    .line 3488
    :pswitch_6d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    goto :goto_35

    .line 3493
    :pswitch_73
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 3494
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 3495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_35

    .line 3453
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_36
        :pswitch_4d
        :pswitch_5f
        :pswitch_6d
        :pswitch_73
    .end packed-switch
.end method

.method private hardKeyBoardHiddenNoForSpeaker()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 7536
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_3a

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-nez v0, :cond_3a

    .line 7541
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 7542
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 7544
    :cond_3a
    return-void
.end method

.method private initCallBarringCheckPanel()V
    .registers 4

    .prologue
    .line 7283
    const-string v0, "initCallBarringCheckPanel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7284
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_3f

    .line 7285
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    .line 7286
    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    .line 7287
    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallbarringOk:Landroid/widget/Button;

    .line 7288
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallbarringOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7289
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallbarringCancel:Landroid/widget/Button;

    .line 7290
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallbarringCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7292
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 7293
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7294
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7295
    return-void
.end method

.method private initInCallScreen()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2126
    const-string v0, "initInCallScreen()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2129
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2131
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2132
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    .line 2134
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2b

    .line 2135
    const-string v0, "actionBar is not null"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2136
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->setActionBar()V

    .line 2141
    :cond_2b
    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCallCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 2145
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_73

    .line 2146
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_73

    .line 2148
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->StopRecodingIcon()V

    .line 2150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iput-object v1, v0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 2152
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->updateRecodingIcon()V

    .line 2157
    :cond_73
    new-instance v0, Lcom/android/phone/InCallMenu;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    .line 2160
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2161
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2162
    if-eqz v0, :cond_9b

    .line 2163
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2164
    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RcsInvitation;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsInvitation:Lcom/android/phone/RcsInvitation;

    .line 2171
    :cond_9b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 2174
    new-instance v0, Lcom/android/phone/InCallControlState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 2177
    new-instance v0, Lcom/android/phone/ManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    .line 2180
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2181
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Landroid/view/ViewStub;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 2183
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v0, :cond_d8

    .line 2184
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->openDialpadInternal(Z)V

    .line 2188
    :goto_cb
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 2189
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 2190
    return-void

    .line 2186
    :cond_d8
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    goto :goto_cb
.end method

.method private initInCallTouchUi()V
    .registers 3

    .prologue
    .line 6485
    const-string v0, "initInCallTouchUi()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6490
    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    .line 6491
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 6495
    new-instance v0, Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/phone/RespondViaSmsManager;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    .line 6496
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/RespondViaSmsManager;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 6497
    return-void
.end method

.method private internalHangup()V
    .registers 4

    .prologue
    .line 6039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 6040
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalHangup()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6045
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6060
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2c

    .line 6062
    const-string v1, "InCallScreen"

    const-string v2, "internalHangup(): phone is already IDLE!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6085
    :cond_2c
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1995
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2117
    :cond_9
    :goto_9
    return-void

    .line 1998
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1999
    const-string v1, "internalResolveIntent: "

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2020
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 2031
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2036
    const-string v0, "com.android.phone.ShowDialpad"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2041
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 2043
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 2044
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 2048
    if-eqz v0, :cond_77

    if-nez v1, :cond_77

    if-eqz v2, :cond_77

    .line 2049
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 2055
    :cond_77
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2056
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2059
    :cond_82
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2060
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall isRinging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_9

    .line 2064
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->normalWindow()Z

    goto/16 :goto_9

    .line 2071
    :cond_c1
    const-string v1, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 2077
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 2078
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTION_DISPLAY_ACTIVATION_SCREEN intent on non-OTASP-capable device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_ea
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2084
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_9

    .line 2086
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v3, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 2087
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto/16 :goto_9

    .line 2094
    :cond_10d
    const-string v1, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 2098
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ACTION_PERFORM_CDMA_PROVISIONING received by InCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2101
    :cond_12e
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_157

    .line 2106
    :cond_13e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2108
    :cond_157
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 2111
    const-string v0, "InCallScreen"

    const-string v1, "internalResolveIntent: got launched with ACTION_UNDEFINED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2114
    :cond_168
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method private internalRespondViaSms()V
    .registers 4

    .prologue
    .line 6020
    const-string v1, "internalRespondViaSms()..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6021
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 6025
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6027
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v1, v0}, Lcom/android/phone/RespondViaSmsManager;->showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V

    .line 6032
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSilenceRinger()V

    .line 6033
    return-void
.end method

.method private internalSilenceRinger()V
    .registers 4

    .prologue
    .line 6007
    const-string v1, "internalSilenceRinger()..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6008
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 6009
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6011
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 6013
    :cond_13
    return-void
.end method

.method private internalSwapCalls()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 6091
    const-string v0, "internalSwapCalls()..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6093
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6094
    const-string v0, "GATE"

    const-string v1, "<GATE-M>SWAP_CALL</GATE-M>"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    :cond_13
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    .line 6106
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 6111
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 6113
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6114
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "voice_call_recording_second_call_ongoing"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 6115
    :cond_3c
    const-string v0, "switchHoldingAndActive - will not stop recording"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6125
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    .line 6126
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 6127
    if-eqz v0, :cond_59

    .line 6128
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 6132
    :cond_59
    return-void

    .line 6118
    :cond_5a
    const-string v0, "switchHoldingAndActive - stop recording"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    goto :goto_41
.end method

.method private isSystemKeyEventRequested(I)Z
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 7528
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 7532
    :goto_a
    return v1

    .line 7529
    :catch_b
    move-exception v0

    .line 7530
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemKeyEventRequested - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7532
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private launchContact()V
    .registers 6

    .prologue
    .line 4630
    const-string v2, "launchContact()"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4631
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4634
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4635
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.jcontacts"

    const-string v4, "com.android.jcontacts.activities.PeopleActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4642
    :goto_1e
    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_21} :catch_2f

    .line 4646
    :goto_21
    return-void

    .line 4638
    :cond_22
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1e

    .line 4643
    :catch_2f
    move-exception v0

    .line 4644
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_21
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 7364
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7365
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 7368
    const-string v0, "InCallScreen"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7369
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0x6c

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2932
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2933
    if-nez v0, :cond_12

    .line 2934
    const-string v0, "onDisconnect : connection is null"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3334
    :cond_11
    :goto_11
    return-void

    .line 2937
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    .line 2938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: connection \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showing screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2942
    const-string v0, "onDisconnect : Video call is activing. should not be updated"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_11

    .line 2946
    :cond_6c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_bf

    move v2, v3

    .line 2948
    :goto_73
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v10, :cond_c1

    move v5, v3

    .line 2949
    :goto_7c
    if-eqz v5, :cond_3db

    .line 2952
    if-eqz v2, :cond_3db

    .line 2953
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "call_auto_retry"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2957
    :goto_90
    const-string v7, "block_data_during_call"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 2958
    if-eqz v2, :cond_9d

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionStatus(Z)V

    .line 2961
    :cond_9d
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v7, v7, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v7, v8, :cond_c3

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_c3

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v7, :cond_c3

    .line 2964
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2965
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto/16 :goto_11

    :cond_bf
    move v2, v4

    .line 2946
    goto :goto_73

    :cond_c1
    move v5, v4

    .line 2948
    goto :goto_7c

    .line 2967
    :cond_c3
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v7, v7, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v7, v8, :cond_db

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_e2

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v7, :cond_e2

    .line 2970
    :cond_db
    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2977
    :cond_e2
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 2981
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2986
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_f8

    .line 2987
    const v0, 0x7f0e0018

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_11

    .line 2989
    :cond_f8
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_104

    .line 2990
    const v0, 0x7f0e0017

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_11

    .line 2992
    :cond_104
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_110

    .line 2993
    const v0, 0x7f0e0019

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_11

    .line 2995
    :cond_110
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_11c

    .line 2996
    const v0, 0x7f0e001a

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_11

    .line 2998
    :cond_11c
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_128

    .line 2999
    const v0, 0x7f0e001b

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_11

    .line 3002
    :cond_128
    const-string v7, "dcm_dsac_feature"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_141

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_141

    .line 3004
    const-string v0, "onDisconnect: cause is CDMA_ACCESS_BLOCKED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3005
    const v0, 0x7f0e001b

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_11

    .line 3009
    :cond_141
    if-eqz v5, :cond_162

    .line 3010
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 3011
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_243

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_243

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_243

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_243

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_243

    .line 3016
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallLostDialog(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 3050
    :cond_162
    :goto_162
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 3051
    if-eqz v7, :cond_1b5

    .line 3060
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3061
    if-eqz v1, :cond_19b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_19b

    .line 3062
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_178
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3063
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_178

    .line 3072
    const-string v1, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3073
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3074
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3079
    :cond_19b
    iget v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    if-lez v1, :cond_1b5

    .line 3080
    iget v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 3082
    iget v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    if-nez v1, :cond_1b5

    .line 3083
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 3084
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3088
    :cond_1b5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3089
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 3090
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1db

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 3091
    const-string v1, "call disconnected, so stop recording."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3092
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 3108
    :cond_1db
    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 3112
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_1e5

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_283

    :cond_1e5
    if-eqz v2, :cond_283

    move v1, v3

    .line 3117
    :goto_1e8
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v5, :cond_286

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager;->isShowingPopup()Z

    move-result v5

    if-eqz v5, :cond_286

    move v5, v3

    .line 3125
    :goto_1f5
    const-string v8, "lawmo_lock"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_208

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v8

    if-eqz v8, :cond_208

    move v1, v3

    .line 3129
    :cond_208
    if-eqz v1, :cond_289

    if-eqz v5, :cond_289

    .line 3130
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_215

    const-string v1, "- onDisconnect: Respond-via-SMS dialog is still being displayed..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3322
    :cond_215
    :goto_215
    iget v1, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    if-ne v1, v3, :cond_234

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_234

    .line 3323
    iput v10, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 3324
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    .line 3325
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->DisconnectedUserPhoneNumber:Ljava/lang/String;

    .line 3326
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 3328
    :cond_234
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3331
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_11

    .line 3017
    :cond_243
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_24b

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_162

    :cond_24b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_162

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_162

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_162

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_162

    .line 3023
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v5, v5, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    if-eqz v5, :cond_26e

    .line 3025
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallLostDialog(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 3026
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v4, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_162

    .line 3028
    :cond_26e
    if-nez v1, :cond_27b

    .line 3030
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallLostDialog(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 3031
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v4, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_162

    .line 3035
    :cond_27b
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v3, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_162

    :cond_283
    move v1, v4

    .line 3112
    goto/16 :goto_1e8

    :cond_286
    move v5, v4

    .line 3117
    goto/16 :goto_1f5

    .line 3141
    :cond_289
    if-eqz v1, :cond_29e

    .line 3142
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_294

    const-string v1, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3148
    :cond_294
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3149
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    goto/16 :goto_215

    .line 3151
    :cond_29e
    const-string v1, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3157
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v5, "CscFeature_RIL_EnableTotalCallTime"

    invoke-virtual {v1, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b4

    .line 3158
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->updateTotalCallTime()V

    .line 3162
    :cond_2b4
    if-eqz v2, :cond_373

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v1

    if-nez v1, :cond_2c6

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v1

    if-eqz v1, :cond_373

    .line 3164
    :cond_2c6
    const-string v1, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3165
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3174
    :cond_2d0
    :goto_2d0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3178
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 3179
    if-nez v1, :cond_345

    .line 3180
    const-string v1, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3184
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2f0

    .line 3185
    const-string v1, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3186
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3187
    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3189
    :cond_2f0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_300

    .line 3190
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3191
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3192
    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3194
    :cond_300
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_310

    .line 3195
    const-string v1, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3196
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3197
    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3199
    :cond_310
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_320

    .line 3200
    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3201
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3202
    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3205
    :cond_320
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 3206
    const-string v5, "auto_unhold"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_339

    .line 3207
    if-eqz v1, :cond_339

    .line 3209
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 3212
    :cond_339
    if-eqz v1, :cond_387

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_387

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_387

    .line 3214
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 3221
    :cond_345
    :goto_345
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_355

    .line 3222
    const-string v1, "- DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3223
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3224
    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 3226
    :cond_355
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissInCallEqDialog()V

    .line 3238
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v10, :cond_38a

    .line 3239
    if-nez v2, :cond_38a

    .line 3243
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3247
    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_11

    .line 3166
    :cond_373
    const-string v1, "force_display_endcall_screen"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d0

    .line 3167
    const-string v1, "- onDisconnect: clear disconnected..."

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3168
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    goto/16 :goto_2d0

    .line 3216
    :cond_387
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    goto :goto_345

    .line 3266
    :cond_38a
    if-eqz v2, :cond_3bb

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v1

    if-nez v1, :cond_3bb

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v1

    if-eqz v1, :cond_3bb

    .line 3267
    const-string v0, "Force waking up the screen to let users see \"disconnected\" state"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3268
    if-eqz v7, :cond_3a4

    .line 3269
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v7}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    .line 3274
    :cond_3a4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v3, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    .line 3275
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 3276
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3278
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto/16 :goto_11

    .line 3290
    :cond_3bb
    sget-object v1, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3de

    .line 3309
    const/16 v1, 0x1388

    .line 3312
    :goto_3c8
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 3313
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_215

    .line 3302
    :pswitch_3d5
    const/16 v1, 0x1194

    .line 3303
    goto :goto_3c8

    .line 3306
    :pswitch_3d8
    const/16 v1, 0x1194

    .line 3307
    goto :goto_3c8

    :cond_3db
    move v1, v4

    goto/16 :goto_90

    .line 3290
    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_3d5
        :pswitch_3d8
        :pswitch_3d8
    .end packed-switch
.end method

.method private onHoldClick()V
    .registers 5

    .prologue
    .line 4280
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4281
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 4282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHoldClick: hasActiveCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasHoldingCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4286
    if-eqz v0, :cond_4b

    if-nez v1, :cond_4b

    .line 4288
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 4294
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4295
    const-string v0, "GATE"

    const-string v1, "<GATE-M>HOLD_CALL</GATE-M>"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    :cond_46
    :goto_46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    .line 4315
    return-void

    .line 4298
    :cond_4b
    if-nez v0, :cond_46

    if-eqz v1, :cond_46

    .line 4300
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_46
.end method

.method private onIncomingRing()V
    .registers 2

    .prologue
    .line 7141
    const-string v0, "onIncomingRing()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7145
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_12

    .line 7146
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onIncomingRing()V

    .line 7148
    :cond_12
    return-void
.end method

.method private onMMICancel()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3374
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3377
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 3388
    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3389
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3391
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3392
    const-string v0, "onMMICancel, but Call exist..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3396
    :goto_2a
    return-void

    .line 3395
    :cond_2b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_2a
.end method

.method private onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3408
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3409
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 3410
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v1, p1, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 3424
    :cond_12
    :goto_12
    return-void

    .line 3411
    :cond_13
    if-ne v0, v2, :cond_12

    .line 3412
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_12

    .line 3413
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "Got MMI_COMPLETE, finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3414
    :cond_26
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3416
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_41

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 3417
    const-string v0, "Got MMI_COMPLETE, but Call exist..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_12

    .line 3421
    :cond_41
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_12
.end method

.method private onMuteClick()V
    .registers 4

    .prologue
    .line 4344
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x1

    .line 4345
    .local v0, newMuteState:Z
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMuteClick(): newMuteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4346
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4347
    return-void

    .line 4344
    .end local v0           #newMuteState:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private onNewRingingConnection()V
    .registers 3

    .prologue
    .line 7161
    const-string v0, "onNewRingingConnection()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 7178
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 7179
    return-void
.end method

.method private onOpenCloseDialpad()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 4475
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "onOpenCloseDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4476
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4477
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    .line 4481
    :goto_15
    const-string v0, "proximity_sensor_control_by_keypad"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4482
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 4484
    :cond_28
    return-void

    .line 4479
    :cond_29
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->openDialpadInternal(Z)V

    goto :goto_15
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2846
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2849
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 2850
    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 2858
    :cond_27
    :goto_27
    const-string v1, "barge_in"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2859
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v1

    if-ne v1, v4, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_44

    .line 2862
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 2869
    :cond_44
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_8b

    .line 2870
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 2871
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 2872
    const-string v0, "force_display_endcall_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2873
    const-string v0, "onPhoneStateChanged: Activity not in foreground! But continue..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2913
    :goto_6c
    return-void

    .line 2852
    :cond_6d
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_27

    .line 2854
    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto :goto_27

    .line 2877
    :cond_85
    const-string v0, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_6c

    .line 2882
    :cond_8b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateExpandedViewState()V

    .line 2885
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2886
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    .line 2895
    :cond_99
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2899
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2902
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_af

    .line 2903
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2904
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2907
    :cond_af
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-eq v0, v1, :cond_d1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_d4

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v0, v1, :cond_d4

    .line 2909
    :cond_d1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->hardKeyBoardHiddenNoForSpeaker()V

    .line 2911
    :cond_d4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 2912
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    goto :goto_6c
.end method

.method private onWebExClick()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 4565
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 4567
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_6b

    .line 4568
    invoke-static {p0, v7}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 4569
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v6, :cond_7c

    .line 4570
    iget-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v0, v10, :cond_7c

    .line 4571
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 4572
    .local v1, EMAIL_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4574
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_7c

    .line 4575
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 4576
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4578
    :cond_46
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4579
    .local v9, email:Ljava/lang/String;
    if-eqz v9, :cond_57

    .line 4580
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4582
    :cond_57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_46

    .line 4583
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4585
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_6c

    .line 4586
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showEmailSelectDialog()V

    .line 4598
    .end local v1           #EMAIL_URI:Landroid/net/Uri;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #email:Ljava/lang/String;
    :cond_6b
    :goto_6b
    return-void

    .line 4588
    .restart local v1       #EMAIL_URI:Landroid/net/Uri;
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #email:Ljava/lang/String;
    :cond_6c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    goto :goto_6b

    .line 4592
    .end local v9           #email:Ljava/lang/String;
    :cond_79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4596
    .end local v1           #EMAIL_URI:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_7c
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    goto :goto_6b
.end method

.method private openDialpadInternal(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 4495
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 4496
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 4497
    return-void
.end method

.method private phoneIsInUse()Z
    .registers 3

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private registerForPhoneStates()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1912
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_50

    .line 1913
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1914
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1924
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1925
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1926
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1927
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1928
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1929
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1932
    :cond_50
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 7
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 7520
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 7524
    :goto_a
    return v1

    .line 7521
    :catch_b
    move-exception v0

    .line 7522
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7524
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private setActionBar()V
    .registers 4

    .prologue
    .line 4555
    const-string v0, "setActionBar()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4556
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    const-string v1, "Phone(0)"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4557
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4558
    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4560
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 4561
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->actionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 4562
    return-void
.end method

.method private setContentView()V
    .registers 3

    .prologue
    const v1, 0x7f040044

    .line 994
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 995
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 996
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 1003
    :goto_17
    return-void

    .line 998
    :cond_18
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    goto :goto_17

    .line 1001
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    goto :goto_17
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 6146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6147
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 6149
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fc

    .line 6260
    :cond_28
    :goto_28
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6261
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateRcsUi()V

    .line 6265
    :cond_33
    :goto_33
    return-void

    .line 6151
    :pswitch_34
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 6152
    const-string v0, "InCallScreen"

    const-string v1, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6154
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_33

    .line 6157
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 6160
    if-eqz v0, :cond_5b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_79

    .line 6161
    :cond_5b
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6165
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_33

    .line 6174
    :cond_79
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 6176
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 6180
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 6189
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 6191
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    goto :goto_28

    .line 6201
    :pswitch_a2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 6202
    const-string v0, "GATE"

    const-string v1, "<GATE-M>DISCONNECT_CALL</GATE-M>"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6205
    :cond_af
    :pswitch_af
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 6206
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_28

    .line 6210
    :pswitch_bc
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    goto/16 :goto_28

    .line 6215
    :pswitch_c7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    goto/16 :goto_28

    .line 6244
    :pswitch_d2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 6248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_f5

    .line 6249
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_28

    .line 6250
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto/16 :goto_28

    .line 6253
    :cond_f5
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 6149
    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_34
        :pswitch_a2
        :pswitch_af
        :pswitch_bc
        :pswitch_c7
        :pswitch_d2
    .end packed-switch
.end method

.method private showAutoRejectOutgoingCallAttentionDialog()V
    .registers 6

    .prologue
    .line 5087
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e073b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5091
    new-instance v1, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5100
    new-instance v2, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5106
    new-instance v3, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5112
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x1040014

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x1010355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0e0057

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5121
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5122
    return-void
.end method

.method private showCallLostDialog(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .registers 4
    .parameter

    .prologue
    .line 5316
    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5319
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_f

    .line 5320
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5340
    :cond_e
    :goto_e
    return-void

    .line 5325
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    .line 5326
    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_e

    .line 5330
    :cond_19
    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_e

    .line 5335
    :cond_25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 5339
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e
.end method

.method private showCallRoamingGuardDialog(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 7309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/InCallScreen$43;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$43;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$42;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$42;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    .line 7360
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7361
    return-void
.end method

.method private showEmailSelectDialog()V
    .registers 5

    .prologue
    .line 4601
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4602
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4603
    const v2, 0x7f0e02b5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4609
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    .line 4610
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4611
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4612
    return-void
.end method

.method private showEmergencyCallConfirmationDialog()V
    .registers 6

    .prologue
    .line 5125
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5130
    new-instance v1, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5137
    new-instance v2, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5143
    new-instance v3, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5149
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0e03ee

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0e002a

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5154
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5156
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5157
    return-void
.end method

.method private showExitingECMDialog()V
    .registers 5

    .prologue
    .line 5375
    const-string v0, "InCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5377
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    .line 5378
    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5379
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 5387
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 5388
    new-instance v1, Lcom/android/phone/InCallScreen$35;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/InCallScreen$35;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 5392
    new-instance v2, Lcom/android/phone/InCallScreen$36;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$36;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 5398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e01f7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0e002a

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 5403
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5405
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5406
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f0e002a

    const/4 v6, 0x2

    .line 5163
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5164
    const-string v1, "limited_service_state"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5165
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->changeRtsMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5167
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGenericErrorDialog(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 5169
    const v1, 0x7f0e01ac

    if-ne p1, v1, :cond_99

    .line 5173
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4b

    .line 5174
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5175
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5176
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5183
    :cond_4b
    new-instance v1, Lcom/android/phone/InCallScreen$25;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$25;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5199
    new-instance v2, Lcom/android/phone/InCallScreen$26;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$26;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5205
    new-instance v3, Lcom/android/phone/InCallScreen$27;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$27;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5211
    new-instance v4, Lcom/android/phone/InCallScreen$28;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$28;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5226
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5232
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 5233
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5234
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0e03ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 5235
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5276
    :goto_98
    return-void

    .line 5242
    :cond_99
    if-eqz p2, :cond_cb

    .line 5243
    new-instance v2, Lcom/android/phone/InCallScreen$29;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$29;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5247
    new-instance v1, Lcom/android/phone/InCallScreen$30;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$30;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5264
    :goto_a5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5272
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 5275
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_98

    .line 5252
    :cond_cb
    new-instance v2, Lcom/android/phone/InCallScreen$31;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$31;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5256
    new-instance v1, Lcom/android/phone/InCallScreen$32;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$32;-><init>(Lcom/android/phone/InCallScreen;)V

    goto :goto_a5
.end method

.method private showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3566
    const v2, 0x7f0e0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3567
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3569
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_27

    .line 3570
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3571
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3575
    :cond_27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3578
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3580
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3581
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3582
    return-void
.end method

.method private showProgressIndication(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5585
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    .line 5586
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 5587
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5588
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5589
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5590
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5591
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 5592
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5593
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 5594
    return-void
.end method

.method private showRadioOnDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 5279
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    .line 5282
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e03ef

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5283
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5285
    new-instance v0, Lcom/android/phone/InCallScreen$33;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$33;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5292
    new-instance v1, Lcom/android/phone/InCallScreen$34;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$34;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5303
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 5304
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5306
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5309
    sput-boolean v4, Lcom/android/phone/InCallScreen;->sIsFlightModeProgressing:Z

    .line 5310
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5311
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 5312
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f0e0718

    const v4, 0x7f0e070d

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 4845
    sget-object v0, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_25c

    .line 5065
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusIndication: unexpected status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4849
    :pswitch_2e
    const-string v0, "InCallScreen"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    :cond_35
    :goto_35
    :pswitch_35
    return-void

    .line 4861
    :pswitch_36
    const v0, 0x7f0e01ac

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_35

    .line 4869
    :pswitch_3d
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4871
    :cond_4d
    const v0, 0x7f0e01ae

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_35

    .line 4874
    :cond_54
    const v0, 0x7f0e01ad

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_35

    .line 4881
    :pswitch_5b
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 4882
    const-string v0, "gsm.sim.state"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.sim.state =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4884
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 4885
    const v0, 0x7f0e0601

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_35

    .line 4889
    :cond_90
    const v0, 0x7f0e01af

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_35

    .line 4897
    :pswitch_97
    const v0, 0x7f0e01b0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_35

    .line 4910
    :pswitch_9e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_35

    .line 4911
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v1, 0x7f0e01b2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_35

    .line 4921
    :pswitch_b5
    const v0, 0x7f0e01b1

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4928
    :pswitch_bd
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto/16 :goto_35

    .line 4942
    :pswitch_c2
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4943
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initCallBarringCheckPanel()V

    .line 4944
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4945
    const-string v0, "Outgoing Password"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4947
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 4948
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4949
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_f8

    .line 4950
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4951
    :cond_f8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->imeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_35

    .line 4966
    :pswitch_106
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    goto/16 :goto_35

    .line 4970
    :pswitch_10b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showAutoRejectOutgoingCallAttentionDialog()V

    goto/16 :goto_35

    .line 4974
    :pswitch_110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showEmergencyCallConfirmationDialog()V

    goto/16 :goto_35

    .line 4979
    :pswitch_115
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 4980
    const v0, 0x7f0e0715

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4982
    :cond_125
    const v0, 0x7f0e070a

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4985
    :pswitch_12d
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 4986
    const v0, 0x7f0e0716

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4988
    :cond_13d
    const v0, 0x7f0e070b

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4991
    :pswitch_145
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 4992
    const v0, 0x7f0e0717

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4994
    :cond_155
    const v0, 0x7f0e070c

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4997
    :pswitch_15d
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 4998
    invoke-direct {p0, v6, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5000
    :cond_16a
    invoke-direct {p0, v4, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5003
    :pswitch_16f
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 5004
    const v0, 0x7f0e0719

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5006
    :cond_17f
    const v0, 0x7f0e070e

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5009
    :pswitch_187
    const v0, 0x7f0e070f

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5012
    :pswitch_18f
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 5013
    invoke-direct {p0, v6, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5015
    :cond_19c
    invoke-direct {p0, v4, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5018
    :pswitch_1a1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTSIM()Z

    move-result v0

    if-nez v0, :cond_1af

    .line 5019
    const v0, 0x7f0e0704

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5022
    :cond_1af
    const v0, 0x7f0e06fc

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5025
    :pswitch_1b7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 5027
    const-string v0, "1"

    const-string v1, "REG"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5028
    const-string v1, "1"

    const-string v2, "AUTH"

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetLGTReg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isSetLGTAuth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5032
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v2

    .line 5033
    if-eqz v2, :cond_220

    .line 5034
    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGT_REG_AUTH_FAIL: rtsIdleValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5037
    :cond_220
    if-nez v0, :cond_22a

    .line 5038
    const v0, 0x7f0e04cd

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5039
    :cond_22a
    if-nez v1, :cond_35

    .line 5040
    const v0, 0x7f0e04ce

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5047
    :pswitch_234
    const v0, 0x7f0e01b4

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5051
    :pswitch_23c
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5052
    const v0, 0x7f0e06ff

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 5057
    :pswitch_24c
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5058
    const v0, 0x7f0e0700

    invoke-direct {p0, v0, v5}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_35

    .line 4845
    :pswitch_data_25c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_36
        :pswitch_3d
        :pswitch_5b
        :pswitch_97
        :pswitch_9e
        :pswitch_b5
        :pswitch_bd
        :pswitch_35
        :pswitch_c2
        :pswitch_106
        :pswitch_10b
        :pswitch_110
        :pswitch_115
        :pswitch_12d
        :pswitch_145
        :pswitch_15d
        :pswitch_16f
        :pswitch_187
        :pswitch_18f
        :pswitch_1a1
        :pswitch_1b7
        :pswitch_234
        :pswitch_234
        :pswitch_23c
        :pswitch_24c
    .end packed-switch
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogChoice: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3511
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3557
    :goto_28
    return-void

    .line 3515
    :cond_29
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3517
    const v2, 0x7f0e0035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3518
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_50

    .line 3522
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3523
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3527
    :cond_50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0038

    new-instance v2, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0039

    new-instance v2, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3556
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_28
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter

    .prologue
    .line 3619
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 3621
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    .line 3622
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3623
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3624
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3627
    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0037

    new-instance v2, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3654
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3656
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3658
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3659
    return-void
.end method

.method private startWebExActivity(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 4615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWebExActivity()... email : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4616
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4617
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4618
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4619
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4621
    if-eqz p1, :cond_50

    .line 4622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wbx://instant?attendees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&nativecall=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4626
    :goto_4c
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4627
    return-void

    .line 4624
    :cond_50
    const-string v1, "wbx://instant?attendees=&nativecall=true"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4c
.end method

.method private stopTimer()V
    .registers 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 2123
    :cond_9
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 3914
    const/4 v3, 0x0

    .line 3915
    .local v3, updateSuccessful:Z
    const-string v5, "syncWithPhoneState()..."

    invoke-direct {p0, v5, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3916
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 3917
    :cond_10
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_17

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dumpBluetoothState()V

    .line 3923
    :cond_17
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v5, v5, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v6, :cond_37

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v5, v5, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v6, :cond_3a

    .line 3928
    :cond_37
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    .line 3966
    :goto_39
    return-object v4

    .line 3937
    :cond_3a
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v4, :cond_86

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_86

    move v0, v4

    .line 3944
    .local v0, hasPendingMmiCodes:Z
    :goto_4f
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v5}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v1

    .line 3946
    .local v1, showProgressIndication:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v2, v5, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    .line 3948
    .local v2, showScreenEvenAfterDisconnect:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_7b

    if-nez v0, :cond_7b

    if-nez v1, :cond_7b

    if-eqz v2, :cond_88

    .line 3950
    :cond_7b
    const-string v5, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v5, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3951
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3952
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_39

    .line 3937
    .end local v0           #hasPendingMmiCodes:Z
    .end local v1           #showProgressIndication:Z
    .end local v2           #showScreenEvenAfterDisconnect:Z
    :cond_86
    const/4 v0, 0x0

    goto :goto_4f

    .line 3955
    .restart local v0       #hasPendingMmiCodes:Z
    .restart local v1       #showProgressIndication:Z
    .restart local v2       #showScreenEvenAfterDisconnect:Z
    :cond_88
    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->isEcidQueryDone:Z

    if-eqz v4, :cond_97

    .line 3956
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_39

    .line 3959
    :cond_97
    const-string v4, "force_display_endcall_screen"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 3960
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v4, v5, :cond_b3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v5, :cond_b6

    .line 3962
    :cond_b3
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_39

    .line 3965
    :cond_b6
    const-string v4, "InCallScreen"

    const-string v5, "syncWithPhoneState: phone is idle (shouldn\'t be here)"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto/16 :goto_39
.end method

.method private toggleExtraVolBtn()V
    .registers 2

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->toggleExtraVolBtn()V

    .line 4650
    return-void
.end method

.method private unregisterForPhoneStates()V
    .registers 3

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1936
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1937
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1938
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1939
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1940
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1941
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1942
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1943
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1945
    return-void
.end method

.method private updateCallCardVisibilityPerDialerState(Z)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 6342
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 6343
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_30

    .line 6344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- updateCallCardVisibilityPerDialerState(animate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): dialpad open, hide mCallCard..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6347
    :cond_30
    if-eqz p1, :cond_38

    .line 6348
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-static {v0, v2}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 6367
    :cond_37
    :goto_37
    return-void

    .line 6350
    :cond_38
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->setVisibility(I)V

    goto :goto_37

    .line 6354
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_52

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_37

    .line 6356
    :cond_52
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_72

    .line 6357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- updateCallCardVisibilityPerDialerState(animate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): dialpad dismissed, show mCallCard..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6360
    :cond_72
    if-eqz p1, :cond_7a

    .line 6361
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_37

    .line 6363
    :cond_7a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setVisibility(I)V

    goto :goto_37
.end method

.method private updateExpandedViewState()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7185
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v2, :cond_2e

    .line 7186
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 7188
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_22

    :goto_1e
    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 7198
    :goto_21
    return-void

    :cond_22
    move v0, v1

    .line 7188
    goto :goto_1e

    .line 7193
    :cond_24
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_21

    .line 7196
    :cond_2e
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_21
.end method

.method private updateManageConferencePanelIfNecessary()V
    .registers 5

    .prologue
    .line 6283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateManageConferencePanelIfNecessary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6285
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 6286
    if-nez v0, :cond_5d

    .line 6287
    const-string v0, "==> no connections on foreground call!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6289
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6290
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v0

    .line 6291
    sget-object v1, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v0, v1, :cond_5c

    .line 6292
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6295
    const-string v0, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6296
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 6327
    :cond_5c
    :goto_5c
    return-void

    .line 6302
    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 6303
    const/4 v2, 0x1

    if-gt v1, v2, :cond_97

    .line 6304
    const-string v0, "==> foreground call no longer a conference!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6306
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6307
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v0

    .line 6308
    sget-object v1, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v0, v1, :cond_5c

    .line 6309
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    const-string v0, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6313
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_5c

    .line 6321
    :cond_97
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v2}, Lcom/android/phone/ManageConferenceUtils;->getNumCallersInConference()I

    move-result v2

    if-eq v1, v2, :cond_5c

    .line 6322
    const-string v1, "==> Conference size has changed; need to rebuild UI!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6324
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6325
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_5c
.end method

.method private updateProgressIndication()V
    .registers 5

    .prologue
    const v3, 0x7f0e01bc

    .line 5542
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5543
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    .line 5574
    :goto_e
    return-void

    .line 5549
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 5550
    sget-object v1, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_54

    .line 5569
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    goto :goto_e

    .line 5553
    :pswitch_42
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    goto :goto_e

    .line 5557
    :pswitch_46
    const v0, 0x7f0e01bd

    invoke-direct {p0, v3, v0}, Lcom/android/phone/InCallScreen;->showProgressIndication(II)V

    goto :goto_e

    .line 5563
    :pswitch_4d
    const v0, 0x7f0e01be

    invoke-direct {p0, v3, v0}, Lcom/android/phone/InCallScreen;->showProgressIndication(II)V

    goto :goto_e

    .line 5550
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_42
        :pswitch_46
        :pswitch_4d
    .end packed-switch
.end method

.method private updateRcsUi()V
    .registers 1

    .prologue
    .line 7493
    return-void
.end method

.method private updateScreen()V
    .registers 11

    .prologue
    const/16 v9, 0xbb

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3676
    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3677
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v3, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 3678
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_32

    .line 3679
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 3680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - phone state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3683
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - inCallScreenMode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3685
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v0, :cond_65

    const-string v0, "force_display_endcall_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    move v0, v1

    .line 3693
    :goto_55
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v4, :cond_67

    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mNotForegroundButUpdate:Z

    if-nez v4, :cond_67

    if-nez v0, :cond_67

    .line 3694
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3897
    :cond_64
    :goto_64
    return-void

    :cond_65
    move v0, v2

    .line 3685
    goto :goto_55

    .line 3702
    :cond_67
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3703
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-static {p0}, Lcom/android/phone/RcsShare;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3704
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v5

    invoke-static {p0, v0, v4, v5, v6}, Lcom/android/phone/RcsShare;->resumeShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3710
    :cond_9a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 3711
    const-string v0, "updateScreen : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 3715
    :cond_a8
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v0, :cond_cc

    .line 3716
    const-string v0, "- updateScreen: OTA call state NORMAL (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3717
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v7}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 3718
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_c4

    .line 3719
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_64

    .line 3721
    :cond_c4
    const-string v0, "InCallScreen"

    const-string v1, "OtaUtils object is null, not showing any screen for that."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 3724
    :cond_cc
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v0, :cond_11b

    .line 3725
    const-string v0, "- updateScreen: OTA call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3726
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v7}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 3728
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 3729
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_102

    .line 3731
    const-string v0, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3732
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_64

    .line 3733
    const-string v0, "- updateScreen: mApp.otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3735
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto/16 :goto_64

    .line 3738
    :cond_102
    const-string v0, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3739
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_64

    .line 3740
    const-string v0, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3741
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_64

    .line 3745
    :cond_11b
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v0, :cond_12e

    .line 3746
    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3747
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v7}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 3748
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_64

    .line 3750
    :cond_12e
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v0, :cond_15e

    .line 3751
    const-string v0, "- updateScreen: call ended state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3754
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 3755
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 3756
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/phone/RcsShare;->disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    :cond_15e
    const-string v0, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 3770
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3771
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 3776
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_18e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 3777
    const-string v0, "InCallScreen"

    const-string v3, "During RINGING state we force hiding dialpad."

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    .line 3788
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3792
    :cond_18e
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->updateCallCardVisibilityPerDialerState(Z)V

    .line 3795
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 3796
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsInvitation:Lcom/android/phone/RcsInvitation;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/RcsInvitation;->updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V

    .line 3800
    :cond_1a6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProgressIndication()V

    .line 3803
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 3804
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->controlActionBar()V

    .line 3807
    :cond_1b4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1c2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 3808
    :cond_1c2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissInCallEqDialog()V

    .line 3812
    :cond_1c5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_245

    .line 3813
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3815
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_217

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v8, :cond_217

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_217

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mShowCallRoamingGuardDialog:Z

    if-eqz v0, :cond_217

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    if-nez v0, :cond_217

    .line 3820
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    .line 3822
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_202

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_217

    .line 3824
    :cond_202
    const/4 v0, 0x0

    .line 3825
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v3

    if-eqz v3, :cond_233

    .line 3826
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e04ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3830
    :cond_214
    :goto_214
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showCallRoamingGuardDialog(Ljava/lang/String;)V

    .line 3888
    :cond_217
    :goto_217
    const-string v0, "recent_hw_key_disable_when_incoming"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 3889
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    .line 3890
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_330

    .line 3891
    invoke-direct {p0, v9, v1}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_64

    .line 3827
    :cond_233
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v3

    if-eqz v3, :cond_214

    .line 3828
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e04ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_214

    .line 3838
    :cond_245
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 3839
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3841
    if-ne v3, v8, :cond_2f0

    .line 3842
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 3843
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_287

    .line 3845
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26d
    :goto_26d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3846
    if-eqz v0, :cond_26d

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v4, v5, :cond_26d

    .line 3848
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_26d

    .line 3851
    :cond_287
    if-eqz v3, :cond_29d

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v4, :cond_29d

    .line 3853
    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3854
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 3855
    invoke-direct {p0, v3, v0}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3858
    :cond_29d
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_217

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_217

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mShowCallRoamingGuardDialog:Z

    if-eqz v0, :cond_217

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    if-nez v0, :cond_217

    .line 3863
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_2c5

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_217

    .line 3865
    :cond_2c5
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsShowingCallGuardAnswerAlert:Z

    .line 3866
    const/4 v0, 0x0

    .line 3867
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v3

    if-eqz v3, :cond_2de

    .line 3868
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e04ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3872
    :cond_2d9
    :goto_2d9
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showCallRoamingGuardDialog(Ljava/lang/String;)V

    goto/16 :goto_217

    .line 3869
    :cond_2de
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v3

    if-eqz v3, :cond_2d9

    .line 3870
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e04ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d9

    .line 3875
    :cond_2f0
    if-eq v3, v1, :cond_2f5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_317

    .line 3877
    :cond_2f5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f9
    :goto_2f9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_217

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3878
    if-eqz v0, :cond_2f9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v4, v5, :cond_2f9

    .line 3879
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    .line 3880
    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_2f9

    .line 3884
    :cond_317
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3893
    :cond_330
    invoke-direct {p0, v9, v2}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_64
.end method

.method private updateScreenOrientation(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 7061
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7062
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    .line 7064
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenOrientation: newConfig = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 7065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenOrientation: mIsRCVMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7070
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 7071
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_58

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 7073
    :cond_58
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    move v2, v0

    move v0, v1

    .line 7086
    :goto_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenOrientation : nextOrientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOrientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestedOrientaiton : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " screenType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 7091
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    iget v3, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    if-eq v3, v2, :cond_b4

    :cond_a2
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ce

    iget v3, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    if-ne v3, v2, :cond_ce

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v0, :cond_ce

    .line 7094
    :cond_b4
    const-string v0, "updateScreenOrientation: Do nothing"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 7135
    :cond_b9
    :goto_b9
    return-void

    .line 7079
    :cond_ba
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_ca

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_128

    .line 7081
    :cond_ca
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7082
    const/4 v0, 0x4

    goto :goto_5c

    .line 7097
    :cond_ce
    const-string v2, "updateScreenOrientation: Update with new orientaton"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 7099
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 7100
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_e4

    .line 7101
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 7105
    :cond_e4
    iget v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_b9

    .line 7106
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 7110
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 7111
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsInvitation:Lcom/android/phone/RcsInvitation;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/RcsInvitation;->setOrientation(I)V

    .line 7116
    :cond_fd
    const-string v0, "vi_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 7117
    invoke-static {}, Lcom/android/phone/CallAnimation;->clearAnimation()V

    .line 7120
    :cond_108
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 7122
    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 7124
    if-eqz v0, :cond_11e

    .line 7125
    const-string v1, "remove all views!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7126
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7129
    :cond_11e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->setContentView()V

    .line 7130
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 7132
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_b9

    :cond_128
    move v0, v1

    move v2, v1

    goto/16 :goto_5c
.end method


# virtual methods
.method public changePhone(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 7267
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 7268
    .local v0, netPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->setCurrentPhone(Lcom/android/internal/telephony/Phone;)V

    .line 7269
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 7270
    return-void
.end method

.method checkCurrentAudioPath()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 7211
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7212
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isUserWantsAudio()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7213
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 7214
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    .line 7246
    :goto_16
    return-void

    .line 7219
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_de

    .line 7223
    :cond_31
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    .line 7228
    :goto_33
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a9

    .line 7229
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHeadsetPlugged() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7231
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnectedOrPending() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7233
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneUtils.isSpeakerOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7235
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneApp.mIsDockConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7238
    :cond_a9
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRCVMode after check device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7240
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    if-eqz v0, :cond_d9

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e2

    .line 7242
    :cond_d9
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_16

    .line 7225
    :cond_de
    sput-boolean v3, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    goto/16 :goto_33

    .line 7244
    :cond_e2
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_16
.end method

.method connectBluetoothAudio()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6733
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6734
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_f

    .line 6735
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6743
    :cond_f
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6745
    return-void
.end method

.method disconnectBluetoothAudio()V
    .registers 3

    .prologue
    .line 6748
    const-string v0, "disconnectBluetoothAudio()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6749
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_f

    .line 6750
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6752
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6753
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 2492
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchGenericMotionEvent : event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2494
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 2495
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 2499
    .local v5, y:F
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_79

    .line 2500
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v6, :cond_79

    .line 2501
    const/16 v6, 0x9

    if-eq v0, v6, :cond_40

    const/4 v6, 0x7

    if-eq v0, v6, :cond_40

    const/16 v6, 0xa

    if-ne v0, v6, :cond_79

    .line 2505
    :cond_40
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    iget-object v6, v6, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 2507
    .local v1, leftHit:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    iget-object v6, v6, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v6, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v2

    .line 2509
    .local v2, rightHit:Z
    if-nez v1, :cond_58

    if-eqz v2, :cond_79

    .line 2510
    :cond_58
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v6, p1}, Lcom/android/phone/IncomingCallWidget;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2511
    .local v3, value:Z
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchGenericMotionEvent : return = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2517
    .end local v1           #leftHit:Z
    .end local v2           #rightHit:Z
    .end local v3           #value:Z
    :goto_78
    return v3

    :cond_79
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_78
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 7003
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 7004
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 7005
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter

    .prologue
    .line 2523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2525
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_21b

    .line 2528
    const/4 v0, 0x0

    .line 2531
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v2, v2, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-nez v2, :cond_1e

    .line 2532
    :cond_19
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2637
    :goto_1d
    return v0

    .line 2534
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v2, v2, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2535
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1d

    .line 2538
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2542
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2543
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 2545
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2547
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v7, v7, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v7, v4}, Lcom/android/phone/IncomingCallWidget;->getLocationOnScreen([I)V

    .line 2548
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v7, v7, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v7, v5}, Landroid/widget/SlidingDrawer;->getLocationOnScreen([I)V

    .line 2550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pointer Count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Dispatch Touch Action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 2553
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 2554
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 2556
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "X: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", Y: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", INDEX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FocusX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FocusY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 2559
    if-eqz v2, :cond_c5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_151

    .line 2562
    :cond_c5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v2, v2, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v2, v6}, Lcom/android/phone/IncomingCallWidget;->getHitRect(Landroid/graphics/Rect;)V

    .line 2563
    float-to-int v2, v8

    float-to-int v3, v9

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_d6

    if-nez v1, :cond_db

    :cond_d6
    iget v2, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f7

    .line 2578
    :cond_db
    :goto_db
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v2, v2, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2, v6}, Landroid/widget/SlidingDrawer;->getHitRect(Landroid/graphics/Rect;)V

    .line 2579
    float-to-int v2, v8

    float-to-int v3, v9

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_ec

    if-nez v1, :cond_f1

    :cond_ec
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_124

    .line 2633
    :cond_f1
    :goto_f1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21b

    .line 2634
    const/4 v0, 0x1

    goto/16 :goto_1d

    .line 2565
    :cond_f7
    iget v2, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_db

    .line 2568
    const/4 v2, 0x0

    aget v2, v4, v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    int-to-float v3, v3

    sub-float v3, v9, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2569
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2571
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v2, v2, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v2, p1}, Lcom/android/phone/IncomingCallWidget;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 2572
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2573
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2574
    const/4 v0, 0x1

    goto :goto_db

    .line 2581
    :cond_124
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f1

    .line 2584
    const/4 v1, 0x0

    aget v1, v5, v1

    int-to-float v1, v1

    sub-float v1, v8, v1

    const/4 v2, 0x1

    aget v2, v5, v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2585
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2587
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 2588
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2589
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2590
    const/4 v0, 0x1

    goto :goto_f1

    .line 2593
    :cond_151
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1aa

    .line 2594
    const/4 v1, 0x0

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_1a7

    .line 2595
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2596
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 2597
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-ne v6, v7, :cond_185

    .line 2598
    const/4 v1, 0x0

    aget v1, v4, v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-virtual {p1, v1, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2599
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2600
    const/4 v1, 0x1

    .line 2602
    :cond_185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-ne v6, v7, :cond_1a4

    .line 2603
    const/4 v1, 0x0

    aget v1, v5, v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    const/4 v2, 0x1

    aget v2, v5, v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2604
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2605
    const/4 v1, 0x1

    .line 2594
    :cond_1a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_158

    :cond_1a7
    move v0, v1

    goto/16 :goto_f1

    .line 2608
    :cond_1aa
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f1

    .line 2609
    :cond_1b0
    iget v2, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v2, v3, :cond_1f1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f1

    .line 2621
    :cond_1bb
    :goto_1bb
    iget v2, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v2, v3, :cond_1c6

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f1

    .line 2623
    :cond_1c6
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v1, v2, :cond_f1

    .line 2626
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2627
    const/4 v1, 0x0

    aget v1, v5, v1

    int-to-float v1, v1

    sub-float v1, v8, v1

    const/4 v2, 0x1

    aget v2, v5, v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2628
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2629
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 2630
    const/4 v0, 0x1

    goto/16 :goto_f1

    .line 2611
    :cond_1f1
    iget v2, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v2, v3, :cond_1bb

    .line 2614
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2615
    const/4 v2, 0x0

    aget v2, v4, v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    int-to-float v3, v3

    sub-float v3, v9, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2616
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2617
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v2, v2, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v2, p1}, Lcom/android/phone/IncomingCallWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 2618
    const/4 v0, 0x1

    goto :goto_1bb

    .line 2637
    :cond_21b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1d
.end method

.method drawToastWaitingCallDialog(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5608
    iget v0, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 5639
    :goto_6
    return-void

    .line 5612
    :cond_7
    const-string v0, "%s"

    .line 5613
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0376

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5614
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0377

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5616
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 5617
    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "fa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "ur"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 5618
    :cond_3f
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->DisconnectedUserPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->DisconnectedUserPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 5619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5620
    const-string v4, "\u200f\u202d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5621
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    .line 5623
    :cond_67
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_87

    if-eqz p1, :cond_87

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 5624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5625
    const-string v4, "\u200f\u202d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5626
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5630
    :cond_87
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    if-nez v3, :cond_8f

    const-string v3, ""

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    .line 5631
    :cond_8f
    if-eqz p1, :cond_bb

    .line 5632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 5636
    :cond_bb
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6
.end method

.method public endInCallScreenSession()V
    .registers 3

    .prologue
    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession()... phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1832
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1833
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1819
    const-string v0, "finish()..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1820
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1821
    return-void
.end method

.method public getCallBarringCheckPanel()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 7298
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCallCardInCallScreen()Lcom/android/phone/CallCard;
    .registers 2

    .prologue
    .line 7273
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method public getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 7480
    const/4 v0, 0x0

    .line 7482
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 7484
    :try_start_9
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v0

    .line 7489
    :cond_d
    :goto_d
    return-object v0

    .line 7485
    :catch_e
    move-exception v1

    .line 7486
    const-string v1, "getCallerName null"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method getInCallMenu()Lcom/android/phone/InCallMenu;
    .registers 2

    .prologue
    .line 6526
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    return-object v0
.end method

.method getInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 6519
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    return-object v0
.end method

.method getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f0e0007

    const v4, 0x7f0e0006

    const v3, 0x7f0e0004

    const/4 v1, 0x0

    .line 5926
    .line 5928
    instance-of v0, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_23

    .line 5929
    check-cast p1, Lcom/android/internal/telephony/CallerInfo;

    .line 5933
    :goto_10
    if-eqz p1, :cond_b4

    .line 5936
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->UserPhoneNumber:Ljava/lang/String;

    .line 5937
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 5938
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5975
    :cond_20
    :goto_20
    if-eqz v0, :cond_b1

    .line 5978
    :goto_22
    return-object v0

    .line 5930
    :cond_23
    instance-of v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_b7

    .line 5931
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object p1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_10

    .line 5939
    :cond_2c
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 5940
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_20

    .line 5942
    :cond_37
    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 5944
    const-string v0, "fdn_contact_search"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 5947
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v0, :cond_5c

    .line 5948
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->getNameIfNumberIsInFDNCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5949
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5950
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_20

    .line 5952
    :cond_5c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5953
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v3, :cond_71

    .line 5954
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 5955
    :cond_71
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v2, v3, :cond_20

    .line 5956
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 5961
    :cond_7e
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8d

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v0, :cond_8d

    .line 5963
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_20

    .line 5965
    :cond_8d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5966
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v3, :cond_a3

    .line 5967
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 5968
    :cond_a3
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v2, v3, :cond_20

    .line 5969
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    :cond_b1
    move-object v0, v1

    .line 5978
    goto/16 :goto_22

    :cond_b4
    move-object v0, v1

    goto/16 :goto_20

    :cond_b7
    move-object p1, v1

    goto/16 :goto_10
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 6941
    const-string v0, "getUpdatedInCallControlState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6942
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 6943
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 7468
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 7469
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 7472
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCshInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7474
    :cond_3c
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 7475
    invoke-virtual {v1, v0}, Lcom/android/phone/CallNotifier;->setCshInfo(Ljava/lang/String;)V

    .line 7477
    :cond_49
    return-void
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 7459
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7460
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_15

    .line 7462
    invoke-static {p0, p1}, Lcom/android/phone/RcsShare;->notifyIMAndFT(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7465
    :cond_15
    return-void
.end method

.method public handleInvitation(ZLandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 7449
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7453
    if-eqz p1, :cond_f

    .line 7454
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v0}, Lcom/android/phone/RcsShare;->notifyUser(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    .line 7456
    :cond_f
    return-void
.end method

.method handleOnscreenButtonClick(I)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 4656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4658
    sparse-switch p1, :sswitch_data_23a

    .line 4814
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4837
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4838
    return-void

    .line 4661
    :sswitch_44
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_3b

    .line 4664
    :sswitch_48
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    goto :goto_3b

    .line 4667
    :sswitch_4c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalRespondViaSms()V

    goto :goto_3b

    .line 4673
    :sswitch_50
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_3b

    .line 4677
    :sswitch_54
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_3b

    .line 4681
    :sswitch_58
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_3b

    .line 4684
    :sswitch_5c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    goto :goto_3b

    .line 4687
    :sswitch_60
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_3b

    .line 4690
    :sswitch_64
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_3b

    .line 4693
    :sswitch_6a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_7a

    .line 4694
    const-string v0, "return and can not continued VoiceRecording process."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3b

    .line 4697
    :cond_7a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 4698
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4699
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_3b

    .line 4700
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    goto :goto_3b

    .line 4702
    :cond_97
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->canStartRecording()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4703
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord()V

    goto :goto_3b

    .line 4708
    :sswitch_a5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_3b

    .line 4713
    :sswitch_ab
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4714
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_3b

    .line 4718
    :sswitch_b4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    .line 4720
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4721
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    goto/16 :goto_3b

    .line 4726
    :sswitch_c4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->toggleBluetooth()V

    goto/16 :goto_3b

    .line 4730
    :sswitch_c9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onWebExClick()V

    goto/16 :goto_3b

    .line 4735
    :sswitch_ce
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4736
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_fe

    .line 4737
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 4738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4739
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_fe

    .line 4740
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 4743
    :cond_fe
    const-string v0, "[namyi]handleOnscreenButtonClick(): R.id.rcsVideoButton "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4744
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/phone/RcsShare;->startLiveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3b

    .line 4749
    :sswitch_11a
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4750
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_14a

    .line 4751
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 4752
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4753
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_14a

    .line 4754
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 4757
    :cond_14a
    const-string v0, "[namyi]handleOnscreenButtonClick(): R.id.rcsShareButton "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4758
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/phone/RcsShare;->startRcsSharingDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3b

    .line 4768
    :sswitch_166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4769
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 4770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4771
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v6

    if-lez v1, :cond_186

    .line 4772
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 4775
    :cond_186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGT Multi Call ->>MultiCallButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGT Multi Call ->>MultiCallButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGT Multi Call ->>MultiCallButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4779
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 4781
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_215

    .line 4783
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_205

    .line 4785
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 4786
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 4787
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 4788
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCONFCallState(Lcom/android/phone/PhoneUtilsExt$CONFCallState;)V

    goto/16 :goto_3b

    .line 4789
    :cond_205
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v0, v1, :cond_3b

    .line 4791
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setLGTtransferState(Z)V

    .line 4792
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    goto/16 :goto_3b

    .line 4794
    :cond_215
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_3b

    .line 4796
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v0, v1, :cond_3b

    .line 4798
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 4799
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    goto/16 :goto_3b

    .line 4806
    :sswitch_22f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->launchContact()V

    goto/16 :goto_3b

    .line 4810
    :sswitch_234
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->toggleExtraVolBtn()V

    goto/16 :goto_3b

    .line 4658
    nop

    :sswitch_data_23a
    .sparse-switch
        0x7f090009 -> :sswitch_44
        0x7f09000a -> :sswitch_48
        0x7f09000b -> :sswitch_4c
        0x7f09012a -> :sswitch_64
        0x7f09012b -> :sswitch_c9
        0x7f09012c -> :sswitch_a5
        0x7f09012d -> :sswitch_54
        0x7f09012e -> :sswitch_6a
        0x7f09012f -> :sswitch_ce
        0x7f090130 -> :sswitch_5c
        0x7f090131 -> :sswitch_58
        0x7f090132 -> :sswitch_58
        0x7f090133 -> :sswitch_b4
        0x7f090134 -> :sswitch_60
        0x7f090135 -> :sswitch_c4
        0x7f090136 -> :sswitch_22f
        0x7f090137 -> :sswitch_11a
        0x7f09013c -> :sswitch_ab
        0x7f09013f -> :sswitch_50
        0x7f090140 -> :sswitch_50
        0x7f090141 -> :sswitch_54
        0x7f090143 -> :sswitch_166
        0x7f090146 -> :sswitch_234
        0x7f09027d -> :sswitch_ab
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .registers 3

    .prologue
    .line 6799
    const-string v0, "handleOtaCallEnd entering"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6800
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_3a

    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_3a

    .line 6806
    const-string v0, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6807
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6808
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 6810
    :cond_3a
    return-void
.end method

.method public handleRcsAction(I)V
    .registers 3
    .parameter

    .prologue
    .line 7391
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7392
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 7394
    :cond_b
    return-void
.end method

.method public handleRcsExtraAction(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7436
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7437
    const-string v0, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7438
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 7446
    :cond_19
    :goto_19
    return-void

    .line 7439
    :cond_1a
    const-string v0, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 7440
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->turnRcs(Z)V

    .line 7441
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    goto :goto_19

    .line 7442
    :cond_35
    const-string v0, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7443
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_19
.end method

.method public handleRcsMenuOption(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 7398
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7401
    const-string v0, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 7402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7404
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7406
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7408
    const-string v2, "EXTRA_INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7409
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7433
    :cond_30
    :goto_30
    return-void

    .line 7410
    :cond_31
    const-string v0, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 7411
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_30

    .line 7412
    :cond_3f
    const-string v0, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 7413
    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_30

    .line 7414
    :cond_4e
    const-string v0, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 7423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_30

    .line 7424
    :cond_61
    const-string v0, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 7425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.start_main_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_30

    .line 7426
    :cond_74
    const-string v0, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 7428
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto :goto_30

    .line 7429
    :cond_80
    const-string v0, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7430
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->toggleBluetooth()V

    goto :goto_30
.end method

.method hangupRingingCall()V
    .registers 3

    .prologue
    .line 5996
    const-string v0, "hangupRingingCall()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 5997
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 6000
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 6001
    return-void
.end method

.method public hideCallBarringCheckPanelIMM()V
    .registers 4

    .prologue
    .line 7302
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7303
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    .line 7304
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7306
    :cond_10
    return-void
.end method

.method public internalAnswerCall()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5650
    const-string v0, "internalAnswerCall()..."

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 5653
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 5655
    if-eqz v0, :cond_32

    .line 5656
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 5657
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5658
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5659
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 5660
    const/4 v2, 0x2

    if-ne v0, v2, :cond_33

    .line 5661
    const-string v0, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5663
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5717
    :goto_2d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 5719
    :cond_32
    return-void

    .line 5665
    :cond_33
    if-eq v0, v4, :cond_38

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b1

    .line 5667
    :cond_38
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_41

    const-string v0, "internalAnswerCall: answering (GSM)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5672
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5673
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 5675
    iget v3, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    if-nez v3, :cond_53

    .line 5676
    iput v4, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 5678
    :cond_53
    if-eqz v0, :cond_72

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 5679
    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    const-string v3, "voice_call_recording_second_call_ongoing"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 5680
    :cond_6d
    const-string v3, "2nd answerCall - will not stop recording"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5688
    :cond_72
    :goto_72
    if-eqz v0, :cond_8d

    if-eqz v2, :cond_8d

    .line 5689
    const-string v0, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5690
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->drawToastWaitingCallDialog(Ljava/lang/String;)V

    .line 5700
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_2d

    .line 5683
    :cond_82
    const-string v3, "2nd answerCall - stop recording"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5684
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    goto :goto_72

    .line 5701
    :cond_8d
    if-eqz v0, :cond_96

    .line 5702
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->drawToastWaitingCallDialog(Ljava/lang/String;)V

    .line 5703
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_2d

    .line 5705
    :cond_96
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->drawToastWaitingCallDialog(Ljava/lang/String;)V

    .line 5706
    iput v6, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 5708
    const-string v0, "internalAnswerCall: answering..."

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 5709
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_2d

    .line 5713
    :cond_b1
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
.end method

.method isBluetoothAudioConnected()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 6643
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_c

    .line 6644
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6645
    const/4 v0, 0x0

    .line 6649
    :goto_b
    return v0

    .line 6647
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6648
    .local v0, isAudioOn:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_b
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 6663
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6664
    const-string v1, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6687
    :goto_d
    return v0

    .line 6671
    :cond_e
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_5c

    .line 6672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v2, v4

    .line 6674
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_3c

    .line 6675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec ago)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 6679
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msec ago)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6681
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v0, v1

    .line 6682
    goto :goto_d

    .line 6686
    :cond_5c
    const-string v2, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v2, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    move v0, v1

    .line 6687
    goto :goto_d
.end method

.method isBluetoothAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6598
    const-string v2, "isBluetoothAvailable()..."

    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6599
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_11

    .line 6601
    const-string v2, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6636
    :goto_10
    return v0

    .line 6621
    :cond_11
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_70

    .line 6622
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 6624
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_70

    .line 6625
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v1

    .line 6635
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto :goto_10
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 6373
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .registers 2

    .prologue
    .line 1900
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method public isInCallScreenTopActivity()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7555
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7556
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 7557
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_46

    .line 7558
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7559
    .local v2, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInCallScreenTopActivity()... topActivity.getClassName() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7560
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone.InCallScreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 7564
    .end local v2           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_45
    return v3

    :cond_46
    move v3, v4

    goto :goto_45
.end method

.method isManageConferenceMode()Z
    .registers 3

    .prologue
    .line 6271
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isMultiWindowMode()Z
    .registers 2

    .prologue
    .line 985
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_17

    .line 986
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsMultiWindow:Z

    .line 987
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsMultiWindow:Z

    .line 989
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isOtaCallInActiveState()Z
    .registers 3

    .prologue
    .line 6783
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_1c

    .line 6787
    :cond_1a
    const/4 v0, 0x1

    .line 6789
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isOtaCallInEndState()Z
    .registers 3

    .prologue
    .line 6813
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPhoneStateRestricted()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6564
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 6565
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_18

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public isRCVmode()Z
    .registers 2

    .prologue
    .line 7551
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/phone/InCallScreen;->mIsRCVMode:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method okToDialDTMFTones()Z
    .registers 6

    .prologue
    .line 6443
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 6444
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 6456
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v0, :cond_60

    :cond_18
    if-nez v1, :cond_60

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v3, :cond_60

    const/4 v0, 0x1

    .line 6461
    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ringing state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call screen mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6466
    return v0

    .line 6456
    :cond_60
    const/4 v0, 0x0

    goto :goto_25
.end method

.method okToShowDialpad()Z
    .registers 3

    .prologue
    .line 6477
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 6478
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroyed?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7253
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    if-nez v0, :cond_33

    .line 7254
    packed-switch p1, :pswitch_data_3e

    .line 7261
    :cond_33
    :goto_33
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7262
    return-void

    .line 7256
    :pswitch_37
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/EcidClient;->handleResult(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 7257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->isEcidQueryDone:Z

    goto :goto_33

    .line 7254
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_37
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2224
    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2231
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2236
    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2e

    .line 2239
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2240
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 2277
    :cond_2e
    :goto_2e
    return-void

    .line 2250
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2251
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    .line 2254
    const-string v0, "proximity_sensor_control_by_keypad"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2255
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2257
    :cond_4d
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto :goto_2e

    .line 2261
    :cond_51
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_64

    .line 2263
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2264
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_2e

    .line 2270
    :cond_64
    const-string v0, "hw_home_key"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2e

    .line 2276
    :cond_76
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x8

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 4188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 4190
    sparse-switch v0, :sswitch_data_182

    .line 4257
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_47

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_154

    :cond_47
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_154

    .line 4260
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 4272
    :cond_54
    :goto_54
    const v1, 0x1129f

    new-array v2, v5, [Ljava/lang/Object;

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_17e

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_63
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4276
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4277
    return-void

    .line 4192
    :sswitch_6e
    const-string v0, "onClick: mButtonManageConferenceDone..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4194
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4195
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_54

    .line 4205
    :sswitch_7c
    const-string v0, "callbarring_ok..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4206
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 4207
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4208
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4209
    const-string v2, "cb_passwd_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4210
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 4211
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4212
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 4213
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 4214
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v0

    .line 4215
    if-eqz v0, :cond_cb

    .line 4216
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4217
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 4219
    :cond_cb
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4220
    if-eqz v0, :cond_e4

    .line 4221
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4222
    const-string v0, "whether the hide the ime"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4223
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 4225
    :cond_e4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 4226
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallbarringOk:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_54

    .line 4230
    :cond_f0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4231
    const v0, 0x7f0e048d

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4232
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_54

    .line 4237
    :sswitch_10a
    const-string v0, "callbarring_cancel..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4238
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v0, v1, :cond_122

    .line 4239
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4241
    :cond_122
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 4242
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideCallBarringCheckPanelIMM()V

    .line 4243
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallController;->setBarringPopup(Z)V

    .line 4244
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 4245
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_54

    .line 4246
    const-string v0, "callbarring_cancel Finish"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4247
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_54

    .line 4266
    :cond_154
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (View = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 4272
    :cond_17e
    const-string v0, ""

    goto/16 :goto_63

    .line 4190
    :sswitch_data_182
    .sparse-switch
        0x7f090155 -> :sswitch_10a
        0x7f090156 -> :sswitch_7c
        0x7f09017f -> :sswitch_6e
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 7019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: newConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7029
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7032
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7033
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsInvitation:Lcom/android/phone/RcsInvitation;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/RcsInvitation;->setOrientation(I)V

    .line 7037
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateScreenOrientation(Landroid/content/res/Configuration;)V

    .line 7039
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->hardKeyBoardHiddenNoForSpeaker()V

    .line 7057
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 773
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 776
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 777
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 780
    :cond_29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 783
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_3b

    .line 789
    const-string v0, "InCallScreen"

    const-string v1, "onCreate() reached on non-voice-capable device"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 982
    :goto_3a
    return-void

    .line 794
    :cond_3b
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWindowManager:Landroid/view/IWindowManager;

    .line 795
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "20"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    :cond_5d
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    const-string v0, "18"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 798
    :cond_73
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    .line 799
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    .line 802
    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mLocked:Z

    .line 805
    :cond_81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    .line 806
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 808
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 810
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->changePhone(Lcom/android/internal/telephony/Phone;)V

    .line 813
    :cond_9b
    const/high16 v0, 0x8

    .line 814
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_a9

    .line 820
    const/high16 v0, 0x48

    .line 822
    :cond_a9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 839
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 841
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onCreate: phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mBluetoothHandsfree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_10e

    .line 851
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 852
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 858
    :cond_10e
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 859
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 862
    :cond_119
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 863
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    .line 867
    :cond_127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->setContentView()V

    .line 868
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 870
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {v0}, Lcom/android/phone/PhoneVoiceRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 871
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 872
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getInstance()Lcom/android/phone/VE_ContentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mVE_ContentManager:Lcom/android/phone/VE_ContentManager;

    .line 874
    :cond_142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    .line 885
    if-nez p1, :cond_15a

    .line 886
    const-string v0, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 892
    :cond_15a
    const-string v0, "fdn_contact_search"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 893
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    .line 897
    :cond_165
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 898
    const-string v0, "mRcsBroadcastReceiver.register(this);"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRcsSessionObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRcsSessionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 900
    new-instance v0, Lcom/android/phone/RcsBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/RcsBroadcastReceiver;-><init>(Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsBroadcastReceiver:Lcom/android/phone/RcsBroadcastReceiver;

    .line 901
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsBroadcastReceiver:Lcom/android/phone/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/phone/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 902
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsSessionObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1a6

    .line 903
    new-instance v0, Lcom/android/phone/InCallScreen$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsSessionObserver:Landroid/database/ContentObserver;

    .line 922
    :cond_1a6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRcsSessionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 927
    :cond_1b1
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 928
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 930
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v0, :cond_1ff

    .line 931
    const-string v0, "onCreate(): bargeIn disabled.."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 932
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->disableFeature(Ljava/lang/String;)V

    .line 973
    :cond_1d0
    :goto_1d0
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->isEcidQueryDone:Z

    .line 977
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 978
    iput v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 981
    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto/16 :goto_3a

    .line 934
    :cond_1ff
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    new-instance v1, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    goto :goto_1d0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 4518
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4519
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4520
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1722
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1727
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1729
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    .line 1730
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 1735
    :cond_3f
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1736
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1737
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsBroadcastReceiver:Lcom/android/phone/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/phone/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 1738
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/RcsShare;->disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    :cond_6b
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1749
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1751
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1752
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->turnRcs(Z)V

    .line 1756
    :cond_80
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_89

    .line 1757
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1759
    :cond_89
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v0, :cond_92

    .line 1760
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1762
    :cond_92
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_9b

    .line 1763
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1765
    :cond_9b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0, v4}, Lcom/android/phone/RespondViaSmsManager;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1767
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1768
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1771
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1772
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->autoCSP:Lcom/android/phone/IAutoCSP;

    .line 1776
    :cond_b1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1780
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_c1

    .line 1781
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v5, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1782
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1787
    :cond_c1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1791
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_d1

    .line 1792
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->clearUiWidgets()V

    .line 1794
    :cond_d1
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1795
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRcsSessionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1797
    :cond_e2
    return-void
.end method

.method onDialerClose(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 6410
    const-string v0, "onDialerClose()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6413
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_37

    .line 6418
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_37

    .line 6419
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 6424
    :cond_37
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 6427
    :cond_42
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 6430
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateCallCardVisibilityPerDialerState(Z)V

    .line 6433
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6436
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 6437
    :cond_58
    return-void
.end method

.method onDialerOpen(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 6381
    const-string v0, "onDialerOpen()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6384
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 6387
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateCallCardVisibilityPerDialerState(Z)V

    .line 6390
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6395
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_32

    :cond_25
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_32

    .line 6398
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 6402
    :cond_32
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 6403
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2658
    const-string v1, "ota_mode_disable_expand"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2659
    const-string v1, "true"

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDomesticOtaStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2660
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1b

    .line 2661
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2765
    :cond_1a
    :goto_1a
    :sswitch_1a
    return v0

    .line 2664
    :cond_1b
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mLocked:Z

    if-nez v1, :cond_1a

    .line 2669
    :cond_1f
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "lock"

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2674
    :cond_39
    sparse-switch p1, :sswitch_data_c2

    .line 2761
    :cond_3c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_48

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2765
    :cond_48
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1a

    .line 2676
    :sswitch_4d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v1

    .line 2677
    if-nez v1, :cond_1a

    .line 2678
    const-string v1, "InCallScreen"

    const-string v2, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 2698
    :sswitch_5b
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3c

    .line 2709
    const-string v1, "InCallScreen"

    const-string v2, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSilenceRinger()V

    goto :goto_1a

    .line 2722
    :sswitch_70
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_1a

    .line 2727
    :sswitch_74
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3c

    .line 2728
    const-string v1, "----------- InCallScreen View dump --------------"

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2730
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2731
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2732
    invoke-virtual {v1}, Landroid/view/View;->debug()V

    goto :goto_1a

    .line 2737
    :sswitch_89
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3c

    .line 2738
    const-string v1, "----------- InCallScreen call state dump --------------"

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2739
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 2740
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    goto :goto_1a

    .line 2745
    :sswitch_9b
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3c

    .line 2747
    const-string v1, "------------ Temp testing -----------------"

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2752
    :sswitch_a6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2754
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    goto/16 :goto_1a

    .line 2674
    nop

    :sswitch_data_c2
    .sparse-switch
        0x3 -> :sswitch_a6
        0x5 -> :sswitch_4d
        0x18 -> :sswitch_5b
        0x19 -> :sswitch_5b
        0x1b -> :sswitch_1a
        0x44 -> :sswitch_9b
        0x46 -> :sswitch_89
        0x4c -> :sswitch_74
        0x5b -> :sswitch_70
        0xa4 -> :sswitch_5b
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2645
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2651
    :cond_d
    :goto_d
    return v0

    .line 2647
    :cond_e
    const/4 v1, 0x5

    if-eq p1, v1, :cond_d

    .line 2651
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = ****, phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1978
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1979
    const-string v0, "EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1980
    if-eqz v0, :cond_32

    .line 1981
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 1992
    :goto_31
    return-void

    .line 1985
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1991
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 4545
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 4546
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4547
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/phone/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 4549
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 4550
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onPause()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1f4

    const/16 v4, 0x6c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1510
    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1511
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1513
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1516
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1518
    :cond_18
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1523
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v2, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 1527
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v2, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    .line 1531
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1535
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v2}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1539
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1543
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1568
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_62

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1570
    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1571
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1572
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 1575
    :cond_62
    const v2, 0x1129e

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1579
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_7f

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1580
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1582
    :cond_7f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateExpandedViewState()V

    .line 1584
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1589
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1594
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1601
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1609
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_bf

    .line 1610
    const-string v2, "not_show_call_view_statusbar"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 1611
    const-string v2, "call statusBar.showCallView()!"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1612
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1617
    :cond_bf
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1619
    const-string v2, "barge_in"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 1620
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v2, :cond_d5

    .line 1621
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 1627
    :cond_d5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_151

    :goto_df
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1630
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_10a

    .line 1631
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_101

    .line 1632
    const-string v0, "Release UpdateLock on onPause() because there\'s no active phone call."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1634
    :cond_101
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1637
    :cond_10a
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 1638
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

    if-eqz v0, :cond_11b

    .line 1639
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/phone/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    .line 1640
    :cond_11b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1641
    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1645
    :cond_12a
    const-string v0, "ota_mode_disable_expand"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 1646
    const-string v0, "true"

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDomesticOtaStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 1647
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    .line 1648
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    .line 1650
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1651
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1654
    :cond_150
    return-void

    :cond_151
    move v0, v1

    .line 1627
    goto :goto_df
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4525
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4526
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v1, :cond_9

    .line 4540
    :cond_8
    :goto_8
    return v0

    .line 4528
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4529
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4531
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_8

    .line 4532
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4533
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

    if-nez v0, :cond_49

    .line 4534
    new-instance v0, Lcom/android/phone/RcsCapaObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/RcsCapaObserver;-><init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/view/Menu;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

    .line 4537
    :cond_49
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

    if-eqz v0, :cond_56

    .line 4538
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsCapaObserver:Lcom/android/phone/RcsCapaObserver;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/RcsCapaObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    .line 4540
    :cond_56
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_8
.end method

.method public onPressVoiceCallEqMenu()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 689
    const v0, 0x7f0e051c

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 761
    :goto_13
    return-void

    .line 692
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 693
    const v0, 0x7f0e051d

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 696
    :cond_2b
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 697
    const v0, 0x7f0e051b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 700
    :cond_3c
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 701
    const v0, 0x7f0e051e

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 704
    :cond_4d
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 705
    const v0, 0x7f0e051f

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 710
    :cond_5e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_eq_list_value"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 713
    new-instance v3, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    const v1, 0x7f0e036d

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 753
    const v1, 0x7f0e002e

    new-instance v2, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallEqDialog:Landroid/app/AlertDialog;

    .line 759
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 760
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_13
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/16 v8, 0x70

    const/16 v7, 0x6c

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1057
    const-string v0, "InCallScreen"

    const-string v3, "onResume()..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1060
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "lock"

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1063
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1064
    const/high16 v3, 0x47

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1073
    :cond_38
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1075
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_49a

    .line 1076
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApp.getKeyguardManager().isKeyguardLocked()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1080
    :goto_68
    if-eqz v0, :cond_3d1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v3, :cond_3d1

    .line 1081
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1082
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->normalWindow()Z

    .line 1084
    :cond_79
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_3c2

    .line 1085
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/MultiWindow;->setMultiWindowEnabled(Z)Z

    .line 1094
    :cond_8a
    :goto_8a
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1095
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1098
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1099
    :cond_a6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    .line 1111
    :cond_ac
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mNotForegroundButUpdate:Z

    if-ne v0, v1, :cond_b2

    .line 1112
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mNotForegroundButUpdate:Z

    .line 1114
    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNotForegroundButUpdate = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mNotForegroundButUpdate:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1117
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1118
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    .line 1121
    :cond_d5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1122
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_e0

    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->dumpState()V

    .line 1125
    :cond_e0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1126
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->turnRcs(Z)V

    .line 1132
    :cond_ed
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 1134
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateExpandedViewState()V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1141
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_12f

    .line 1142
    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12f

    .line 1143
    const-string v0, "call statusBar.hideCallView()!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 1146
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    :cond_124
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1150
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->hideCallView()V

    .line 1155
    :cond_12f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1159
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 1161
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_153

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_153

    .line 1163
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setPhoneAppSetting()V

    .line 1169
    :cond_153
    iget-boolean v0, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v0, :cond_3e6

    .line 1170
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->openDialpadInternal(Z)V

    .line 1184
    :goto_15a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 1201
    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    if-eqz v0, :cond_3eb

    .line 1202
    const-string v0, "- onResume: need to show status indication!"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1203
    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    move v0, v1

    .line 1217
    :goto_172
    sget-boolean v3, Lcom/android/phone/InCallScreen;->sIsFlightModeProgressing:Z

    if-ne v3, v1, :cond_181

    .line 1218
    const-string v0, "- sIsFlightModeProgressing!!!"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1219
    sput-boolean v2, Lcom/android/phone/InCallScreen;->sIsFlightModeProgressing:Z

    .line 1220
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showRadioOnDialog()V

    move v0, v1

    .line 1225
    :cond_181
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    .line 1227
    if-eqz v3, :cond_3fa

    .line 1228
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 1233
    :goto_18b
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 1237
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_497

    .line 1238
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->checkOtaspStateOnResume()Z

    move-result v3

    .line 1240
    :goto_19a
    if-nez v3, :cond_1b3

    .line 1241
    const-string v3, "force_display_endcall_screen"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3ff

    .line 1242
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v5, :cond_1b3

    .line 1243
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1250
    :cond_1b3
    :goto_1b3
    const-string v3, "force_display_endcall_screen"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_406

    .line 1251
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v5, :cond_1ca

    .line 1252
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1262
    :cond_1ca
    :goto_1ca
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v3

    .line 1267
    sget-object v5, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v3, v5, :cond_41b

    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1276
    if-eqz v0, :cond_40d

    .line 1281
    const-string v0, "InCallScreen"

    const-string v3, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const-string v0, "force_display_endcall_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 1283
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_20b

    .line 1284
    const-string v0, "pending error state, update screen"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1285
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1324
    :cond_20b
    const v0, 0x1129d

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1331
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_43e

    .line 1334
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1350
    const-string v0, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1380
    :cond_22f
    :goto_22f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1382
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->updateScreenOrientation(Landroid/content/res/Configuration;)V

    .line 1386
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_24f

    .line 1388
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1389
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1393
    :cond_24f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_494

    move v0, v1

    :goto_25a
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1401
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_26c

    .line 1402
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1404
    :cond_26c
    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1405
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionStatus(Z)V

    .line 1408
    :cond_277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/InCallScreen;->mLastInCallScreenResumeTime:J

    .line 1410
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v3, Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2fa

    .line 1430
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2fa

    .line 1431
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1432
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1434
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v3

    .line 1435
    if-eqz v3, :cond_2dc

    .line 1436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ecnUtils.getECNSentFlag(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/phone/ECNUtils;->getECNSentFlag()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / ecnUtils.getECNUVRSentFlag(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/phone/ECNUtils;->getECNUVRSentFlag()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 1438
    :cond_2dc
    const-string v4, "feature_ecn"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f2

    if-eqz v3, :cond_2f2

    invoke-virtual {v3}, Lcom/android/phone/ECNUtils;->getECNSentFlag()Z

    move-result v4

    if-nez v4, :cond_2fa

    invoke-virtual {v3}, Lcom/android/phone/ECNUtils;->getECNUVRSentFlag()Z

    move-result v3

    if-nez v3, :cond_2fa

    .line 1440
    :cond_2f2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v2, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 1452
    :cond_2fa
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v0, :cond_313

    .line 1454
    const-string v0, "onResume(): detected \"show already disconnected state\" situation. set up DELAYED_CLEANUP_AFTER_DISCONNECT message with 4500 msec delay."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1463
    :cond_313
    const-string v0, "onResume() done."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1465
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38c

    .line 1466
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_33c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

    if-nez v0, :cond_33c

    .line 1467
    new-instance v0, Lcom/android/phone/RcsContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/phone/RcsContentObserver;-><init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

    .line 1470
    :cond_33c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

    if-eqz v0, :cond_349

    .line 1471
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRcsContentObserver:Lcom/android/phone/RcsContentObserver;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/RcsContentObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    .line 1472
    :cond_349
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1473
    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1477
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_38c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-nez v0, :cond_38c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_38c

    invoke-static {p0}, Lcom/android/phone/RcsShare;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38c

    .line 1478
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v3

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/phone/RcsShare;->resumeShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1483
    :cond_38c
    const-string v0, "ota_mode_disable_expand"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c1

    .line 1484
    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDomesticOtaStart:Ljava/lang/String;

    .line 1486
    const-string v0, "true"

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDomesticOtaStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c1

    .line 1488
    invoke-direct {p0, v6, v1}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    .line 1489
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->requestSystemKeyEvent(IZ)Z

    .line 1492
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mLocked:Z

    .line 1494
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1495
    const/high16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1504
    :cond_3c1
    :goto_3c1
    return-void

    .line 1086
    :cond_3c2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->getMultiWindowEnabled()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1087
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindow;->setMultiWindowEnabled(Z)Z

    goto/16 :goto_8a

    .line 1089
    :cond_3d1
    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->getMultiWindowEnabled()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1090
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindow;->setMultiWindowEnabled(Z)Z

    goto/16 :goto_8a

    .line 1172
    :cond_3e6
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    goto/16 :goto_15a

    .line 1212
    :cond_3eb
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3f7

    .line 1213
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    :cond_3f7
    move v0, v2

    goto/16 :goto_172

    .line 1230
    :cond_3fa
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_18b

    .line 1246
    :cond_3ff
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto/16 :goto_1b3

    .line 1258
    :cond_406
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    goto/16 :goto_1ca

    .line 1302
    :cond_40d
    const-string v0, "InCallScreen"

    const-string v2, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1311
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_3c1

    .line 1314
    :cond_41b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 1315
    iget-object v0, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v3, :cond_42f

    iget-object v0, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v3, :cond_20b

    .line 1317
    :cond_42f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_43a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 1318
    :cond_43a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_3c1

    .line 1364
    :cond_43e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1366
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_453

    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 1368
    :cond_453
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22f

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume -DISMISSING mCallLostDialog , call state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_22f

    .line 1371
    const-string v0, "onResume -Dialing : DISMISSING mCallLostDialog !!!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    goto/16 :goto_22f

    :cond_494
    move v0, v2

    .line 1393
    goto/16 :goto_25a

    :cond_497
    move v3, v2

    goto/16 :goto_19a

    :cond_49a
    move v0, v2

    goto/16 :goto_68
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 1044
    const-string v0, "InCallScreen"

    const-string v1, "onStart()..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1047
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 1049
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1050
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1051
    const/16 v1, 0x11ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1053
    :cond_1e
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1658
    const-string v0, "onStop()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1659
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1661
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1663
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1666
    const-string v1, "block_data_during_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1667
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsActivityVisible:Z

    if-nez v1, :cond_3c

    .line 1668
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionStatus(Z)V

    .line 1670
    :cond_3c
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_a0

    .line 1671
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1675
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 1681
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_95

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_95

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_95

    .line 1689
    const-string v0, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1691
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1693
    invoke-static {}, Lcom/android/phone/EcidClient;->endAllLookupQueries()V

    .line 1696
    :cond_88
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_95

    .line 1697
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1700
    :cond_95
    const-string v0, "vi_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1701
    invoke-static {}, Lcom/android/phone/CallAnimation;->clearAnimation()V

    .line 1705
    :cond_a0
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1706
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_b4

    .line 1707
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1708
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 1712
    :cond_b4
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1713
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1714
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallController;->setBarringPopup(Z)V

    .line 1715
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallBarringCheckPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1718
    :cond_d8
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2773
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 2774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2777
    sget-object v1, Lcom/android/phone/InCallScreen$44;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_78

    .line 2818
    const v0, 0x7f0e01b4

    .line 2826
    :goto_29
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_39

    .line 2827
    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2828
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2830
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2833
    :cond_39
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2837
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2839
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2840
    return-void

    .line 2781
    :pswitch_5f
    const v0, 0x7f0e01b5

    .line 2782
    goto :goto_29

    .line 2787
    :pswitch_63
    const v0, 0x7f0e01b6

    .line 2788
    goto :goto_29

    .line 2794
    :pswitch_67
    const v0, 0x7f0e01b7

    .line 2795
    goto :goto_29

    .line 2800
    :pswitch_6b
    const v0, 0x7f0e01b8

    .line 2801
    goto :goto_29

    .line 2806
    :pswitch_6f
    const v0, 0x7f0e01b9

    .line 2807
    goto :goto_29

    .line 2811
    :pswitch_73
    const v0, 0x7f0e01ba

    .line 2812
    goto :goto_29

    .line 2777
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_6f
        :pswitch_73
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2403
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2404
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    .line 2406
    if-eqz p1, :cond_134

    .line 2407
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_incomming_calls"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2409
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged: BARGE_IN voiceInputControl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incomingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2414
    if-lez v0, :cond_121

    if-lez v1, :cond_121

    .line 2415
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 2416
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_116

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->shouldVibrate()Z

    move-result v1

    if-nez v1, :cond_116

    if-nez v0, :cond_116

    .line 2417
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_8a

    .line 2418
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showBargeInNotification()V

    .line 2419
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 2446
    :cond_8a
    :goto_8a
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsActivityVisible:Z

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsActivityVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsActivityVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2449
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2450
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->controlActionBar()V

    .line 2453
    :cond_af
    if-nez p1, :cond_c0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_c0

    .line 2454
    const-string v0, "- onWindowFocusChanged: faking onDialerKeyUp()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 2458
    :cond_c0
    const-string v0, "vi_animation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 2460
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e9

    .line 2467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2468
    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mLastInCallScreenResumeTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_e9

    .line 2469
    if-eqz p1, :cond_e9

    .line 2476
    :cond_e9
    if-nez p1, :cond_115

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_115

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_115

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isInCallScreenTopActivity()Z

    move-result v0

    if-nez v0, :cond_115

    .line 2482
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 2483
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateProximityMode()V

    .line 2484
    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 2485
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionStatus(Z)V

    .line 2488
    :cond_115
    return-void

    .line 2422
    :cond_116
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_8a

    .line 2423
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    goto/16 :goto_8a

    .line 2427
    :cond_121
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-ne v0, v4, :cond_8a

    .line 2429
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    goto/16 :goto_8a

    .line 2433
    :cond_134
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-ne v0, v4, :cond_8a

    .line 2435
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    goto/16 :goto_8a
.end method

.method requestCloseOtaFailureNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 6761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6762
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6770
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 6778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6779
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6780
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .registers 4

    .prologue
    const/16 v2, 0x72

    .line 6695
    const-string v0, "requestUpdateBluetoothIndication()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6701
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6702
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6703
    return-void
.end method

.method requestUpdateDockUi()V
    .registers 4

    .prologue
    const/16 v2, 0x98

    .line 6547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUpdateDockUi()... PhoneApp.mIsDockConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6549
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6550
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6551
    return-void
.end method

.method requestUpdateScreen()V
    .registers 4

    .prologue
    const/16 v2, 0x7a

    .line 6541
    const-string v0, "requestUpdateScreen()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 6542
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6543
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6544
    return-void
.end method

.method public resetInCallScreenMode()V
    .registers 2

    .prologue
    .line 6947
    const-string v0, "resetInCallScreenMode: setting mode to UNDEFINED..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6948
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6949
    return-void
.end method

.method public setBlockEndAnimation(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1883
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mBlockEndAnimation:Z

    .line 1884
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlockEndAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBlockEndAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void
.end method

.method setHasHoldingBGCall(Z)V
    .registers 2
    .parameter "mhasHoldingBGCall"

    .prologue
    .line 1039
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 1040
    return-void
.end method

.method public setOneHandDialpadDirection(Z)V
    .registers 3
    .parameter "isRight"

    .prologue
    .line 4487
    const-string v0, "setOneHandDialpadDirection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4488
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setOneHandDirection(Z)V

    .line 4489
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1036
    return-void
.end method

.method shouldVibrate()Z
    .registers 5

    .prologue
    .line 2380
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 2381
    .local v0, ringer:Lcom/android/phone/Ringer;
    const/4 v1, 0x0

    .line 2382
    .local v1, shouldVibrate:Z
    if-eqz v0, :cond_d

    .line 2383
    invoke-virtual {v0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v1

    .line 2385
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldVibrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V

    .line 2386
    return v1
.end method

.method public toggleBluetooth()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4360
    const-string v0, "toggleBluetooth()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4362
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4364
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4365
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4366
    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 4401
    :goto_19
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4402
    return-void

    .line 4375
    :cond_1d
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4376
    invoke-static {p0, v1, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4378
    :cond_26
    invoke-static {v1, v1}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 4379
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_19

    .line 4384
    :cond_2d
    const-string v0, "InCallScreen"

    const-string v1, "toggleBluetooth(): bluetooth is unavailable"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4389
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mNotForegroundButUpdate:Z

    .line 4391
    :cond_3e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4392
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4393
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4394
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4395
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method public toggleSpeaker()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 4326
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_36

    move v0, v1

    .line 4327
    .local v0, newSpeakerState:Z
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleSpeaker(): newSpeakerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4329
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4330
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4332
    :cond_2f
    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4337
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4338
    return-void

    .line 4326
    .end local v0           #newSpeakerState:Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method updateAfterRadioTechnologyChange()V
    .registers 3

    .prologue
    .line 1948
    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1955
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1958
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1963
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1964
    return-void
.end method

.method updateButtonStateOutsideInCallTouchUi()V
    .registers 3

    .prologue
    .line 6996
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_d

    .line 6997
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setSecondaryCallClickable(Z)V

    .line 6999
    :cond_d
    return-void
.end method

.method public updateInCallTouchUi()V
    .registers 3

    .prologue
    .line 6503
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_b

    .line 6504
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 6506
    :cond_b
    return-void
.end method

.method public updateInCallTouchUiLayout()V
    .registers 1

    .prologue
    .line 6509
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->setContentView()V

    .line 6510
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 6511
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 6512
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .registers 4
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1904
    if-eqz p1, :cond_c

    .line 1905
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1909
    :goto_b
    return-void

    .line 1907
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_b
.end method
