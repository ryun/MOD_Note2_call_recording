.class public Lcom/android/phone/RcsContentObserver;
.super Landroid/database/ContentObserver;
.source "RcsContentObserver.java"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallUi:Lcom/android/phone/InCallTouchUi;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .registers 8
    .parameter "handler"
    .parameter "mInCallTouchUi"
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 37
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 38
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsContentObserver() - inCallTouchUi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    .line 41
    iput-object p3, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/phone/RcsContentObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 43
    iput-object p4, p0, Lcom/android/phone/RcsContentObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 45
    :cond_2c
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 16
    .parameter "selfChange"

    .prologue
    const v13, 0x7f090137

    const v12, 0x7f090135

    const v11, 0x7f09012f

    const/4 v3, 0x0

    .line 67
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onChange()"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez p1, :cond_1a

    .line 71
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "calling update on buttons"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1a
    iget-object v2, p0, Lcom/android/phone/RcsContentObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/RcsContentObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, telNum:Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 77
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "opening cursor"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_b9

    .line 83
    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/phone/RcsContentObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v2, :cond_dc

    .line 91
    iget-object v10, p0, Lcom/android/phone/RcsContentObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 94
    .local v10, view:Lcom/android/phone/InCallTouchUi;
    if-eqz v10, :cond_d4

    .line 95
    invoke-virtual {v10, v13}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 96
    .local v7, rcsShareButton:Landroid/widget/Button;
    invoke-virtual {v10, v11}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 98
    .local v8, rcsVideoButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v10, v8, v7, v3}, Lcom/android/phone/RcsShare;->prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 100
    invoke-virtual {v10, v13}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v10, v2, v6}, Lcom/android/phone/RcsShare;->setupRcsServicesButton(Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;)V

    .line 102
    invoke-virtual {v10, v11}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v10, v2, v6, v3}, Lcom/android/phone/RcsShare;->setupPromotedServiceButton(Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    .line 106
    const-string v2, "voice_call_recording_menu"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 107
    const v2, 0x7f09012e

    invoke-virtual {v10, v2}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v10, v12}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    .line 119
    .end local v7           #rcsShareButton:Landroid/widget/Button;
    .end local v8           #rcsVideoButton:Landroid/widget/Button;
    .end local v10           #view:Lcom/android/phone/InCallTouchUi;
    :goto_b0
    if-eqz v6, :cond_b5

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_b5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 126
    return-void

    .line 86
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_b9
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 110
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .restart local v7       #rcsShareButton:Landroid/widget/Button;
    .restart local v8       #rcsVideoButton:Landroid/widget/Button;
    .restart local v10       #view:Lcom/android/phone/InCallTouchUi;
    :cond_c1
    const v2, 0x7f09012a

    invoke-virtual {v10, v2}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v10, v12}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    goto :goto_b0

    .line 114
    .end local v7           #rcsShareButton:Landroid/widget/Button;
    .end local v8           #rcsVideoButton:Landroid/widget/Button;
    :cond_d4
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mInCallUi.mInCallButtonsView is null !"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 117
    .end local v10           #view:Lcom/android/phone/InCallTouchUi;
    :cond_dc
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mInCallUi is null !"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    .line 58
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerSelfAsObserver()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v0, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_13

    .line 60
    iput-boolean v2, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    .line 61
    sget-object v0, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    :cond_13
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .registers 4

    .prologue
    .line 48
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-boolean v1, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    if-eqz v1, :cond_17

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    .line 52
    iget-object v1, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_17
    return-void
.end method
