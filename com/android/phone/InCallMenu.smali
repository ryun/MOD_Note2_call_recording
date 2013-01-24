.class public Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mChatOnID:Ljava/lang/String;

.field private mContactIdForChatOn:I

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mParticipantUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 4
    .parameter "inCallScreen"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 70
    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    .line 75
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 76
    return-void
.end method

.method private IsActiveRcsFT()Z
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 503
    const/4 v7, 0x0

    .line 504
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 505
    .local v8, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 506
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v9, 0x0

    .line 507
    .local v9, isAvailableFT:Z
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v10

    .line 509
    .local v10, telNum:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 510
    invoke-static {v10}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 511
    sget-object v0, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 512
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 514
    .end local v1           #queryUri:Landroid/net/Uri;
    :cond_45
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_64

    if-eqz v7, :cond_64

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 515
    if-nez v8, :cond_5a

    .line 516
    move-object v8, v6

    .line 517
    :cond_5a
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 518
    invoke-static {v7}, Lcom/android/phone/RcsShare;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v9

    .line 521
    :cond_64
    if-eqz v7, :cond_69

    .line 522
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_69
    return v9
.end method

.method private getChatONIdFromContactId(I)Ljava/lang/String;
    .registers 12
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 470
    const/4 v7, 0x0

    .line 471
    .local v7, chatONId:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 472
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "limit"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 473
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 474
    .local v1, chatOnUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "sync1"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_type=\'com.sec.chaton\' AND contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 481
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_47

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 482
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 484
    :cond_47
    if-eqz v6, :cond_4c

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_4c
    return-object v7
.end method

.method private launchChatON()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 491
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 492
    const-string v1, "launchChatON() : mChatOnID is null"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 501
    :goto_a
    return-void

    .line 495
    :cond_b
    const-string v1, "launchChatON "

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    const-string v2, "chaton://file"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method private launchMemo()V
    .registers 4

    .prologue
    .line 449
    const-string v2, "service_memo_during_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.MEMO_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    :try_start_14
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 467
    :goto_19
    return-void

    .line 454
    :catch_1a
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_19

    .line 458
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v1           #i:Landroid/content/Intent;
    :cond_1f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 459
    .restart local v1       #i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 460
    const-string v2, "android.intent.action.MEMO_CREATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    :try_start_2e
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_19

    .line 463
    :catch_34
    move-exception v0

    .line 464
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_19
.end method

.method private launchMessage()V
    .registers 6

    .prologue
    .line 434
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    :try_start_16
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 445
    :goto_1b
    return-void

    .line 442
    :catch_1c
    move-exception v0

    .line 443
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1b
.end method

.method private launchRcsFileTransfer()V
    .registers 6

    .prologue
    .line 528
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v1, file_intent:Landroid/content/Intent;
    const-string v2, "com.samsung.rcs"

    const-string v3, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 534
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_24} :catch_25

    .line 540
    .end local v1           #file_intent:Landroid/content/Intent;
    :goto_24
    return-void

    .line 535
    :catch_25
    move-exception v0

    .line 536
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f0e0648

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FT Failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_24
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 570
    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 574
    const-string v0, "InCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 575
    return-void
.end method

