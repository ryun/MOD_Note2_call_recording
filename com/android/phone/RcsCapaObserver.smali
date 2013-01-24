.class public Lcom/android/phone/RcsCapaObserver;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallMenu:Landroid/view/Menu;

.field private mInCallUi:Lcom/android/phone/InCallTouchUi;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/view/Menu;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .registers 9
    .parameter "handler"
    .parameter "mInCallTouchUi"
    .parameter "menu"
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 43
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsCapaObserver() - inCallTouchUi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    .line 46
    iput-object p4, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 48
    iput-object p5, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 49
    iput-object p3, p0, Lcom/android/phone/RcsCapaObserver;->mInCallMenu:Landroid/view/Menu;

    .line 51
    :cond_2e
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 13
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : onChange()"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez p1, :cond_11

    .line 82
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver: calling update option menu"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_11
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, telNum:Ljava/lang/String;
    const/4 v7, 0x0

    .line 85
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v2, :cond_a5

    .line 88
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 89
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : opening cursor"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v8}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, telNumUri:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_89

    .line 96
    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 102
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #telNumUri:Ljava/lang/String;
    :cond_5e
    :goto_5e
    iget-object v10, p0, Lcom/android/phone/RcsCapaObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 103
    .local v10, view:Lcom/android/phone/InCallTouchUi;
    if-eqz v10, :cond_9d

    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallMenu:Landroid/view/Menu;

    if-eqz v2, :cond_9d

    .line 104
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallMenu:Landroid/view/Menu;

    const v3, 0x7f090287

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 105
    .local v6, RcsFileTransferItem:Landroid/view/MenuItem;
    invoke-static {v7}, Lcom/android/phone/RcsShare;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 106
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 107
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : true"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v6           #RcsFileTransferItem:Landroid/view/MenuItem;
    .end local v10           #view:Lcom/android/phone/InCallTouchUi;
    :goto_80
    if-eqz v7, :cond_85

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_85
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 125
    return-void

    .line 99
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #telNumUri:Ljava/lang/String;
    :cond_89
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 109
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #telNumUri:Ljava/lang/String;
    .restart local v6       #RcsFileTransferItem:Landroid/view/MenuItem;
    .restart local v10       #view:Lcom/android/phone/InCallTouchUi;
    :cond_91
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 110
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : false"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 113
    .end local v6           #RcsFileTransferItem:Landroid/view/MenuItem;
    :cond_9d
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver mInCallUi.mInCallButtonsView is null !"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 116
    .end local v10           #view:Lcom/android/phone/InCallTouchUi;
    :cond_a5
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mInCallUi is null !"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .registers 8
    .parameter "cr"

    .prologue
    const/4 v5, 0x1

    .line 64
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : registerSelfAsObserver()"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-boolean v3, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    if-nez v3, :cond_39

    .line 66
    iput-boolean v5, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    .line 67
    iget-object v3, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, telNum:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 69
    invoke-static {v1}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, telNumUri:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, queryUri:Landroid/net/Uri;
    invoke-virtual {p1, v0, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    .end local v0           #queryUri:Landroid/net/Uri;
    .end local v1           #telNum:Ljava/lang/String;
    .end local v2           #telNumUri:Ljava/lang/String;
    :cond_39
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .registers 4

    .prologue
    .line 54
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsCapaObserver: unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v1, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    if-eqz v1, :cond_17

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    .line 58
    iget-object v1, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_17
    return-void
.end method
