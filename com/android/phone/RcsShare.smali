.class public Lcom/android/phone/RcsShare;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Lcom/android/phone/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RcsShare$5;,
        Lcom/android/phone/RcsShare$SessionState;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;

.field private static completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private static errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private static mHasRcsServices:Z

.field private static mIsActiveCall:Z

.field private static mPromotedService:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    .line 65
    sput-boolean v0, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    .line 66
    sput-boolean v0, Lcom/android/phone/RcsShare;->mPromotedService:Z

    .line 68
    const-class v0, Lcom/android/phone/RcsShare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    .line 776
    new-instance v0, Lcom/android/phone/RcsShare$3;

    invoke-direct {v0}, Lcom/android/phone/RcsShare$3;-><init>()V

    sput-object v0, Lcom/android/phone/RcsShare;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 788
    new-instance v0, Lcom/android/phone/RcsShare$4;

    invoke-direct {v0}, Lcom/android/phone/RcsShare$4;-><init>()V

    sput-object v0, Lcom/android/phone/RcsShare;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static acceptInvitation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter "context"
    .parameter "displayName"
    .parameter "tel"
    .parameter "callStartMilis"

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    .line 454
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 456
    return-void
.end method

.method public static acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;
    .registers 14
    .parameter "context"

    .prologue
    .line 666
    new-instance v9, Lcom/android/phone/RcsShare$SessionState;

    invoke-direct {v9}, Lcom/android/phone/RcsShare$SessionState;-><init>()V

    .line 668
    .local v9, state:Lcom/android/phone/RcsShare$SessionState;
    const/4 v10, 0x0

    :try_start_6
    iput-boolean v10, v9, Lcom/android/phone/RcsShare$SessionState;->mIsActive:Z

    .line 669
    invoke-static {p0}, Lcom/android/phone/RcsShare;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 670
    .local v1, q:Landroid/database/Cursor;
    if-eqz v1, :cond_92

    .line 671
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_81

    .line 673
    :cond_14
    const-string v10, "id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 676
    .local v5, sessionId:J
    const-string v10, "dir"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 679
    .local v2, sessionDirection:I
    const-string v10, "state"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 682
    .local v7, sessionState:I
    const-string v10, "type"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 685
    .local v8, sessionType:I
    const-string v10, "size"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 688
    .local v3, sessionFileSize:J
    if-nez v2, :cond_77

    .line 689
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/phone/RcsShare$SessionState;->mIsActive:Z

    .line 690
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifySessionStates incoming session id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput v7, v9, Lcom/android/phone/RcsShare$SessionState;->mState:I

    .line 693
    iput v8, v9, Lcom/android/phone/RcsShare$SessionState;->mType:I

    .line 694
    iput v2, v9, Lcom/android/phone/RcsShare$SessionState;->mDirection:I

    .line 695
    iput-wide v5, v9, Lcom/android/phone/RcsShare$SessionState;->mId:J

    .line 696
    iput-wide v3, v9, Lcom/android/phone/RcsShare$SessionState;->mSize:J

    .line 698
    :cond_77
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_14

    .line 702
    .end local v2           #sessionDirection:I
    .end local v3           #sessionFileSize:J
    .end local v5           #sessionId:J
    .end local v7           #sessionState:I
    .end local v8           #sessionType:I
    :goto_7d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 709
    .end local v1           #q:Landroid/database/Cursor;
    :goto_80
    return-object v9

    .line 700
    .restart local v1       #q:Landroid/database/Cursor;
    :cond_81
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_88} :catch_89

    goto :goto_7d

    .line 706
    .end local v1           #q:Landroid/database/Cursor;
    :catch_89
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v11, "acquireSessionInfo() exception"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 704
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #q:Landroid/database/Cursor;
    :cond_92
    :try_start_92
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_89

    goto :goto_80
.end method