.method private onPressNoiseReductionMenu()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 543
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 544
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 546
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 547
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0e0379

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 565
    :goto_20
    return-void

    .line 549
    :cond_21
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 550
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0e0378

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 552
    :cond_36
    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v4, "noise_suppression_support_speaker"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 554
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0e037a

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 556
    :cond_53
    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_74

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 558
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0e037b

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 561
    :cond_74
    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7f

    move v2, v3

    :cond_7f
    invoke-static {v4, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 563
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_20
.end method


# virtual methods
.method protected clearInCallScreenReference()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 80
    return-void
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- optionsItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 346
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

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 347
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

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_74

    .line 350
    const-string v1, "InCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected("

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

    .line 430
    :goto_73
    return v0

    .line 354
    :cond_74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_118

    .line 426
    const-string v0, "InCallMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    goto :goto_73

    .line 369
    :sswitch_a9
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_73

    .line 373
    :sswitch_b3
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09012a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_73

    .line 377
    :sswitch_bc
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_73

    .line 381
    :sswitch_c5
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMessage()V

    goto :goto_73

    .line 385
    :sswitch_c9
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMemo()V

    goto :goto_73

    .line 390
    :sswitch_cd
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_73

    .line 395
    :sswitch_d6
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->onPressNoiseReductionMenu()V

    goto :goto_73

    .line 399
    :sswitch_da
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V

    goto :goto_73

    .line 403
    :sswitch_e0
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchChatON()V

    goto :goto_73

    .line 406
    :sswitch_e4
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_73

    .line 409
    :sswitch_e8
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_73

    .line 413
    :sswitch_f6
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_73

    .line 418
    :sswitch_103
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_73

    .line 422
    :sswitch_10d
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_73

    .line 354
    nop

    :sswitch_data_118
    .sparse-switch
        0x7f09009a -> :sswitch_c5
        0x7f09027c -> :sswitch_10d
        0x7f09027d -> :sswitch_a9
        0x7f09027e -> :sswitch_b3
        0x7f09027f -> :sswitch_bc
        0x7f090280 -> :sswitch_c9
        0x7f090281 -> :sswitch_cd
        0x7f090282 -> :sswitch_cd
        0x7f090283 -> :sswitch_d6
        0x7f090284 -> :sswitch_d6
        0x7f090285 -> :sswitch_da
        0x7f090286 -> :sswitch_e0
        0x7f090287 -> :sswitch_e4
        0x7f090288 -> :sswitch_e8
        0x7f090289 -> :sswitch_f6
        0x7f09028a -> :sswitch_103
        0x7f09028b -> :sswitch_103
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 35
    .parameter "menu"

    .prologue
    .line 83
    const-string v30, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v12

    .line 89
    .local v12, inCallControlState:Lcom/android/phone/InCallControlState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 90
    .local v11, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 91
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    .line 95
    .local v24, rCall:Lcom/android/internal/telephony/Call;
    const-string v30, "tablet_device"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6c

    .line 96
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v30

    if-eqz v30, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v30

    sget-object v31, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6c

    .line 97
    :cond_69
    const/16 v30, 0x0

    .line 341
    :goto_6b
    return v30

    .line 103
    :cond_6c
    const v30, 0x7f09027f

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 104
    .local v15, launchContact:Landroid/view/MenuItem;
    const v30, 0x7f020433

    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 105
    const-string v30, "no_receiver_in_call"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4f3

    .line 106
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    :goto_8e
    const v30, 0x7f09027c

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 113
    .local v18, mergeCalls:Landroid/view/MenuItem;
    const v30, 0x7f020442

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 114
    const-string v30, "voice_call_recording"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4fc

    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4fc

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v30

    sget-object v31, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_4fc

    const-string v30, "support_merge_call"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4fc

    .line 117
    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    :goto_ce
    const v30, 0x7f09027d

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 124
    .local v16, manageCofCall:Landroid/view/MenuItem;
    const v30, 0x7f020431

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    if-eqz v11, :cond_507

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v30

    if-eqz v30, :cond_507

    const-string v30, "manage_conference_call_menu_disable"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_103

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_507

    :cond_103
    const-string v30, "onscreen_manage_conference"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_507

    .line 140
    const/16 v30, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    :goto_114
    const-string v30, "feature_ctc"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_124

    const-string v30, "feature_lgt"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_143

    .line 151
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    .line 152
    .local v22, phoneType:I
    const/16 v30, 0x2

    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_143

    .line 153
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    .end local v22           #phoneType:I
    :cond_143
    const-string v30, "tablet_device"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_16e

    .line 160
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    :cond_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 164
    .local v14, isWebExEnabled:Z
    const v30, 0x7f09027e

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 165
    .local v3, addCall:Landroid/view/MenuItem;
    const v30, 0x7f020429

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 168
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v30, v0

    if-eqz v30, :cond_543

    if-eqz v14, :cond_543

    .line 169
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    :goto_19a
    const-string v30, "roaming_auto_dial"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1c3

    .line 175
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    .line 176
    .restart local v22       #phoneType:I
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1c3

    const/16 v30, 0x2

    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c3

    .line 177
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    .end local v22           #phoneType:I
    :cond_1c3
    const v30, 0x7f090281

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 183
    .local v27, startRecord:Landroid/view/MenuItem;
    const v30, 0x7f090282

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 184
    .local v28, stopRecord:Landroid/view/MenuItem;
    const v30, 0x7f02043a

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 185
    const v30, 0x7f02043b

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    const-string v30, "voice_call_recording"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_25b

    .line 190
    const-string v30, "voice_call_recording_menu"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_218

    .line 191
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :cond_218
    if-nez v14, :cond_230

    const-string v30, "voice_call_recording_menu"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_230

    const-string v30, "ims_rcs"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_25b

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v30

    if-eqz v30, :cond_25b

    .line 196
    :cond_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v30, v0

    if-eqz v30, :cond_54c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v30

    if-eqz v30, :cond_54c

    const/4 v13, 0x1

    .line 198
    .local v13, isRecording:Z
    :goto_24b
    if-nez v13, :cond_54f

    const/16 v30, 0x1

    :goto_24f
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 204
    .end local v13           #isRecording:Z
    :cond_25b
    const v30, 0x7f09009a

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 205
    .local v19, message:Landroid/view/MenuItem;
    const v30, 0x7f02042a

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    const-string v30, "menu_message"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_280

    const-string v30, "in_call_menu_message_enable"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_553

    :cond_280
    const/16 v30, 0x1

    :goto_282
    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    const v30, 0x7f090280

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 211
    .local v17, memo:Landroid/view/MenuItem;
    const v30, 0x7f020432

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    const-string v30, "use_snote_string"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2b0

    .line 213
    const v30, 0x7f0e0368

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 215
    :cond_2b0
    const-string v30, "in_call_menu_memo_enable"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 219
    .local v23, previousChatOnID:Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v30

    if-nez v30, :cond_336

    .line 221
    if-nez v11, :cond_2e0

    .line 222
    move-object v11, v4

    .line 224
    :cond_2e0
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v30

    if-nez v30, :cond_336

    .line 225
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 226
    .local v10, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 227
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v9, :cond_55f

    iget-boolean v0, v9, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v30, v0

    if-eqz v30, :cond_55f

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v30, v0

    iget-wide v0, v9, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_557

    .line 230
    iget-wide v0, v9, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->getChatONIdFromContactId(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 241
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    :cond_336
    :goto_336
    const v30, 0x7f090286

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 242
    .local v8, chatOnItem:Landroid/view/MenuItem;
    const v30, 0x7f020437

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_569

    .line 244
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    :goto_358
    const v30, 0x7f090287

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 249
    .local v2, RcsFileTransferItem:Landroid/view/MenuItem;
    const v30, 0x7f02042f

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 250
    const-string v30, "ims_rcs"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_584

    .line 251
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v30

    if-eqz v30, :cond_57b

    .line 252
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->IsActiveRcsFT()Z

    move-result v30

    if-eqz v30, :cond_572

    .line 254
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 266
    :goto_38d
    const v30, 0x7f090285

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 267
    .local v29, voiceEQ:Landroid/view/MenuItem;
    const v30, 0x7f02042c

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_58d

    .line 269
    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    :goto_3af
    const v30, 0x7f090284

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 275
    .local v21, noiseReductionOnItem:Landroid/view/MenuItem;
    const v30, 0x7f020435

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    const v30, 0x7f090283

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 277
    .local v20, noiseReductionOffItem:Landroid/view/MenuItem;
    const v30, 0x7f020434

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_5a8

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_594

    .line 281
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    const/16 v30, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 292
    :goto_403
    const-string v30, "gsm.STK_SETUP_MENU"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 293
    .local v25, simService:Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "simService - "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 294
    const v30, 0x7f090288

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 295
    .local v26, simServices:Landroid/view/MenuItem;
    const v30, 0x7f020439

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 296
    if-eqz v25, :cond_5bc

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5bc

    const/16 v30, 0x1

    :goto_446
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    const v30, 0x7f090289

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 300
    .local v7, callTransfer:Landroid/view/MenuItem;
    const v30, 0x7f02042b

    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 302
    const-string v30, "support_call_transfer"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5c0

    if-eqz v11, :cond_5c0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v30

    if-nez v30, :cond_5c0

    if-eqz v4, :cond_5c0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v30

    if-nez v30, :cond_5c0

    .line 304
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v30

    if-nez v30, :cond_48d

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v30

    if-nez v30, :cond_48d

    .line 306
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canTransfer:Z

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    :cond_48d
    :goto_48d
    const v30, 0x7f09028a

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 314
    .local v6, btHeadsetOnItem:Landroid/view/MenuItem;
    const v30, 0x7f09028b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 316
    .local v5, btHeadsetOffItem:Landroid/view/MenuItem;
    const-string v30, "ims_rcs"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5f9

    .line 317
    const v30, 0x7f020423

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 318
    const v30, 0x7f020423

    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 320
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v30

    if-eqz v30, :cond_5e9

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v30

    if-eqz v30, :cond_5d9

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v30

    if-eqz v30, :cond_5c9

    .line 323
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    :goto_4ef
    const/16 v30, 0x1

    goto/16 :goto_6b

    .line 108
    .end local v2           #RcsFileTransferItem:Landroid/view/MenuItem;
    .end local v3           #addCall:Landroid/view/MenuItem;
    .end local v5           #btHeadsetOffItem:Landroid/view/MenuItem;
    .end local v6           #btHeadsetOnItem:Landroid/view/MenuItem;
    .end local v7           #callTransfer:Landroid/view/MenuItem;
    .end local v8           #chatOnItem:Landroid/view/MenuItem;
    .end local v14           #isWebExEnabled:Z
    .end local v16           #manageCofCall:Landroid/view/MenuItem;
    .end local v17           #memo:Landroid/view/MenuItem;
    .end local v18           #mergeCalls:Landroid/view/MenuItem;
    .end local v19           #message:Landroid/view/MenuItem;
    .end local v20           #noiseReductionOffItem:Landroid/view/MenuItem;
    .end local v21           #noiseReductionOnItem:Landroid/view/MenuItem;
    .end local v23           #previousChatOnID:Ljava/lang/String;
    .end local v25           #simService:Ljava/lang/String;
    .end local v26           #simServices:Landroid/view/MenuItem;
    .end local v27           #startRecord:Landroid/view/MenuItem;
    .end local v28           #stopRecord:Landroid/view/MenuItem;
    .end local v29           #voiceEQ:Landroid/view/MenuItem;
    :cond_4f3
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8e

    .line 119
    .restart local v18       #mergeCalls:Landroid/view/MenuItem;
    :cond_4fc
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_ce

    .line 142
    .restart local v16       #manageCofCall:Landroid/view/MenuItem;
    :cond_507
    if-eqz v11, :cond_538

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v30

    if-eqz v30, :cond_538

    const-string v30, "global_network_cdma_gsm_enable"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_538

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_538

    .line 145
    const/16 v30, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_114

    .line 147
    :cond_538
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_114

    .line 171
    .restart local v3       #addCall:Landroid/view/MenuItem;
    .restart local v14       #isWebExEnabled:Z
    :cond_543
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_19a

    .line 196
    .restart local v27       #startRecord:Landroid/view/MenuItem;
    .restart local v28       #stopRecord:Landroid/view/MenuItem;
    :cond_54c
    const/4 v13, 0x0

    goto/16 :goto_24b

    .line 198
    .restart local v13       #isRecording:Z
    :cond_54f
    const/16 v30, 0x0

    goto/16 :goto_24f

    .line 206
    .end local v13           #isRecording:Z
    .restart local v19       #message:Landroid/view/MenuItem;
    :cond_553
    const/16 v30, 0x0

    goto/16 :goto_282

    .line 233
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v10       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v17       #memo:Landroid/view/MenuItem;
    .restart local v23       #previousChatOnID:Ljava/lang/String;
    :cond_557
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    goto/16 :goto_336

    .line 236
    :cond_55f
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    goto/16 :goto_336

    .line 246
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    .restart local v8       #chatOnItem:Landroid/view/MenuItem;
    :cond_569
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_358

    .line 256
    .restart local v2       #RcsFileTransferItem:Landroid/view/MenuItem;
    :cond_572
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_38d

    .line 259
    :cond_57b
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_38d

    .line 262
    :cond_584
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_38d

    .line 271
    .restart local v29       #voiceEQ:Landroid/view/MenuItem;
    :cond_58d
    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3af

    .line 284
    .restart local v20       #noiseReductionOffItem:Landroid/view/MenuItem;
    .restart local v21       #noiseReductionOnItem:Landroid/view/MenuItem;
    :cond_594
    const/16 v30, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_403

    .line 288
    :cond_5a8
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_403

    .line 296
    .restart local v25       #simService:Ljava/lang/String;
    .restart local v26       #simServices:Landroid/view/MenuItem;
    :cond_5bc
    const/16 v30, 0x0

    goto/16 :goto_446

    .line 309
    .restart local v7       #callTransfer:Landroid/view/MenuItem;
    :cond_5c0
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_48d

    .line 326
    .restart local v5       #btHeadsetOffItem:Landroid/view/MenuItem;
    .restart local v6       #btHeadsetOnItem:Landroid/view/MenuItem;
    :cond_5c9
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4ef

    .line 330
    :cond_5d9
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4ef

    .line 334
    :cond_5e9
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4ef

    .line 338
    :cond_5f9
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4ef
.end method
