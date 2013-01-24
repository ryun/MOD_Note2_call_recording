.class public Lcom/android/phone/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RespondViaSmsManager$Settings;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field private mCannedResponses:[Ljava/lang/String;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPopup:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z
    .registers 9
    .parameter "context"
    .parameter "ringingCall"

    .prologue
    const/4 v3, 0x0

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSmsForCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 497
    if-nez p1, :cond_27

    .line 498
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null ringingCall!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_26
    :goto_26
    return v3

    .line 501
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 506
    const-string v4, "RespondViaSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowRespondViaSmsForCall: ringingCall not ringing! state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 510
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 511
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_58

    .line 515
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null Connection!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 520
    :cond_58
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, number:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- number: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 522
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 523
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: no incoming number!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 526
    :cond_86
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 532
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: incoming \'number\' is a SIP address."

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 537
    :cond_94
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 538
    .local v2, presentation:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- presentation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 539
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v2, v4, :cond_bc

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v2, v4, :cond_bc

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 545
    :cond_bc
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: PRESENTATION_RESTRICTED."

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 549
    :cond_c5
    const-string v4, "lawmo_lock"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f7

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getLawmoLockState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 555
    :cond_f7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 567
    const/4 v3, 0x1

    goto/16 :goto_26
.end method

.method private static getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 351
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 354
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    :goto_16
    return-object v0

    .line 356
    :cond_17
    const-string v2, "exit_on_sent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string v2, "showUI"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_16
.end method

.method private launchSmsCompose(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 337
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 340
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    return-void
.end method

.method private loadCannedResponses()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 452
    const-string v3, "loadCannedResponses()..."

    invoke-static {v3, v6}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;Z)V

    .line 454
    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v4, "respond_via_sms_prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 459
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 464
    .local v2, responses:[Ljava/lang/String;
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f0e0273

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 466
    const-string v3, "canned_response_pref_2"

    const v4, 0x7f0e0274

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 468
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f0e0275

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 470
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f0e0276

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 472
    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 572
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "message"
    .parameter "always"

    .prologue
    .line 576
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 577
    return-void
.end method

.method private sendText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {p1, p2}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 329
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 191
    :cond_c
    return-void
.end method

.method public isShowingPopup()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 5
    .parameter "inCallScreen"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 106
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    .line 109
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v1, "respond_via_sms_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 111
    :cond_e
    return-void
.end method

.method public showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V
    .registers 13
    .parameter "ringingCall"

    .prologue
    const/4 v10, 0x1

    .line 119
    const-string v7, "showRespondViaSmsPopup()..."

    invoke-static {v7, v10}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;Z)V

    .line 121
    new-instance v3, Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, lv:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/phone/RespondViaSmsManager;->loadCannedResponses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    .line 128
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v4, v7, 0x1

    .line 129
    .local v4, numPopupItems:I
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 130
    .local v6, popupItems:[Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0277

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 133
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v8, 0x1090003

    const v9, 0x1020014

    invoke-direct {v0, v7, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 138
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 150
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_4f

    .line 157
    const-string v7, "RespondViaSmsManager"

    const-string v8, "showRespondViaSmsPopup: null connection; bailing out..."

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_4e
    return-void

    .line 167
    :cond_4f
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, phoneNumber:Ljava/lang/String;
    new-instance v7, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;

    invoke-direct {v7, p0, v5}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;-><init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;

    invoke-direct {v8, p0}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;-><init>(Lcom/android/phone/RespondViaSmsManager;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 176
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_4e
.end method
