.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private final TURN_ON_BT_TIMEOUT:I

.field private final TURN_ON_EXTRA_VOL_TIMEOUT:I

.field private final TURN_ON_SPEAKER_TIMEOUT:I

.field private final UNHOLD_BUTTON_BLINK:I

.field private final UNHOLD_BUTTON_DELAY:I

.field private final UPDATE_BT_BUTTON:I

.field private final UPDATE_EXTRAVOL_BUTTON:I

.field private final UPDATE_SPEAKER_BUTTON:I

.field private mAddButton:Landroid/widget/Button;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mBtHeadsetIcon:Landroid/widget/ImageView;

.field private mCallEndIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mCdmaSwapButton:Landroid/widget/Button;

.field private mChatOnID:Ljava/lang/String;

.field private mContactButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

.field private mExtraVlolButton:Landroid/widget/ToggleButton;

.field private mHandler:Landroid/os/Handler;

.field private mHearingCorrectionIcon:Landroid/widget/ImageView;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/view/View;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallIconContainer:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field private mIsOnehandOn:Z

.field private mIsOnehandOptionRight:Z

.field private mLastIncomingCallActionTime:J

.field private mLeftArrow:Landroid/view/View;

.field private mManageConfButton:Landroid/view/View;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/Button;

.field private mMergeIcon:Landroid/graphics/drawable/Drawable;

.field private mMultiCallButton:Landroid/widget/ImageButton;

.field private mMultiCallButtonContainer:Landroid/widget/LinearLayout;

.field private mMultiCallButtonLabel:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionIcon:Landroid/widget/ImageView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPopupVisible:Z

.field private mRecordButton:Landroid/widget/Button;

.field private mRecordOffIcon:Landroid/graphics/drawable/Drawable;

.field private mRecordOnIcon:Landroid/graphics/drawable/Drawable;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgDrawerLayout:Landroid/view/View;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRightArrow:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/view/View;

.field private mSwapIcon:Landroid/graphics/drawable/Drawable;

.field private mSwitchButtonContainer:Landroid/widget/LinearLayout;

.field private mUnholdButton:Landroid/view/View;

.field private mUnholdButtonBlinkCount:I

.field private mWebExButton:Landroid/widget/Button;

