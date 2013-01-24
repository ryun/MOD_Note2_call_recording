.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallForwardOptions$4;,
        Lcom/android/phone/CdmaCallForwardOptions$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field private mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCFBDataStale:Z

.field private mCFDataStale:Z

.field private mCFNRcDataStale:Z

.field private mCFNRyDataStale:Z

.field private mCFUDataStale:Z

.field private mCancelDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDialingNumCFB:Ljava/lang/String;

.field private mDialingNumCFNRc:Ljava/lang/String;

.field private mDialingNumCFNRy:Ljava/lang/String;

.field private mDialingNumCFU:Ljava/lang/String;

.field private mDisplayMode:I

.field private mGetAllCFOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

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

    .line 69
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1b

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_1b
    move v0, v2

    .line 69
    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 168
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    .line 169
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMoreDataStale:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    .line 577
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$2;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 611
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$3;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallForwardOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallForwardOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->queryAllCFOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
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
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    return p1
.end method

.method private adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V
    .registers 9
    .parameter "epn"
    .parameter "isActive"
    .parameter "template"
    .parameter "number"

    .prologue
    .line 519
    sget-boolean v2, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCFbuttonState epn => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " template =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 521
    :cond_38
    if-nez p1, :cond_3b

    .line 535
    :goto_3a
    return-void

    .line 524
    :cond_3b
    const-string v0, ""

    .line 525
    .local v0, summaryOn:Ljava/lang/CharSequence;
    if-eqz p2, :cond_54

    .line 526
    if-eqz p4, :cond_51

    .line 527
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    .line 528
    .local v1, values:[Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 530
    .end local v1           #values:[Ljava/lang/String;
    :cond_51
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 534
    :cond_54
    invoke-virtual {p1, p4}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_3a
.end method

.method private final dismissBusyDialog()V
    .registers 3

    .prologue
    .line 898
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 900
    :cond_1c
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_25

    .line 901
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    .line 903
    :cond_25
    return-void
.end method

.method private handleGetCFMessage(Landroid/os/AsyncResult;I)I
    .registers 9
    .parameter "ar"
    .parameter "reason"

    .prologue
    const/16 v4, 0x12c

    .line 476
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage ar = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 478
    :cond_26
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_36

    .line 479
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_33

    const-string v3, "handleGetCFMessage: Error getting CF enable state."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 480
    :cond_33
    const/16 v3, 0xc8

    .line 511
    :goto_35
    return v3

    .line 481
    :cond_36
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_6a

    .line 485
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage: Error during set call, reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_68
    move v3, v4

    .line 487
    goto :goto_35

    .line 489
    :cond_6a
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 490
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    if-nez v3, :cond_7f

    .line 491
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_7d

    const-string v3, "handleGetCFMessage: Error getting CF state, unexpected value."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_7d
    move v3, v4

    .line 492
    goto :goto_35

    .line 498
    :cond_7f
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v0

    .local v2, length:I
    :goto_81
    if-ge v1, v2, :cond_ae

    .line 499
    aget-object v3, v0, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b1

    .line 501
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_a9

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCFMessage: CF state successfully queried for reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 505
    :cond_a9
    aget-object v3, v0, v1

    invoke-direct {p0, p2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V

    .line 511
    :cond_ae
    const/16 v3, 0x64

    goto :goto_35

    .line 498
    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_81
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 1093
    const-string v0, "CdmaCallForwardOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void
.end method

.method private queryAllCFOptions()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 604
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "queryAllCFOptions: begin querying call features."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 605
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 608
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .registers 4
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 777
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 778
    :cond_1a
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2f

    .line 779
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 780
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_2f
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    .line 783
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
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

    .line 788
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 790
    :cond_28
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_36

    .line 791
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_35

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 889
    :cond_35
    :goto_35
    return-void

    .line 797
    :cond_36
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_90

    .line 798
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 799
    :cond_5e
    sparse-switch p2, :sswitch_data_178

    .line 824
    :goto_61
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_35

    .line 801
    :sswitch_64
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_73

    .line 802
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    .line 806
    :goto_6d
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_61

    .line 804
    :cond_73
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_6d

    .line 809
    :sswitch_77
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_61

    .line 812
    :sswitch_7d
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_8c

    .line 813
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    .line 817
    :goto_86
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_61

    .line 815
    :cond_8c
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_86

    .line 828
    :cond_90
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$4;->$SwitchMap$com$android$phone$CdmaCallForwardOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_186

    .line 888
    :cond_9d
    :goto_9d
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_35

    .line 832
    :pswitch_a0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_9d

    .line 833
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_ad

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 834
    :cond_ad
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :pswitch_b5
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 840
    :cond_cf
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_d7

    .line 841
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_9d

    .line 842
    :cond_d7
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_df

    .line 843
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_9d

    .line 844
    :cond_df
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_9d

    .line 845
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_ec

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 846
    :cond_ec
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_f4
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_fd

    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 852
    :cond_fd
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_9d

    .line 855
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_10a

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 856
    :cond_10a
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_9d

    .line 861
    :pswitch_10e
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_123

    .line 862
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_11b

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 863
    :cond_11b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_123
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_12c

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 867
    :cond_12c
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    goto/16 :goto_9d

    .line 870
    :pswitch_131
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_146

    .line 871
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_13e

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 872
    :cond_13e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_146
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_14f

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 876
    :cond_14f
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_9d

    .line 879
    :pswitch_154
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_169

    .line 880
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_161

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 881
    :cond_161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_169
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_172

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 885
    :cond_172
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_9d

    .line 799
    nop

    :sswitch_data_178
    .sparse-switch
        0xc8 -> :sswitch_64
        0x12c -> :sswitch_7d
        0x320 -> :sswitch_77
    .end sparse-switch

    .line 828
    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_b5
        :pswitch_f4
        :pswitch_10e
        :pswitch_131
        :pswitch_154
    .end packed-switch
.end method

.method private syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V
    .registers 7
    .parameter "reason"
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 539
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_37

    .line 541
    .local v0, active:Z
    :goto_5
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCFUIState reason => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 542
    :cond_33
    packed-switch p1, :pswitch_data_9a

    .line 564
    :goto_36
    return-void

    .line 539
    .end local v0           #active:Z
    :cond_37
    const/4 v0, 0x0

    goto :goto_5

    .line 544
    .restart local v0       #active:Z
    :pswitch_39
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_42

    const-string v1, "syncCFUIState: Setting UI state consistent with CFU."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 545
    :cond_42
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e0069

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 546
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFU:Ljava/lang/String;

    goto :goto_36

    .line 549
    :pswitch_51
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_5a

    const-string v1, "syncCFUIState: Setting UI state consistent with CFB."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 550
    :cond_5a
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e006e

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 551
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFB:Ljava/lang/String;

    goto :goto_36

    .line 554
    :pswitch_69
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_72

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRy."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 555
    :cond_72
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e0074

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 556
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRy:Ljava/lang/String;

    goto :goto_36

    .line 559
    :pswitch_81
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_8a

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRc."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 560
    :cond_8a
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e007a

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 561
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRc:Ljava/lang/String;

    goto :goto_36

    .line 542
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_39
        :pswitch_51
        :pswitch_69
        :pswitch_81
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 416
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_30

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 418
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_40

    .line 419
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_3f

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 460
    :cond_3f
    :goto_3f
    return-void

    .line 422
    :cond_40
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    .line 425
    const/4 v0, -0x1

    if-eq p2, v0, :cond_52

    .line 426
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_3f

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_3f

    .line 430
    :cond_52
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_74

    .line 433
    :cond_6a
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_3f

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_3f

    .line 437
    :cond_74
    packed-switch p1, :pswitch_data_fa

    :pswitch_77
    goto :goto_3f

    .line 439
    :pswitch_78
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_3f

    .line 442
    :pswitch_95
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_3f

    .line 445
    :pswitch_b2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*92"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 448
    :pswitch_d0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*68"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 452
    :pswitch_ee
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 437
    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_78
        :pswitch_95
        :pswitch_b2
        :pswitch_d0
        :pswitch_77
        :pswitch_77
        :pswitch_ee
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 754
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 756
    :cond_1a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 757
    packed-switch p2, :pswitch_data_2a

    .line 769
    :pswitch_20
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    .line 772
    :goto_25
    :pswitch_25
    return-void

    .line 764
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    goto :goto_25

    .line 757
    :pswitch_data_2a
    .packed-switch -0x3
        :pswitch_25
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const v4, 0x7f0e0065

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 932
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 933
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 934
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 940
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 941
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "onCreate START"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 943
    :cond_25
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 944
    const-string v0, "button_cfu_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    .line 945
    const-string v0, "button_cfb_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    .line 946
    const-string v0, "button_cfnry_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    .line 947
    const-string v0, "button_cfnrc_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    .line 949
    const-string v0, "button_cfu_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 950
    const-string v0, "button_cfb_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 951
    const-string v0, "button_cfnry_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 952
    const-string v0, "button_cfnrc_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 954
    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    .line 957
    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    .line 958
    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    .line 959
    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    .line 960
    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    .line 966
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_c6

    .line 967
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 968
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 969
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0067

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 972
    :cond_c6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_e6

    .line 973
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 975
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 977
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0067

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 980
    :cond_e6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_101

    .line 981
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 982
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 983
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 984
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 986
    :cond_101
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_121

    .line 987
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 988
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 989
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 991
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 994
    :cond_121
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_13c

    .line 995
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 996
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 998
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1000
    :cond_13c
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_15c

    .line 1001
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1002
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1004
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1008
    :cond_15c
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_177

    .line 1009
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1010
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1011
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1014
    :cond_177
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_197

    .line 1015
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1017
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1018
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1021
    :cond_197
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_1b8

    .line 1022
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1023
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1024
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1025
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0494

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1030
    :cond_1b8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    .line 1031
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 1035
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1e6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate icicle => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 1037
    :cond_1e6
    if-eqz p1, :cond_24b

    .line 1038
    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1039
    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1040
    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1041
    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1042
    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1043
    const-string v0, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1054
    :goto_218
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_228

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_24a

    .line 1062
    :cond_228
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1064
    :cond_236
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1071
    :cond_24a
    return-void

    .line 1045
    :cond_24b
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    .line 1046
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    .line 1047
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    .line 1048
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    .line 1049
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    .line 1050
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    .line 1051
    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    goto :goto_218
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0e0087

    const/4 v6, 0x1

    .line 682
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 684
    :cond_1f
    const/16 v4, 0x64

    if-eq p1, v4, :cond_27

    const/16 v4, 0x384

    if-ne p1, v4, :cond_6e

    .line 685
    :cond_27
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 686
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f0e007e

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 687
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 689
    sparse-switch p1, :sswitch_data_b4

    .line 704
    :goto_3c
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 746
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_44
    return-object v1

    .line 691
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_45
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    .line 692
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 693
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 697
    :sswitch_55
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 698
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 700
    const v4, 0x7f0e0080

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 709
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_6e
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_7a

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_7a

    const/16 v4, 0x320

    if-ne p1, v4, :cond_b2

    .line 712
    :cond_7a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e007f

    .line 716
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_be

    .line 730
    const v2, 0x7f0e0084

    .line 733
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    :goto_8b
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 738
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 741
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_44

    .line 718
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_a4
    const v2, 0x7f0e0083

    .line 721
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8b

    .line 724
    .end local v2           #msgId:I
    :sswitch_ab
    const v2, 0x7f0e0086

    .line 726
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8b

    .line 746
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_b2
    const/4 v1, 0x0

    goto :goto_44

    .line 689
    :sswitch_data_b4
    .sparse-switch
        0x64 -> :sswitch_45
        0x384 -> :sswitch_55
    .end sparse-switch

    .line 716
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
    .line 315
    iget-object v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v6, v7, :cond_10

    .line 316
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_f

    const-string v6, "onDialogClosed: preference request denied, currently busy."

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 342
    :cond_f
    :goto_f
    return-void

    .line 319
    :cond_10
    const/4 v6, -0x2

    if-ne p2, v6, :cond_22

    .line 320
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_1c

    const-string v6, "onDialogClosed: DialogInterface.BUTTON2"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 321
    :cond_1c
    sget-object v6, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v6}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_f

    .line 325
    :cond_22
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 327
    :cond_46
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 329
    .local v2, nextState:Lcom/android/phone/CdmaCallForwardOptions$AppState;
    instance-of v6, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_f

    .line 330
    move-object v0, p1

    .line 331
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v4, 0x0

    .line 332
    .local v4, reason:I
    const/4 v5, 0x0

    .line 333
    .local v5, time:I
    const-string v3, ""

    .line 334
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_62

    const-string v6, "onDialogClosed: AppState.BUSY_NETWORK_CONNECT"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 336
    :cond_62
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    .line 337
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

    .line 338
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "simnum"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_f
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 3
    .parameter "preference"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    .line 352
    const-string v0, "*72"

    .line 385
    :goto_6
    return-object v0

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_e

    .line 355
    const-string v0, "*720"

    goto :goto_6

    .line 357
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_15

    .line 358
    const-string v0, "*90"

    goto :goto_6

    .line 360
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1c

    .line 361
    const-string v0, "*900"

    goto :goto_6

    .line 363
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_23

    .line 364
    const-string v0, "*68"

    goto :goto_6

    .line 366
    :cond_23
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2a

    .line 367
    const-string v0, "*680"

    goto :goto_6

    .line 369
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_31

    .line 370
    const-string v0, "*92"

    goto :goto_6

    .line 372
    :cond_31
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_38

    .line 373
    const-string v0, "*920"

    goto :goto_6

    .line 375
    :cond_38
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3f

    .line 376
    const-string v0, "*74"

    goto :goto_6

    .line 378
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_46

    .line 379
    const-string v0, "*740"

    goto :goto_6

    .line 381
    :cond_46
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4d

    .line 382
    const-string v0, "*730"

    goto :goto_6

    .line 385
    :cond_4d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 215
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v4, v7, :cond_13

    .line 216
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_11

    .line 217
    const-string v4, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_11
    move v4, v5

    .line 266
    :goto_12
    return v4

    .line 223
    :cond_13
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 224
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_2b

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_2b

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_2b

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_55

    :cond_2b
    move-object v4, p2

    .line 226
    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 227
    .local v1, dlg:Landroid/app/Dialog;
    if-eqz v1, :cond_55

    .line 228
    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 229
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_40

    .line 230
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 231
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 233
    :cond_40
    const v4, 0x102002c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v7, Lcom/android/phone/CdmaCallForwardOptions$1;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$1;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #dlg:Landroid/app/Dialog;
    .end local v3           #view:Landroid/view/View;
    :cond_55
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_5e

    const-string v4, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 245
    :cond_5e
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 247
    .local v2, nextState:Lcom/android/phone/CdmaCallForwardOptions$AppState;
    instance-of v4, p2, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v4, :cond_a4

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_88

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v4, :cond_a4

    .line 257
    :cond_88
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 258
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_a4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick => nextState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 260
    :cond_a4
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_ad

    const-string v4, "onPreferenceTreeClick => mButtonCFExpand"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 261
    :cond_ad
    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v2, v4, :cond_c0

    .line 262
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_ba

    const-string v4, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 263
    :cond_ba
    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    move v4, v6

    .line 264
    goto/16 :goto_12

    :cond_c0
    move v4, v5

    .line 266
    goto/16 :goto_12
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 907
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 908
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 911
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 913
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 920
    :cond_21
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "onResume Start"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 924
    :cond_2a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1075
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1077
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 1080
    :cond_c
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1081
    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1082
    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1083
    const-string v0, "cdma_cf_noreply_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1084
    const-string v0, "cdma_cf_notrechable_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1085
    const-string v0, "cdma_cf_cancelall_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1086
    const-string v0, "cdma_cf_unconditional_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1087
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1089
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1090
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 392
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 394
    :cond_24
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2b

    .line 396
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 408
    :cond_2a
    :goto_2a
    return-void

    .line 400
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_3b

    .line 401
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "startSubActivity: mAppState != AppState.DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_2a

    .line 404
    :cond_3b
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_44

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 406
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 407
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_2a
.end method
