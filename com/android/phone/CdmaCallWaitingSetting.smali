.class public Lcom/android/phone/CdmaCallWaitingSetting;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallWaitingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallWaitingSetting$3;,
        Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCWDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDisplayMode:I

.field private mGetMoreOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1b

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_1b
    move v0, v2

    .line 66
    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    .line 138
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    .line 342
    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$1;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$2;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallWaitingSetting;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallWaitingSetting;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private final dismissBusyDialog()V
    .registers 3

    .prologue
    .line 591
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 593
    :cond_1c
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_25

    .line 594
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    .line 596
    :cond_25
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 713
    const-string v0, "CDMA call waiting settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V
    .registers 4
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 470
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState First => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 471
    :cond_1a
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_2f

    .line 472
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 473
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_2f
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    .line 476
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V
    .registers 7
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x384

    .line 481
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState Second => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 483
    :cond_28
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_36

    .line 484
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_35

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 582
    :cond_35
    :goto_35
    return-void

    .line 490
    :cond_36
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_90

    .line 491
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_5e

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 492
    :cond_5e
    sparse-switch p2, :sswitch_data_174

    .line 517
    :goto_61
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    goto :goto_35

    .line 494
    :sswitch_64
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_73

    .line 495
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    .line 499
    :goto_6d
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_61

    .line 497
    :cond_73
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_6d

    .line 502
    :sswitch_77
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_61

    .line 505
    :sswitch_7d
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_8c

    .line 506
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    .line 510
    :goto_86
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_61

    .line 508
    :cond_8c
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_86

    .line 521
    :cond_90
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$3;->$SwitchMap$com$android$phone$CdmaCallWaitingSetting$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_182

    .line 581
    :cond_9d
    :goto_9d
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    goto :goto_35

    .line 525
    :pswitch_a0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_9d

    .line 526
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_ad

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 527
    :cond_ad
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :pswitch_b5
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 533
    :cond_cf
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_d7

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_9d

    .line 535
    :cond_d7
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_df

    .line 536
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_9d

    .line 537
    :cond_df
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_9d

    .line 538
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_ec

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 539
    :cond_ec
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :pswitch_f4
    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_9d

    .line 548
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_106

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 549
    :cond_106
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_9d

    .line 554
    :pswitch_10a
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_11f

    .line 555
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_117

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 556
    :cond_117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_11f
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_128

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 560
    :cond_128
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    goto/16 :goto_9d

    .line 563
    :pswitch_12d
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_142

    .line 564
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_13a

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 565
    :cond_13a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_142
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_14b

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 569
    :cond_14b
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto/16 :goto_9d

    .line 572
    :pswitch_150
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_165

    .line 573
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_15d

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 574
    :cond_15d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_165
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_16e

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 578
    :cond_16e
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto/16 :goto_9d

    .line 492
    nop

    :sswitch_data_174
    .sparse-switch
        0xc8 -> :sswitch_64
        0x12c -> :sswitch_7d
        0x320 -> :sswitch_77
    .end sparse-switch

    .line 521
    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_b5
        :pswitch_f4
        :pswitch_10a
        :pswitch_12d
        :pswitch_150
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 290
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 292
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_3f

    .line 293
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 320
    :cond_3e
    :goto_3e
    return-void

    .line 296
    :cond_3f
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 299
    const/4 v0, -0x1

    if-eq p2, v0, :cond_51

    .line 300
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    goto :goto_3e

    .line 304
    :cond_51
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 306
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_69

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_73

    .line 307
    :cond_69
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    goto :goto_3e

    .line 311
    :cond_73
    packed-switch p1, :pswitch_data_82

    goto :goto_3e

    .line 313
    :pswitch_77
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_3e

    .line 311
    :pswitch_data_82
    .packed-switch 0x5
        :pswitch_77
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 447
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 449
    :cond_1a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 450
    packed-switch p2, :pswitch_data_2a

    .line 462
    :pswitch_20
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 465
    :goto_25
    :pswitch_25
    return-void

    .line 457
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    goto :goto_25

    .line 450
    :pswitch_data_2a
    .packed-switch -0x3
        :pswitch_25
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const v6, 0x7f0e0490

    const v5, 0x7f0e0061

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 625
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 626
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 627
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 633
    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->addPreferencesFromResource(I)V

    .line 634
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "onCreate START"

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 636
    :cond_27
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 637
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_cdma_cw_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    .line 638
    const-string v1, "button_cdma_cw_dis_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 650
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_5c

    .line 651
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 652
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 653
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 655
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 656
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 658
    :cond_5c
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_79

    .line 659
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 661
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 663
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 664
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 669
    :cond_79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    .line 670
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 674
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_a7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate icicle => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 676
    :cond_a7
    if-eqz p1, :cond_e1

    .line 677
    const-string v1, "button_cdma_cw_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    .line 678
    const-string v1, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    .line 683
    :goto_b9
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v4, :cond_e0

    .line 691
    :cond_c9
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    .line 692
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 693
    :cond_d7
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 696
    :cond_e0
    return-void

    .line 680
    :cond_e1
    iput-boolean v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    .line 681
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    goto :goto_b9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0e0087

    const/4 v6, 0x1

    .line 375
    sget-boolean v4, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 377
    :cond_1f
    const/16 v4, 0x64

    if-eq p1, v4, :cond_27

    const/16 v4, 0x384

    if-ne p1, v4, :cond_6e

    .line 378
    :cond_27
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f0e007e

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 382
    sparse-switch p1, :sswitch_data_b4

    .line 397
    :goto_3c
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 439
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_44
    return-object v1

    .line 384
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_45
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    .line 385
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 386
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 390
    :sswitch_55
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 391
    iget-object v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 393
    const v4, 0x7f0e0080

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 402
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_6e
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_7a

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_7a

    const/16 v4, 0x320

    if-ne p1, v4, :cond_b2

    .line 405
    :cond_7a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e007f

    .line 409
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_be

    .line 423
    const v2, 0x7f0e0084

    .line 426
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    :goto_8b
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 434
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_44

    .line 411
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_a4
    const v2, 0x7f0e0083

    .line 414
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8b

    .line 417
    .end local v2           #msgId:I
    :sswitch_ab
    const v2, 0x7f0e0086

    .line 419
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8b

    .line 439
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_b2
    const/4 v1, 0x0

    goto :goto_44

    .line 382
    :sswitch_data_b4
    .sparse-switch
        0x64 -> :sswitch_45
        0x384 -> :sswitch_55
    .end sparse-switch

    .line 409
    :sswitch_data_be
    .sparse-switch
        0x12c -> :sswitch_a4
        0x320 -> :sswitch_ab
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 12
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 219
    iget-object v6, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v6, v7, :cond_10

    .line 220
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_f

    const-string v6, "onDialogClosed: preference request denied, currently busy."

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 243
    :cond_f
    :goto_f
    return-void

    .line 222
    :cond_10
    const/4 v6, -0x2

    if-ne p2, v6, :cond_22

    .line 223
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_1c

    const-string v6, "onDialogClosed: DialogInterface.BUTTON2"

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 224
    :cond_1c
    sget-object v6, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v6}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    goto :goto_f

    .line 228
    :cond_22
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_46

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDialogClosed: preference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buttonClicked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 230
    :cond_46
    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 231
    .local v2, nextState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    instance-of v6, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_f

    .line 232
    move-object v0, p1

    .line 233
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v4, 0x0

    .line 234
    .local v4, reason:I
    const/4 v5, 0x0

    .line 235
    .local v5, time:I
    const-string v3, ""

    .line 236
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_62

    const-string v6, "onDialogClosed: AppState.BUSY_NETWORK_CONNECT"

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 239
    :cond_62
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 240
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "simnum"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 3
    .parameter "preference"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    .line 253
    const-string v0, "*74"

    .line 259
    :goto_6
    return-object v0

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_e

    .line 256
    const-string v0, "*740"

    goto :goto_6

    .line 259
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v3, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v2, v3, :cond_11

    .line 159
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_10

    const-string v2, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 177
    :cond_10
    :goto_10
    return v1

    .line 163
    :cond_11
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_1a

    const-string v2, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 165
    :cond_1a
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 167
    .local v0, nextState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v2, :cond_24

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_44

    .line 168
    :cond_24
    const/4 v2, -0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setDisplayMode(I)V

    .line 169
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 170
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick => nextState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 172
    :cond_44
    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v2, :cond_10

    .line 173
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_51

    const-string v1, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 174
    :cond_51
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 175
    const/4 v1, 0x1

    goto :goto_10
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 600
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 601
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 604
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 606
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 613
    :cond_21
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "onResume Start"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 617
    :cond_2a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 702
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 705
    :cond_c
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 706
    const-string v0, "button_cdma_cw_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    .line 709
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    return-void
.end method

.method public setDisplayMode(I)V
    .registers 7
    .parameter "displayMode"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    .line 186
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayMode => displayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCWDataStale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 188
    :cond_28
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_31

    const-string v1, "setDisplayMode: performing requested expansion."

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 190
    :cond_31
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 191
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 215
    :goto_44
    return-void

    .line 194
    :cond_45
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_80

    .line 199
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 203
    .local v0, radioState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    .line 204
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_6d

    const-string v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 205
    :cond_6d
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_44

    .line 208
    :cond_78
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_44

    .line 211
    .end local v0           #radioState:I
    :cond_80
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_89

    const-string v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 212
    :cond_89
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_44
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 266
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResult intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 268
    :cond_24
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2b

    .line 270
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    :cond_2a
    :goto_2a
    return-void

    .line 274
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_3b

    .line 275
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "startSubActivity: dialog start activity request denied, currently busy."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    goto :goto_2a

    .line 279
    :cond_3b
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_44

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 280
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 281
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    goto :goto_2a
.end method