.field private prevIsOnehandOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 121
    const-string v1, "onehand_dialer_enabled"

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 122
    const-string v1, "onehand_direction"

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 169
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 193
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_SPEAKER_BUTTON:I

    .line 194
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_SPEAKER_TIMEOUT:I

    .line 196
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_BT_BUTTON:I

    .line 197
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_BT_TIMEOUT:I

    .line 199
    const/16 v1, 0x82

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_EXTRAVOL_BUTTON:I

    .line 200
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_EXTRA_VOL_TIMEOUT:I

    .line 202
    const/16 v1, 0x8c

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UNHOLD_BUTTON_BLINK:I

    .line 203
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->UNHOLD_BUTTON_DELAY:I

    .line 204
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mChatOnID:Ljava/lang/String;

    .line 211
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 265
    const-string v1, "InCallTouchUi constructor..."

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- this = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- context "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", attrs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    .line 270
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 271
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_a5

    move v1, v2

    :goto_8f
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 272
    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 274
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 275
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 276
    invoke-static {v3, p1, p0}, Lcom/android/phone/RcsShare;->fetchIncallButtonLayout(ZLandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 295
    :goto_a4
    return-void

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_a5
    move v1, v3

    .line 271
    goto :goto_8f

    .line 278
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_a7
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 279
    const v1, 0x7f04005c

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_a4

    .line 283
    :cond_b8
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v1, :cond_cb

    .line 284
    const v1, 0x7f040046

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_a4

    .line 289
    :cond_cb
    const v1, 0x7f040045

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_a4
.end method

.method private UnholdButtonBlink()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/high16 v2, 0x437f

    const/16 v3, 0x8c

    const/4 v1, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    if-eqz v0, :cond_4b

    .line 1322
    iget v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_39

    const/4 v0, 0x1

    .line 1323
    :goto_14
    if-eqz v0, :cond_3b

    .line 1324
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1332
    :goto_26
    iget v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    .line 1333
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1334
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1341
    :goto_38
    return-void

    :cond_39
    move v0, v1

    .line 1322
    goto :goto_14

    .line 1328
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_26

    .line 1336
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1337
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1338
    iput v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    goto :goto_38
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/EndCallButtonsView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallTouchUi;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->UnholdButtonBlink()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallTouchUi;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    return-object v0
.end method

.method private dumpBottomButtonState()V
    .registers 3

    .prologue
    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - dialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1354
    return-void
.end method

.method private static getButtonState(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1357
    if-nez p0, :cond_5

    .line 1358
    const-string v0, "(null)"

    .line 1375
    :goto_4
    return-object v0

    .line 1360
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "VISIBLE"

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_5a

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_48
    :goto_48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1361
    :cond_4d
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_57

    const-string v0, "INVISIBLE"

    goto :goto_1d

    :cond_57
    const-string v0, "GONE"

    goto :goto_1d

    .line 1365
    :cond_5a
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_98

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1368
    :cond_98
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_b9

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1370
    :cond_b9
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_48

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48
.end method

.method private hideIncomingCallWidget()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1825
    const-string v0, "hideIncomingCallWidget()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1876
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 1877
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 1879
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1880
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 1881
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2093
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 2097
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2098
    return-void
.end method

.method private okToShowInCallControls()Z
    .registers 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_26

    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCallWidget(). widget visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1894
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1895
    if-eqz v0, :cond_28

    .line 1896
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1898
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setAlpha(F)V

    .line 1904
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1907
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowRespondViaSms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    if-eqz v0, :cond_75

    .line 1925
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1926
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 1939
    :goto_59
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1941
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1952
    :cond_6a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->reset()V

    .line 1974
    return-void

    .line 1935
    :cond_75
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_59
.end method

.method private showPopup()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1597
    const-string v0, "showAudioModePopup()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1599
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    .line 1600
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1601
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1602
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1604
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1606
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v1

    .line 1607
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1609
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1611
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 1612
    return-void
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 869
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 883
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 886
    const-string v0, "updateInCallControls()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v5}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 891
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 892
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    if-eqz v6, :cond_35a

    move v0, v1

    :goto_2d
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 894
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v0, :cond_6b

    .line 895
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_35d

    move v0, v3

    :goto_4d
    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 896
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_5d

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v0, :cond_360

    move v0, v1

    :goto_5a
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 897
    :cond_5d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_6b

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v0, :cond_363

    move v0, v2

    :goto_68
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 903
    :cond_6b
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v0, :cond_369

    .line 904
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    if-nez v6, :cond_366

    move v0, v1

    :goto_74
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 906
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 923
    :goto_81
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v0, :cond_95

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_95

    .line 924
    if-eq v4, v3, :cond_8e

    const/4 v0, 0x3

    if-ne v4, v0, :cond_3a1

    .line 931
    :cond_8e
    const-string v0, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v0, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_95
    :goto_95
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 945
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 946
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 951
    :cond_b4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v7, v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 952
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    .line 953
    if-eqz v0, :cond_c6

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    if-nez v8, :cond_c6

    .line 954
    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    move v0, v1

    .line 958
    :cond_c6
    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_105

    .line 959
    if-eqz v0, :cond_3c4

    .line 960
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0e038f

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 961
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 969
    :goto_df
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-nez v6, :cond_3d5

    move v0, v1

    :goto_e4
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 973
    const-string v0, "lawmo_lock"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 974
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 980
    :cond_105
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 995
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v0, :cond_3d8

    .line 997
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0e01c7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 998
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1000
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1008
    :cond_128
    :goto_128
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1012
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1013
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1019
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 1021
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 1022
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1026
    :cond_157
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "call_extra_volume"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1027
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_extra_vol"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1030
    const-string v7, "extra_volume"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f2

    if-ne v0, v3, :cond_3f2

    .line 1032
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1033
    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 1034
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 1035
    const-string v0, "InCallTouchUi"

    const-string v7, "mExtraVlolButton.setEnabled(true)"

    invoke-static {v0, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1039
    :cond_1a0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1045
    :cond_1ad
    :goto_1ad
    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f9

    .line 1046
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6e

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1cd

    .line 1047
    const-string v0, "InCallTouchUi"

    const-string v7, "mSpeakerButton.setEnabled(inCallControlState.speakerEnabled)"

    invoke-static {v0, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1053
    :cond_1cd
    :goto_1cd
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1055
    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_402

    .line 1056
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x78

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1ed

    .line 1057
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1062
    :cond_1ed
    :goto_1ed
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1065
    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->updateInCallIcons(Lcom/android/phone/InCallControlState;)V

    .line 1068
    const-string v0, "onscreen_manage_conference"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 1069
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v0, :cond_40b

    .line 1070
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_208
    :goto_208
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v0, :cond_422

    .line 1080
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1082
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v0, :cond_412

    .line 1083
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    if-eqz v0, :cond_238

    .line 1086
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8c

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8c

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1094
    :cond_238
    :goto_238
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1142
    :goto_242
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1143
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_256

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v0, :cond_256

    .line 1149
    const-string v0, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v0, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_256
    const-string v0, "thrway_active_disable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 1153
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1155
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1159
    :cond_26f
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ce

    if-ne v4, v10, :cond_2ce

    .line 1160
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_4fc

    .line 1161
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v0, v6, :cond_4e3

    .line 1162
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02bf

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1178
    :cond_29e
    :goto_29e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->>  canMulti"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1180
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    if-eqz v0, :cond_556

    .line 1181
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1190
    :cond_2ce
    :goto_2ce
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2fb

    if-ne v4, v10, :cond_2fb

    .line 1192
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_2ec

    .line 1193
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    :cond_2ec
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_2fb

    .line 1197
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    :cond_2fb
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30c

    .line 1205
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v0, :cond_55d

    .line 1206
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1225
    :cond_30c
    :goto_30c
    if-ne v4, v10, :cond_31d

    .line 1226
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_31d

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_31d

    .line 1232
    const-string v0, "InCallTouchUi"

    const-string v1, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_31d
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_351

    .line 1239
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090137

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, p0, v0, v1, v3}, Lcom/android/phone/RcsShare;->prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 1242
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56d

    .line 1243
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    .line 1291
    :cond_351
    :goto_351
    const-string v0, "At the end of updateInCallControls()."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->dumpBottomButtonState()V

    .line 1294
    return-void

    :cond_35a
    move v0, v2

    .line 892
    goto/16 :goto_2d

    :cond_35d
    move v0, v1

    .line 895
    goto/16 :goto_4d

    :cond_360
    move v0, v2

    .line 896
    goto/16 :goto_5a

    :cond_363
    move v0, v1

    .line 897
    goto/16 :goto_68

    :cond_366
    move v0, v2

    .line 904
    goto/16 :goto_74

    .line 907
    :cond_369
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_38b

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_38b

    .line 908
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    if-nez v6, :cond_389

    move v0, v1

    :goto_37a
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 910
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_81

    :cond_389
    move v0, v2

    .line 908
    goto :goto_37a

    .line 919
    :cond_38b
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    if-nez v6, :cond_39f

    move v0, v1

    :goto_390
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_81

    :cond_39f
    move v0, v2

    .line 919
    goto :goto_390

    .line 933
    :cond_3a1
    if-ne v4, v10, :cond_3aa

    .line 936
    const-string v0, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 939
    :cond_3aa
    const-string v0, "InCallTouchUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_95

    .line 964
    :cond_3c4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0e038e

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_df

    :cond_3d5
    move v0, v2

    .line 969
    goto/16 :goto_e4

    .line 1003
    :cond_3d8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0e01c6

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1006
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_128

    .line 1041
    :cond_3f2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1ad

    .line 1051
    :cond_3f9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_1cd

    .line 1060
    :cond_402
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_1ed

    .line 1072
    :cond_40b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_208

    .line 1090
    :cond_412
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-boolean v1, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 1091
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_238

    .line 1096
    :cond_422
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_4b2

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallControls: inCallControlState.canSwap = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", phoneType ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1098
    if-eq v4, v3, :cond_44d

    const/4 v0, 0x3

    if-ne v4, v0, :cond_46d

    .line 1100
    :cond_44d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setHasHoldingBGCall(Z)V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    :cond_461
    :goto_461
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_242

    .line 1104
    :cond_46d
    if-ne v4, v10, :cond_499

    .line 1105
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1106
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_484

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_461

    .line 1107
    :cond_484
    const-string v0, "updateInCallControls: mCdmaSwapButton.setVisibility"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1108
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    if-nez v6, :cond_497

    move v0, v1

    :goto_48e
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_461

    :cond_497
    move v0, v2

    .line 1108
    goto :goto_48e

    .line 1113
    :cond_499
    const-string v0, "InCallTouchUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_461

    .line 1128
    :cond_4b2
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v0, :cond_4d6

    .line 1129
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_242

    .line 1137
    :cond_4d6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_242

    .line 1164
    :cond_4e3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v0, v6, :cond_29e

    .line 1165
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1166
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02b6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29e

    .line 1168
    :cond_4fc
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_29e

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1170
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v0, v6, :cond_53d

    .line 1171
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02bf

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29e

    .line 1173
    :cond_53d
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v0, v6, :cond_29e

    .line 1174
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1175
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02be

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29e

    .line 1186
    :cond_556
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2ce

    .line 1208
    :cond_55d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    iget-boolean v3, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-nez v3, :cond_567

    iget-boolean v3, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v3, :cond_568

    :cond_567
    move v2, v1

    :cond_568
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_30c

    .line 1244
    :cond_56d
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_351

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_351

    .line 1245
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_351

    .line 1246
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    goto/16 :goto_351
.end method

.method private updateInCallIcons(Lcom/android/phone/InCallControlState;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1379
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1380
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1382
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_81

    .line 1387
    :goto_1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v4, :cond_6a

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v4, :cond_6a

    :cond_31
    move v0, v3

    :goto_32
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    const-string v0, "noise_reduction_icon_no_display_always"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1392
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1396
    :goto_42
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHearingCorrectionIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoiceCallEq()Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v2

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1398
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1399
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1400
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBtHeadsetIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_7f

    :goto_66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1402
    :cond_69
    return-void

    :cond_6a
    move v0, v2

    .line 1388
    goto :goto_32

    .line 1394
    :cond_6c
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v2

    :goto_77
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_42

    :cond_7b
    move v0, v3

    goto :goto_77

    :cond_7d
    move v0, v3

    .line 1396
    goto :goto_4b

    :cond_7f
    move v2, v3

    .line 1400
    goto :goto_66

    :cond_81
    move-object v0, v1

    goto :goto_1b
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .registers 2

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 1626
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    .line 1628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 1630
    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2103
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2104
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2105
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2108
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public getTouchUiHeight()I
    .registers 4

    .prologue
    .line 1698
    const/4 v0, 0x0

    .line 1701
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1704
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1710
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1712
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 732
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

    invoke-direct {p0, v1, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 734
    packed-switch v0, :pswitch_data_104

    .line 814
    :pswitch_33
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 817
    :goto_55
    return-void

    .line 762
    :pswitch_56
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_55

    .line 766
    :pswitch_5c
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 767
    const-string v1, "InCallTouchUi"

    const-string v2, "###SPEAKER_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 768
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 769
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 772
    :cond_77
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_55

    .line 776
    :pswitch_7d
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 778
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 779
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 782
    :cond_9d
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_55

    .line 786
    :pswitch_a3
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    goto :goto_55

    .line 794
    :pswitch_a7
    const-string v1, "extra_volume_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 795
    const-string v1, "InCallTouchUi"

    const-string v2, "###EXTRA_VOLUME_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 796
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 797
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 799
    :cond_c2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_55

    .line 802
    :pswitch_c8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 805
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_55

    .line 808
    :pswitch_e6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 811
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_55

    .line 734
    :pswitch_data_104
    .packed-switch 0x7f09012a
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_5c
        :pswitch_56
        :pswitch_7d
        :pswitch_56
        :pswitch_56
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_56
        :pswitch_33
        :pswitch_33
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_33
        :pswitch_56
        :pswitch_33
        :pswitch_a3
        :pswitch_a7
        :pswitch_33
        :pswitch_e6
        :pswitch_c8
    .end packed-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 4
    .parameter

    .prologue
    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 1673
    return-void
.end method

.method protected onFinishInflate()V
    .registers 11

    .prologue
    const/16 v9, 0x19

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 303
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 309
    const v5, 0x7f090158

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/IncomingCallWidget;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 310
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 313
    const v5, 0x7f0901e2

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SlidingDrawer;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 314
    const v5, 0x7f0901e5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 315
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 316
    const v5, 0x7f090159

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    .line 319
    :cond_5b
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 320
    const v5, 0x7f0901e6

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 321
    .local v1, rejectOptionText:Landroid/widget/TextView;
    const v5, 0x7f0e074b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 324
    .end local v1           #rejectOptionText:Landroid/widget/TextView;
    :cond_72
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v6, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 334
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v6, Lcom/android/phone/InCallTouchUi$3;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$3;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 345
    const-string v5, "lawmo_lock"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 346
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v5, v7}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 347
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 349
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_af
    const v5, 0x7f09015a

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 355
    const v5, 0x7f090128

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    .line 356
    const v5, 0x7f090138

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    .line 359
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d9

    .line 361
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    const/high16 v6, -0x8000

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 365
    :cond_d9
    const v5, 0x7f090104

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EndCallButtonsView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    .line 367
    new-instance v3, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v3}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 368
    .local v3, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0, v8, v9}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 369
    .local v0, lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    new-instance v2, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v9}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 373
    .local v2, rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09012a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 374
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 377
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09012c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 378
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 381
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09012b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    .line 382
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 385
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090131

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 386
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090132

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/widget/Button;

    .line 389
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090130

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    .line 392
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 393
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 396
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 397
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090136

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 398
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 399
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 402
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090146

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    .line 403
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v3}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 408
    :cond_1d2
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090133

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 409
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 413
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090134

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 414
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v3}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 420
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090135

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 421
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_261

    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v5, :cond_261

    .line 425
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090149

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    .line 426
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 430
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090148

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    .line 431
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 439
    :cond_261
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_414

    .line 440
    new-instance v4, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    .line 447
    .local v4, smallerTouchListenerExceptLeftEdge:Landroid/view/View$OnTouchListener;
    :goto_270
    const-string v5, "onscreen_manage_conference"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_292

    .line 448
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09013c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    .line 449
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 451
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    :cond_292
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09013e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    .line 455
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09013f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    .line 456
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 458
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090140

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    .line 460
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 462
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    .line 464
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 466
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    const-string v5, "support_lgt_multi_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_351

    .line 470
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090142

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    .line 471
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090143

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    .line 472
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090144

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    .line 473
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_32a

    .line 474
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 479
    :cond_32a
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020161

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    .line 480
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020172

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    .line 481
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02016e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    .line 485
    :cond_351
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09012d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    .line 486
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_394

    const-string v5, "voice_call_recording_menu"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_394

    .line 490
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09012e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    .line 491
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 496
    :cond_394
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090145

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    .line 497
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 498
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 501
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090139

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionIcon:Landroid/widget/ImageView;

    .line 502
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09013a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHearingCorrectionIcon:Landroid/widget/ImageView;

    .line 505
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3df

    .line 506
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09013b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBtHeadsetIcon:Landroid/widget/ImageView;

    .line 509
    :cond_3df
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020355

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020354

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02033f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 512
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020344

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 534
    return-void

    .line 443
    .end local v4           #smallerTouchListenerExceptLeftEdge:Landroid/view/View$OnTouchListener;
    :cond_414
    new-instance v4, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    .restart local v4       #smallerTouchListenerExceptLeftEdge:Landroid/view/View$OnTouchListener;
    goto/16 :goto_270
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 2013
    return-void
