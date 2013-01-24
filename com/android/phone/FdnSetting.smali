.class public Lcom/android/phone/FdnSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAttempt:I

.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/PreferenceScreen;

.field private mFDNHandler:Landroid/os/Handler;

.field private mLeftTime:[I

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mPuk2:Ljava/lang/String;

.field private mSkipOldPin:Z

.field private mpukState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mpukState:Z

    .line 289
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    return-void

    :array_16
    .array-data 0x4
        0x84t 0x1t 0xet 0x7ft
        0x85t 0x1t 0xet 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/FdnSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/FdnSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mpukState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mpukState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method private final displayMessage(I)V
    .registers 5
    .parameter "strId"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 535
    return-void
.end method

.method private final displayPinChangeDialog()V
    .registers 3

    .prologue
    .line 544
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 546
    return-void
.end method

.method private final displayPinChangeDialog(IZ)V
    .registers 10
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 549
    const-string v3, "FdnSetting"

    const-string v4, "displayPinChangeDialog"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 551
    iget v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v3, :pswitch_data_ec

    .line 565
    const v1, 0x7f0e0178

    .line 570
    .local v1, msgId:I
    :goto_11
    if-ne p1, v5, :cond_70

    .line 573
    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    if-ne v3, v5, :cond_57

    .line 575
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 582
    .local v0, attemptString:Ljava/lang/CharSequence;
    :goto_1f
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 608
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    :goto_3f
    if-eqz p2, :cond_46

    .line 609
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 611
    :cond_46
    return-void

    .line 553
    .end local v1           #msgId:I
    :pswitch_47
    const v1, 0x7f0e0178

    .line 554
    .restart local v1       #msgId:I
    goto :goto_11

    .line 556
    .end local v1           #msgId:I
    :pswitch_4b
    const v1, 0x7f0e016f

    .line 557
    .restart local v1       #msgId:I
    goto :goto_11

    .line 559
    .end local v1           #msgId:I
    :pswitch_4f
    const v1, 0x7f0e0170

    .line 560
    .restart local v1       #msgId:I
    goto :goto_11

    .line 562
    .end local v1           #msgId:I
    :pswitch_53
    const v1, 0x7f0e0171

    .line 563
    .restart local v1       #msgId:I
    goto :goto_11

    .line 578
    :cond_57
    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 579
    .local v2, values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_1f

    .line 584
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/String;
    :cond_70
    const/4 v3, 0x2

    if-ne p1, v3, :cond_79

    .line 585
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_3f

    .line 586
    :cond_79
    const/4 v3, 0x3

    if-ne p1, v3, :cond_c6

    .line 589
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPUK2retry()I

    move-result v3

    if-ne v3, v5, :cond_ab

    .line 591
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 599
    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    :goto_8a
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 594
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    :cond_ab
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPUK2retry()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 595
    .restart local v2       #values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_8a

    .line 602
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/String;
    :cond_c6
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3f

    .line 551
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
    .end packed-switch
.end method

.method private final resetPinChangeState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 617
    const-string v0, "FdnSetting"

    const-string v1, "resetPinChangeState()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 618
    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 620
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 621
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 637
    const-string v0, "FdnSetting"

    const-string v1, "resetPinChangeStateForPUK2"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 639
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 640
    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 641
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 643
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mpukState:Z

    .line 644
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0181

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 645
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0182

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 647
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 649
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "puk2_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 652
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 653
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 654
    return-void
.end method

.method private setEnableFDNDialogMessage()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 709
    const-string v3, "FdnSetting"

    const-string v4, "setEnableFDNDialogMessage"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 711
    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 713
    .local v2, values:[Ljava/lang/String;
    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    if-ne v3, v5, :cond_43

    .line 714
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 720
    .local v0, attemptString:Ljava/lang/CharSequence;
    :goto_1f
    const v1, 0x7f0e0148

    .line 721
    .local v1, msgId:I
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 723
    return-void

    .line 717
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v1           #msgId:I
    :cond_43
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_1f
.end method

.method private toggleFDNEnable(Z)V
    .registers 12
    .parameter "positiveResult"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 133
    const-string v6, "FdnSetting"

    const-string v9, "toggleFDNEnable"

    invoke-static {v6, v9, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 134
    if-nez p1, :cond_c

    .line 169
    :goto_b
    return-void

    .line 140
    :cond_c
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v6}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, password:Ljava/lang/String;
    invoke-direct {p0, v4, v8}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 143
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 144
    .local v1, isEnabled:Z
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 148
    .local v3, onComplete:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    if-nez v1, :cond_77

    move v6, v7

    :goto_33
    invoke-interface {v9, v6, v4, v3}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 158
    .end local v1           #isEnabled:Z
    .end local v3           #onComplete:Landroid/os/Message;
    :goto_36
    new-array v5, v7, [Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 159
    .local v5, values:[Ljava/lang/String;
    iget v6, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    if-ne v6, v7, :cond_80

    .line 160
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v6, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    .local v0, attemptString:Ljava/lang/CharSequence;
    :goto_4c
    const v2, 0x7f0e0148

    .line 166
    .local v2, msgId:I
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_b

    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #msgId:I
    .end local v5           #values:[Ljava/lang/String;
    .restart local v1       #isEnabled:Z
    .restart local v3       #onComplete:Landroid/os/Message;
    :cond_77
    move v6, v8

    .line 148
    goto :goto_33

    .line 152
    .end local v1           #isEnabled:Z
    .end local v3           #onComplete:Landroid/os/Message;
    :cond_79
    const v6, 0x7f0e0175

    invoke-direct {p0, v6}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_36

    .line 162
    .restart local v5       #values:[Ljava/lang/String;
    :cond_80
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_4c
.end method

.method private updateEnableFDN()V
    .registers 4

    .prologue
    .line 683
    const-string v0, "FdnSetting"

    const-string v1, "updateEnableFDN"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 685
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->setEnableFDNDialogMessage()V

    .line 687
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 688
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0138

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 689
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0133

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 690
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0136

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 691
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 693
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fdn_internet"

    const-string v2, "on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 705
    :goto_3d
    return-void

    .line 697
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0139

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 698
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 699
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0135

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 700
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 702
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fdn_internet"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3d
.end method

.method private updatePINChangeState(Z)V
    .registers 10
    .parameter "positiveResult"

    .prologue
    const v7, 0x7f0e0175

    const/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 175
    const-string v1, "FdnSetting"

    const-string v2, "updatePINChangeState"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 176
    if-nez p1, :cond_1f

    .line 178
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_1b

    .line 179
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 180
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 284
    :goto_1a
    return-void

    .line 182
    :cond_1b
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_1a

    .line 196
    :cond_1f
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_122

    goto :goto_1a

    .line 251
    :pswitch_25
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 254
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_10a

    .line 256
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 258
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "puk2_state"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1a

    .line 198
    .end local v0           #onComplete:Landroid/os/Message;
    :pswitch_5d
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 202
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 203
    invoke-direct {p0, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_1a

    .line 205
    :cond_7a
    invoke-direct {p0, v7, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_1a

    .line 209
    :pswitch_7e
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 214
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 215
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto/16 :goto_1a

    .line 217
    :cond_9d
    invoke-direct {p0, v7, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_1a

    .line 223
    :pswitch_a2
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 224
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 225
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 226
    const v1, 0x7f0e0174

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_1a

    .line 231
    :cond_c1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 232
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_e1

    .line 233
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 235
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1a

    .line 238
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_e1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 240
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "puk2_state"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    goto/16 :goto_1a

    .line 266
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_102
    const v1, 0x7f0e0176

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_1a

    .line 271
    :cond_10a
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 272
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 273
    invoke-direct {p0, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_1a

    .line 276
    :cond_119
    const v1, 0x7f0e0176

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_1a

    .line 196
    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_25
        :pswitch_5d
        :pswitch_7e
        :pswitch_a2
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 668
    if-eqz p2, :cond_15

    move v0, v1

    .line 671
    .local v0, pinMinimum:I
    :goto_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_17

    .line 673
    :cond_13
    const/4 v1, 0x0

    .line 675
    :goto_14
    return v1

    .line 668
    .end local v0           #pinMinimum:I
    :cond_15
    const/4 v0, 0x4

    goto :goto_5

    .line 675
    .restart local v0       #pinMinimum:I
    :cond_17
    const/4 v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method public getPIN2retry()I
    .registers 4

    .prologue
    .line 624
    const-string v0, "FdnSetting"

    const-string v1, "getPIN2retry()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 625
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getPUK2retry()I
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 523
    const-string v0, "FdnSetting"

    const-string v1, "onCancel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 528
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 727
    const-string v2, "FdnSetting"

    const-string v3, "onCreate"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 729
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 731
    const v2, 0x7f06001b

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 733
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 736
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 737
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mpukState:Z

    .line 738
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 740
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 742
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;

    .line 746
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 748
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 752
    if-nez p1, :cond_55

    .line 754
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 764
    :goto_4b
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 765
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_54

    .line 767
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 769
    :cond_54
    return-void

    .line 756
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_55
    const-string v2, "skip_old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 757
    const-string v2, "pin_change_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 758
    const-string v2, "old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 759
    const-string v2, "new_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 760
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 817
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 828
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 127
    :cond_6
    :goto_6
    return-void

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_f

    .line 123
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    goto :goto_6

    .line 124
    :cond_f
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_6

    .line 125
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Z)V

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 792
    const-string v0, "FdnSetting"

    const-string v1, "onPreferenceTreeClick"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 793
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p2, v0, :cond_15

    .line 794
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    .line 795
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->setEnableFDNDialogMessage()V

    .line 797
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 773
    const-string v0, "FdnSetting"

    const-string v1, "onResume"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 775
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 777
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    .line 778
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 779
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 781
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 782
    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 783
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 787
    :cond_30
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 805
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 806
    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 807
    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v0, "dialog_pin_entry_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method