.method private static addRcsExtras(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Landroid/content/Context;)V
    .registers 8
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"
    .parameter "i"
    .parameter "context"

    .prologue
    .line 504
    const-string v0, "contactNumber"

    invoke-virtual {p4, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v0, "contactName"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p4, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 508
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-static {}, Lcom/android/phone/RcsShare;->isBluetoothConnected()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-static {}, Lcom/android/phone/RcsShare;->isBluetoothAvailable()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.NOISE_FEATURE"

    invoke-static {p5}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.NOISE_ON"

    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    return-void
.end method

.method public static disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "phone"
    .parameter "name"

    .prologue
    .line 434
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnected! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    return-void
.end method

.method public static fetchIncallButtonLayout(ZLandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "isLand"
    .parameter "context"
    .parameter "group"

    .prologue
    .line 80
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchIncallButtonLayout() - isLand? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "incall_touch_ui"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v0, 0x7f040045

    .line 89
    .local v0, id:I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x1

    invoke-virtual {v1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, view:Landroid/view/View;
    return-object v2
.end method

.method public static generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "telNumber"

    .prologue
    .line 350
    if-nez p0, :cond_a

    .line 351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/RcsShare;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-object v0
.end method

.method public static getCallStartTime(Lcom/android/internal/telephony/CallManager;)J
    .registers 5
    .parameter "cm"

    .prologue
    .line 714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 369
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 370
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "resources"
    .parameter "displayName"
    .parameter "sessionType"

    .prologue
    .line 601
    sget-object v0, Lcom/android/phone/RcsShare$5;->$SwitchMap$com$android$phone$RcsTransferConstants$SessionType:[I

    invoke-virtual {p2}, Lcom/android/phone/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 614
    const-string v0, ""

    :goto_d
    return-object v0

    .line 603
    :pswitch_e
    const v0, 0x7f0e064e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 605
    :pswitch_16
    const v0, 0x7f0e0649

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 607
    :pswitch_1e
    const v0, 0x7f0e064a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 609
    :pswitch_26
    const v0, 0x7f0e064c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 611
    :pswitch_2e
    const v0, 0x7f0e064d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 601
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1e
        :pswitch_e
        :pswitch_26
        :pswitch_2e
    .end packed-switch
.end method

.method public static getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .registers 7
    .parameter "cm"

    .prologue
    .line 719
    const/4 v3, 0x0

    .line 723
    .local v3, string:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 724
    .local v2, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 725
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v3

    .line 733
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #foregroundCall:Lcom/android/internal/telephony/Call;
    :goto_11
    return-object v3

    .line 730
    :catch_12
    move-exception v1

    .line 731
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getPhoneNumber() is null "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private static getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "state"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "dir"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/phone/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/phone/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/phone/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/phone/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isBluetoothAvailable()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 535
    .local v0, instance:Lcom/android/phone/PhoneApp;
    if-nez v0, :cond_8

    .line 541
    :cond_7
    :goto_7
    return v1

    .line 538
    :cond_8
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 541
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isBluetoothConnected()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 522
    .local v0, instance:Lcom/android/phone/PhoneApp;
    if-nez v0, :cond_8

    .line 528
    :cond_7
    :goto_7
    return v1

    .line 525
    :cond_8
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 528
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    goto :goto_7
.end method

.method public static isRcsFTAvailable(Landroid/database/Cursor;)Z
    .registers 6
    .parameter "c"

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, isAvailableFT:Z
    if-eqz p0, :cond_46

    .line 332
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 334
    :cond_9
    const-string v2, "is_enabled"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_40

    .line 335
    const-string v2, "feature_tag"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, featureTag:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 338
    const/4 v1, 0x1

    .line 340
    .end local v0           #featureTag:Ljava/lang/String;
    :cond_40
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 343
    :cond_46
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableFT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v1
.end method

.method public static isRcsServiceAvailable()Z
    .registers 3

    .prologue
    .line 320
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsServiceAvailable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    return v0
.end method

.method public static isShareActive(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 404
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "is Share active? "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v2, 0x0

    .line 407
    .local v2, returnVal:Z
    :try_start_8
    invoke-static {p0}, Lcom/android/phone/RcsShare;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 408
    .local v1, q:Landroid/database/Cursor;
    if-eqz v1, :cond_3a

    .line 410
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 413
    :cond_14
    const-string v3, "dir"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3b

    .line 417
    :cond_2d
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, 0x1

    .line 423
    :cond_35
    :goto_35
    if-eqz v1, :cond_3a

    .line 424
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 430
    .end local v1           #q:Landroid/database/Cursor;
    :cond_3a
    :goto_3a
    return v2

    .line 421
    .restart local v1       #q:Landroid/database/Cursor;
    :cond_3b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_42

    move-result v3

    if-nez v3, :cond_14

    goto :goto_35

    .line 426
    .end local v1           #q:Landroid/database/Cursor;
    :catch_42
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public static notifyIMAndFT(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "i"

    .prologue
    .line 803
    const-string v2, "alertoncall_mode"

    .line 804
    .local v2, alertoncall_mode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 805
    .local v1, alertoncallModeIndex:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 806
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 808
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 811
    .local v5, textToSpeachVariant:I
    const-string v6, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 813
    sget-object v4, Lcom/android/phone/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 814
    .local v4, sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    const/4 v5, 0x7

    .line 817
    .end local v4           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_1c
    const-string v6, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 819
    sget-object v4, Lcom/android/phone/RcsTransferConstants$SessionType;->IM:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 820
    .restart local v4       #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    const/4 v5, 0x5

    .line 824
    .end local v4           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_27
    packed-switch v1, :pswitch_data_32

    .line 843
    :goto_2a
    :pswitch_2a
    return-void

    .line 836
    :pswitch_2b
    new-instance v6, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    goto :goto_2a

    .line 824
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method public static notifyUser(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .registers 11
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v6, 0x0

    .line 737
    const-string v1, "alertoncall_mode"

    .line 738
    .local v1, alertoncall_mode:Ljava/lang/String;
    const/4 v0, 0x1

    .line 739
    .local v0, alertoncallModeIndex:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 740
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {v2, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 742
    packed-switch v0, :pswitch_data_66

    .line 774
    :goto_f
    return-void

    .line 744
    :pswitch_10
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 745
    .local v5, v:Landroid/os/Vibrator;
    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_f

    .line 751
    .end local v5           #v:Landroid/os/Vibrator;
    :pswitch_1e
    :try_start_1e
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 752
    .local v4, mp:Landroid/media/MediaPlayer;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 753
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 754
    const-string v6, "android.resource://com.sec.android.app.clockpackage/raw/alert_on_call"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 755
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 756
    sget-object v6, Lcom/android/phone/RcsShare;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 757
    sget-object v6, Lcom/android/phone/RcsShare;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 758
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_44} :catch_45

    goto :goto_f

    .line 760
    .end local v4           #mp:Landroid/media/MediaPlayer;
    :catch_45
    move-exception v3

    .line 762
    .local v3, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "falied to play sound :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 768
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_5f
    new-instance v6, Lcom/android/phone/CallTextToSpeech;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    goto :goto_f

    .line 742
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_5f
        :pswitch_10
    .end packed-switch
.end method

.method public static prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V
    .registers 16
    .parameter "context"
    .parameter "inCallButtonsView"
    .parameter "promotedButton"
    .parameter "shareButton"
    .parameter "isWebExEnabled"

    .prologue
    .line 108
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setupDialPadAndRcsButton()"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    .line 111
    .local v10, telephony:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 113
    .local v7, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v0, :cond_85

    const/4 v0, 0x1

    :goto_2c
    sput-boolean v0, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    .line 117
    invoke-static {v10}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, telNum:Ljava/lang/String;
    const/4 v6, 0x0

    .line 121
    .local v6, c:Landroid/database/Cursor;
    if-eqz v9, :cond_9e

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 122
    sget-object v0, Lcom/android/phone/RcsShare;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/RcsShare;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_87

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_87

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_79} :catch_92

    .line 146
    .end local v1           #uri:Landroid/net/Uri;
    :goto_79
    invoke-static {p1, p2, v6, p4}, Lcom/android/phone/RcsShare;->setupPromotedServiceButton(Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    .line 147
    invoke-static {p1, p3, v6}, Lcom/android/phone/RcsShare;->setupRcsServicesButton(Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;)V

    .line 149
    if-eqz v6, :cond_84

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_84
    return-void

    .line 114
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #telNum:Ljava/lang/String;
    :cond_85
    const/4 v0, 0x0

    goto :goto_2c

    .line 133
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #telNum:Ljava/lang/String;
    :cond_87
    :try_start_87
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go Mr. RCS"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_91} :catch_92

    goto :goto_79

    .line 136
    :catch_92
    move-exception v8

    .line 137
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go Mr. RCS"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    goto :goto_79

    .line 142
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_9e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    goto :goto_79
.end method

.method public static resumeShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 442
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 443
    return-void
.end method

.method private static setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .parameter "invitation"
    .parameter "displayName"
    .parameter "tel"
    .parameter "callStartMilis"

    .prologue
    .line 621
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupInviteCallCardButtons "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const v2, 0x7f0901d3

    invoke-virtual {p0, v2}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 624
    .local v0, accept:Landroid/widget/Button;
    const v2, 0x7f0901d0

    invoke-virtual {p0, v2}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 626
    .local v1, reject:Landroid/widget/Button;
    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 627
    new-instance v2, Lcom/android/phone/RcsShare$1;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/phone/RcsShare$1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    new-instance v2, Lcom/android/phone/RcsShare$2;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/phone/RcsShare$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/RcsInvitation;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    :cond_48
    return-void
.end method

.method public static setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V
    .registers 6
    .parameter "mTopLeftButton"
    .parameter "mBluetoothButton"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 297
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 300
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons remove"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p0, :cond_20

    .line 302
    sget-boolean v0, Lcom/android/phone/RcsShare;->mPromotedService:Z

    if-eqz v0, :cond_24

    .line 303
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    :cond_20
    :goto_20
    invoke-virtual {p1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 317
    :goto_23
    return-void

    .line 306
    :cond_24
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_20

    .line 313
    :cond_28
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons no RCS"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_23
.end method

.method static setupPromotedServiceButton(Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .registers 15
    .parameter "inCallButtonsView"
    .parameter "button"
    .parameter "c"
    .parameter "isWebExEnabled"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton()"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-nez p1, :cond_15

    .line 168
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton null button"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_14
    return-void

    .line 173
    :cond_15
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v6

    if-eqz v6, :cond_23

    if-eqz p2, :cond_23

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 174
    :cond_23
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton gone"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_14

    .line 179
    :cond_2e
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton VISIBLE"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v6, "feature_tag"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 185
    .local v4, feature_tag_idx:I
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, featureTag:Ljava/lang/String;
    const-string v6, "int_name"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, action_idx:I
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, action:Ljava/lang/String;
    if-nez p3, :cond_5e

    const-string v6, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    const-string v6, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 195
    :cond_5e
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton not promoted"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sput-boolean v8, Lcom/android/phone/RcsShare;->mPromotedService:Z

    .line 197
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_14

    .line 201
    :cond_6b
    sput-boolean v9, Lcom/android/phone/RcsShare;->mPromotedService:Z

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, enabled:I
    const-string v6, "is_enabled"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 206
    .local v5, is_enabled_idx:I
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 208
    if-eqz v2, :cond_8f

    sget-boolean v6, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    if-eqz v6, :cond_8f

    .line 210
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton is enabled"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :goto_88
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14

    .line 214
    :cond_8f
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_88
.end method

.method public static setupRcsCallCard(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/telephony/CallManager;)V
    .registers 23
    .parameter "invitation"
    .parameter "tel"
    .parameter "displayName"
    .parameter "callStartMilis"
    .parameter "cm"

    .prologue
    .line 546
    sget-object v11, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupRcsCallCard "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-nez p0, :cond_29

    .line 596
    :goto_28
    return-void

    .line 550
    :cond_29
    const v11, 0x7f0901cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 551
    .local v5, rcsLayout:Landroid/widget/RelativeLayout;
    const v11, 0x7f0901d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 552
    .local v7, rcsTextView:Landroid/widget/TextView;
    const v11, 0x7f0901d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 554
    .local v6, rcsTextType:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v9

    .line 555
    .local v9, session:Lcom/android/phone/RcsShare$SessionState;
    iget-boolean v11, v9, Lcom/android/phone/RcsShare$SessionState;->mIsActive:Z

    if-eqz v11, :cond_d1

    iget v11, v9, Lcom/android/phone/RcsShare$SessionState;->mState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d1

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    if-nez v11, :cond_d1

    .line 557
    sget-object v11, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v12, "RcsCallCard hasInvite"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/RcsShare;->setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 562
    .local v8, resources:Landroid/content/res/Resources;
    if-nez p2, :cond_85

    .line 563
    if-eqz p1, :cond_a5

    .line 564
    move-object/from16 p2, p1

    .line 570
    :cond_85
    :goto_85
    iget v11, v9, Lcom/android/phone/RcsShare$SessionState;->mType:I

    invoke-static {v11}, Lcom/android/phone/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/phone/RcsTransferConstants$SessionType;

    move-result-object v10

    .line 571
    .local v10, sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    move-object/from16 v0, p2

    invoke-static {v8, v0, v10}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    sget-object v11, Lcom/android/phone/RcsShare$5;->$SwitchMap$com$android$phone$RcsTransferConstants$SessionType:[I

    invoke-virtual {v10}, Lcom/android/phone/RcsTransferConstants$SessionType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_e0

    .line 586
    const-string v11, ""

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 566
    .end local v10           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_a5
    const v11, 0x104000e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_85

    .line 576
    .restart local v10       #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :pswitch_ad
    const v11, 0x7f0e0651

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-wide v15, v9, Lcom/android/phone/RcsShare$SessionState;->mSize:J

    invoke-static/range {v14 .. v16}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    .line 581
    :pswitch_c9
    const v11, 0x7f0e064f

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_28

    .line 593
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v10           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_d1
    sget-object v11, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v12, "RcsCallCard has no invites"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_28

    .line 574
    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_c9
    .end packed-switch
.end method

.method static setupRcsServicesButton(Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;)V
    .registers 14
    .parameter "inCallButtonsView"
    .parameter "button"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 228
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-nez p1, :cond_12

    .line 231
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_11
    return-void

    .line 235
    :cond_12
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_20

    if-eqz p2, :cond_20

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2d

    .line 237
    :cond_20
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton gone"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_11

    .line 242
    :cond_2d
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton VISIBLE"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    .line 249
    .local v0, enabled:I
    const-string v7, "service_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 250
    .local v6, service_name_idx:I
    const-string v7, "is_enabled"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 253
    .local v4, is_enabled_idx:I
    :cond_44
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, serviceName:Ljava/lang/String;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 255
    .local v3, isEnabled:I
    const-string v7, "feature_tag"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, feature_tag_idx:I
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, featureTag:Ljava/lang/String;
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 261
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "featureTag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " skip!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_9e
    :goto_9e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_a6

    if-eqz v0, :cond_44

    .line 272
    :cond_a6
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsActiveCall? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v0, :cond_e7

    sget-boolean v7, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    if-eqz v7, :cond_e7

    .line 276
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    :goto_d4
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_11

    .line 266
    :cond_dc
    if-eqz v3, :cond_9e

    .line 267
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move v0, v3

    goto :goto_9e

    .line 278
    :cond_e7
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton disabled"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method public static startLiveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 447
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 449
    return-void
.end method

.method public static startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .parameter "i"
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    .line 463
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 464
    :cond_4
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null info"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_b
    :goto_b
    return-void

    .line 468
    :cond_c
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start RCS action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p0

    move-object v5, p1

    .line 471
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->addRcsExtras(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Landroid/content/Context;)V

    .line 473
    :try_start_4e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 474
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 475
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->turnRcs(Z)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_65} :catch_66

    goto :goto_b

    .line 477
    :catch_66
    move-exception v6

    .line 478
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Did not find RCS activity..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static startRcsSharingDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "timeCallStartedMiliSeconds"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, i:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/phone/RcsShare;->mPromotedService:Z

    if-eqz v1, :cond_11

    .line 498
    const-string v1, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_11
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 500
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 501
    return-void
.end method