.end method

.method public onIncomingRing()V
    .registers 1

    .prologue
    .line 2026
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter

    .prologue
    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1657
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_74

    .line 1658
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1662
    :goto_73
    return v0

    .line 1661
    :cond_74
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v0

    .line 1662
    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_73
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1736
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_40

    .line 1737
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1815
    :goto_3f
    return-void

    .line 1750
    :cond_40
    packed-switch p2, :pswitch_data_92

    .line 1801
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3f

    .line 1752
    :pswitch_5c
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1753
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1760
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_3f

    .line 1764
    :pswitch_70
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1765
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_3f

    .line 1793
    :pswitch_7e
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1794
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_3f

    .line 1750
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_70
        :pswitch_5c
        :pswitch_7e
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .registers 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    if-eqz v0, :cond_10

    .line 1644
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1646
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    .line 1648
    :cond_10
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 299
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 14
    .parameter "cm"

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 541
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v5, :cond_e

    .line 542
    const-string v5, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 707
    :cond_d
    :goto_d
    return-void

    .line 546
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 547
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState: current state = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, showIncomingCallControls:Z
    const/4 v2, 0x0

    .line 552
    .local v2, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 553
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 560
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v8, :cond_5c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 568
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 569
    const-string v5, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 570
    const/4 v3, 0x1

    .line 602
    :cond_50
    :goto_50
    if-eqz v3, :cond_6a

    if-eqz v2, :cond_6a

    .line 603
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    :cond_5c
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 592
    const/4 v2, 0x1

    goto :goto_50

    .line 594
    :cond_64
    const-string v5, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_50

    .line 619
    :cond_6a
    if-eqz v2, :cond_13e

    .line 620
    const-string v5, "- updateState: showing in-call controls..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 622
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 624
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_84

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v5, v5, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v8, :cond_8c

    :cond_84
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v5, v5, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v5, :cond_fa

    .line 632
    :cond_8c
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v5, p1}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 633
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v5}, Lcom/android/phone/EndCallButtonsView;->getVisibility()I

    move-result v5

    if-ne v5, v11, :cond_a2

    .line 634
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    const-wide/16 v9, 0x3e8

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 636
    :cond_a2
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_ab

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :cond_ab
    :goto_ab
    if-eqz v3, :cond_14a

    .line 656
    const-string v5, "- updateState: showing incoming call widget..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 657
    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 666
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v7}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 684
    :goto_be
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_15d

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_15d

    .line 694
    :goto_c6
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d6

    const-string v5, "hw_home_key"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 697
    :cond_d6
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 700
    :cond_df
    const-string v5, "disable_button_bt_touch_sound"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 701
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v5, :cond_162

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v5

    if-eqz v5, :cond_162

    .line 702
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_d

    .line 638
    :cond_fa
    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 639
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_13c

    move v5, v6

    :goto_113
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 640
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eq v5, v8, :cond_129

    .line 641
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 642
    const-string v5, "HEY::reInflate()"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 643
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 646
    :cond_129
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 647
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    if-eqz v5, :cond_ab

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v5, v11}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto/16 :goto_ab

    :cond_13c
    move v5, v7

    .line 639
    goto :goto_113

    .line 651
    :cond_13e
    const-string v5, "- updateState: HIDING in-call controls..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 652
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ab

    .line 668
    :cond_14a
    const-string v5, "- updateState: HIDING incoming call widget..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 669
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 673
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_be

    .line 691
    :cond_15d
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_c6

    .line 704
    :cond_162
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_d
.end method
