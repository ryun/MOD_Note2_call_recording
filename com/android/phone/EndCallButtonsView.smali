.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCreateButton:Landroid/widget/Button;

.field mEndcallBottomFrame:Landroid/view/View;

.field private mIpCallButton:Landroid/widget/Button;

.field private mIsOnehandOn:Z

.field private mLeftArrow:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mViewButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 70
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 72
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private blockEndAnimation()V
    .registers 4

    .prologue
    .line 281
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 282
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 283
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_e

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setBlockEndAnimation(Z)V

    .line 286
    :cond_e
    return-void
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .parameter "call"

    .prologue
    .line 458
    if-nez p1, :cond_4

    .line 459
    const/4 v1, 0x0

    .line 465
    :goto_3
    return-object v1

    .line 461
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 462
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_3

    .line 465
    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 471
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 475
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 476
    return-void
.end method


# virtual methods
.method public disableAllButton()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 271
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    :cond_13
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 293
    .local v3, id:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick(View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 294
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 295
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3f

    .line 297
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 299
    :cond_3f
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 300
    .local v6, isIncome:Ljava/lang/Boolean;
    if-nez v1, :cond_4d

    .line 301
    const-string v9, "onClick : call is null"

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 455
    :cond_4c
    :goto_4c
    return-void

    .line 305
    :cond_4d
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 307
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_5a

    .line 308
    const-string v9, "onClick : connection is null"

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    goto :goto_4c

    .line 312
    :cond_5a
    const/4 v8, 0x0

    .line 313
    .local v8, phoneNumber:Ljava/lang/String;
    const-string v9, "get_orig_dial_string_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_dc

    .line 314
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 322
    :goto_67
    const-string v9, "roaming_auto_dial"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 323
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b5

    if-eqz v8, :cond_b5

    .line 324
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 325
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 326
    invoke-static {v8, v6}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    .line 329
    :goto_9e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 332
    :cond_b5
    packed-switch v3, :pswitch_data_27c

    .line 452
    :pswitch_b8
    const-string v9, "EndCallButtonsView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick: unexpected click: View "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 316
    :cond_dc
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e7

    .line 317
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v8

    goto :goto_67

    .line 319
    :cond_e7
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_67

    .line 328
    :cond_ed
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v8

    goto :goto_9e

    .line 334
    :pswitch_f8
    if-eqz v8, :cond_4c

    .line 335
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 336
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 338
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 340
    .local v7, o:Ljava/lang/Object;
    if-eqz v7, :cond_112

    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_112

    .line 341
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #o:Ljava/lang/Object;
    iput-object v7, v9, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 344
    :cond_112
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    .local v5, intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 353
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_12e
    if-eqz v8, :cond_4c

    .line 354
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 355
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 356
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    const-string v9, "ipcall"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 365
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_158
    if-eqz v8, :cond_4c

    .line 366
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 367
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 369
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "videocall"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 378
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_182
    if-eqz v8, :cond_4c

    .line 379
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 380
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    const-string v10, "sms"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 382
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 387
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_1a3
    if-eqz v8, :cond_4c

    .line 388
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 389
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 392
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1ca

    .line 394
    const-string v9, "sip"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    :goto_1bc
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 397
    :cond_1ca
    const-string v9, "phone"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1bc

    .line 405
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_1d0
    if-eqz v8, :cond_4c

    .line 406
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 407
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT_OR_EDIT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1fc

    .line 412
    const-string v9, "sip"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    :goto_1e9
    const-string v9, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 415
    :cond_1fc
    const-string v9, "phone"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v9, "phone_type"

    const/4 v10, 0x2

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1e9

    .line 426
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_208
    if-eqz v8, :cond_4c

    .line 427
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 428
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 429
    .restart local v7       #o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_4c

    move-object v4, v7

    .line 430
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 431
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v9, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, bufId:Ljava/lang/StringBuffer;
    iget-wide v9, v4, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x3000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    .line 441
    .end local v0           #bufId:Ljava/lang/StringBuffer;
    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #o:Ljava/lang/Object;
    :pswitch_245
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4c

    .line 446
    :pswitch_260
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4c

    .line 332
    nop

    :pswitch_data_27c
    .packed-switch 0x7f090106
        :pswitch_1a3
        :pswitch_1d0
        :pswitch_208
        :pswitch_b8
        :pswitch_f8
        :pswitch_12e
        :pswitch_158
        :pswitch_182
        :pswitch_260
        :pswitch_245
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 85
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    .line 86
    const-string v0, "end_call_two_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 87
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 88
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v3, 0x7f020063

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    :cond_22
    const v0, 0x7f09010a

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_36
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_4a
    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_5e
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_72
    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_86
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_9a
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_16b

    move v0, v1

    :goto_a9
    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 103
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    if-eqz v0, :cond_db

    .line 104
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_c9
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_db
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_e6

    .line 111
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 112
    :cond_e6
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    :cond_f1
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    :cond_fc
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    :cond_107
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    :cond_112
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    :cond_11d
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    :cond_128
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 125
    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_156

    .line 127
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 141
    :cond_156
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_16a

    .line 142
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    const v1, 0x7f02034d

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 143
    :cond_16a
    return-void

    :cond_16b
    move v0, v2

    .line 102
    goto/16 :goto_a9
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 26
    .parameter "cm"

    .prologue
    .line 146
    const-string v21, "updateState..."

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 153
    .local v4, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_54

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 157
    :cond_54
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 159
    .local v11, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v11, :cond_2fd

    .line 160
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    .line 161
    .local v14, isEmergencyCall:Z
    const-string v21, "feature_lgt"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a4

    .line 162
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a4

    const-string v21, "114"

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a4

    .line 163
    const-string v21, "ril.simtype"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 164
    .local v20, sSimType:Ljava/lang/String;
    const-string v21, "18"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_24b

    .line 165
    const/4 v14, 0x1

    .line 169
    :goto_8d
    const-string v21, "lock"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "missing_phone_lock"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a4

    .line 170
    const/4 v14, 0x1

    .line 173
    .end local v20           #sSimType:Ljava/lang/String;
    :cond_a4
    if-nez v14, :cond_24e

    const/4 v10, 0x1

    .line 174
    .local v10, canVoiceCall:Z
    :goto_a7
    if-nez v14, :cond_251

    const/4 v5, 0x1

    .line 175
    .local v5, canIpCall:Z
    :goto_aa
    if-nez v14, :cond_254

    const/4 v8, 0x1

    .line 176
    .local v8, canVideoCall:Z
    :goto_ad
    if-nez v14, :cond_257

    const/4 v7, 0x1

    .line 177
    .local v7, canSendMsgButton:Z
    :goto_b0
    const/4 v6, 0x0

    .line 178
    .local v6, canSaveCall:Z
    const/4 v9, 0x0

    .line 181
    .local v9, canViewContact:Z
    const/4 v12, 0x0

    .line 182
    .local v12, disableAllSendButton:Z
    const/4 v15, 0x0

    .line 184
    .local v15, isInvalidNumber:Z
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v19

    .line 186
    .local v19, presentation:I
    const-string v3, "20"

    .line 187
    .local v3, LOCK_PCW_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "lock_pcw_enabled"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, lockPcwState:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "presentation: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " / isCheckInvalidNumber: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 194
    if-eqz v16, :cond_25a

    const-string v21, "20"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25a

    .line 195
    const-string v21, "EndCallButtonsView : LOCK_PCW_ENABLED"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 196
    const/4 v12, 0x1

    .line 222
    :cond_118
    :goto_118
    if-eqz v12, :cond_11e

    .line 223
    const/4 v10, 0x0

    .line 224
    const/4 v5, 0x0

    .line 225
    const/4 v8, 0x0

    .line 226
    const/4 v7, 0x0

    .line 229
    :cond_11e
    const-string v21, "support_onehand_operation"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_180

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_180

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c4

    const/16 v17, 0x1

    .line 231
    .local v17, mIsOnehandOptionRight:Z
    :goto_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_167

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v17, :cond_2c8

    const/16 v21, 0x0

    :goto_160
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v17, :cond_2cc

    const/16 v21, 0x8

    :goto_179
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .end local v17           #mIsOnehandOptionRight:Z
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v10, :cond_2d0

    const/16 v21, 0x1

    :goto_18a
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    const-string v21, "ip_call"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1aa

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v5, :cond_2d4

    const/16 v21, 0x1

    :goto_1a3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v8, :cond_2d8

    const/16 v21, 0x1

    :goto_1b4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v7, :cond_2dc

    const/16 v21, 0x1

    :goto_1c5
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v6, :cond_2e0

    const/16 v21, 0x0

    :goto_1d6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v6, :cond_2e4

    const/16 v21, 0x0

    :goto_1e7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v9, :cond_2e8

    const/16 v21, 0x0

    :goto_1f8
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    const-string v21, "feature_chn"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_214

    .line 247
    if-eqz v15, :cond_214

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    :cond_214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    const-string v22, "video_call_disable"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2ec

    const/16 v22, 0x0

    :goto_22a
    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    const-string v21, "feature_lgt"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_24a

    .line 257
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2f0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    .end local v3           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v5           #canIpCall:Z
    .end local v6           #canSaveCall:Z
    .end local v7           #canSendMsgButton:Z
    .end local v8           #canVideoCall:Z
    .end local v9           #canViewContact:Z
    .end local v10           #canVoiceCall:Z
    .end local v12           #disableAllSendButton:Z
    .end local v14           #isEmergencyCall:Z
    .end local v15           #isInvalidNumber:Z
    .end local v16           #lockPcwState:Ljava/lang/String;
    .end local v19           #presentation:I
    :cond_24a
    :goto_24a
    return-void

    .line 167
    .restart local v14       #isEmergencyCall:Z
    .restart local v20       #sSimType:Ljava/lang/String;
    :cond_24b
    const/4 v14, 0x0

    goto/16 :goto_8d

    .line 173
    .end local v20           #sSimType:Ljava/lang/String;
    :cond_24e
    const/4 v10, 0x0

    goto/16 :goto_a7

    .line 174
    .restart local v10       #canVoiceCall:Z
    :cond_251
    const/4 v5, 0x0

    goto/16 :goto_aa

    .line 175
    .restart local v5       #canIpCall:Z
    :cond_254
    const/4 v8, 0x0

    goto/16 :goto_ad

    .line 176
    .restart local v8       #canVideoCall:Z
    :cond_257
    const/4 v7, 0x0

    goto/16 :goto_b0

    .line 198
    .restart local v3       #LOCK_PCW_ENABLED:Ljava/lang/String;
    .restart local v6       #canSaveCall:Z
    .restart local v7       #canSendMsgButton:Z
    .restart local v9       #canViewContact:Z
    .restart local v12       #disableAllSendButton:Z
    .restart local v15       #isInvalidNumber:Z
    .restart local v16       #lockPcwState:Ljava/lang/String;
    .restart local v19       #presentation:I
    :cond_25a
    sget v21, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c0

    sget v21, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c0

    .line 201
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_287

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_287

    .line 203
    const/4 v12, 0x1

    goto/16 :goto_118

    .line 205
    :cond_287
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v18

    .line 206
    .local v18, o:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_2a9

    move-object/from16 v13, v18

    .line 207
    check-cast v13, Lcom/android/internal/telephony/CallerInfo;

    .line 208
    .local v13, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v14, :cond_2bc

    iget-boolean v0, v13, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v21, v0

    if-nez v21, :cond_2bc

    const/4 v6, 0x1

    .line 209
    :goto_2a0
    if-nez v14, :cond_2be

    iget-boolean v0, v13, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2be

    const/4 v9, 0x1

    .line 212
    .end local v13           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_2a9
    :goto_2a9
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_118

    .line 213
    const/4 v12, 0x1

    goto/16 :goto_118

    .line 208
    .restart local v13       #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_2bc
    const/4 v6, 0x0

    goto :goto_2a0

    .line 209
    :cond_2be
    const/4 v9, 0x0

    goto :goto_2a9

    .line 217
    .end local v13           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v18           #o:Ljava/lang/Object;
    :cond_2c0
    const/4 v12, 0x1

    .line 218
    const/4 v15, 0x1

    goto/16 :goto_118

    .line 230
    :cond_2c4
    const/16 v17, 0x0

    goto/16 :goto_14e

    .line 231
    .restart local v17       #mIsOnehandOptionRight:Z
    :cond_2c8
    const/16 v21, 0x8

    goto/16 :goto_160

    .line 232
    :cond_2cc
    const/16 v21, 0x0

    goto/16 :goto_179

    .line 235
    .end local v17           #mIsOnehandOptionRight:Z
    :cond_2d0
    const/16 v21, 0x0

    goto/16 :goto_18a

    .line 237
    :cond_2d4
    const/16 v21, 0x0

    goto/16 :goto_1a3

    .line 239
    :cond_2d8
    const/16 v21, 0x0

    goto/16 :goto_1b4

    .line 240
    :cond_2dc
    const/16 v21, 0x0

    goto/16 :goto_1c5

    .line 242
    :cond_2e0
    const/16 v21, 0x8

    goto/16 :goto_1d6

    .line 243
    :cond_2e4
    const/16 v21, 0x8

    goto/16 :goto_1e7

    .line 244
    :cond_2e8
    const/16 v21, 0x8

    goto/16 :goto_1f8

    .line 254
    :cond_2ec
    const/16 v22, 0x8

    goto/16 :goto_22a

    .line 261
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_24a

    .line 264
    .end local v3           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v5           #canIpCall:Z
    .end local v6           #canSaveCall:Z
    .end local v7           #canSendMsgButton:Z
    .end local v8           #canVideoCall:Z
    .end local v9           #canViewContact:Z
    .end local v10           #canVoiceCall:Z
    .end local v12           #disableAllSendButton:Z
    .end local v14           #isEmergencyCall:Z
    .end local v15           #isInvalidNumber:Z
    .end local v16           #lockPcwState:Ljava/lang/String;
    .end local v19           #presentation:I
    :cond_2fd
    const-string v21, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_24a
.end method
