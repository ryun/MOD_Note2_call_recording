.class public Lcom/android/phone/CallReminderActivity;
.super Landroid/app/Activity;
.source "CallReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallReminderActivity$WakeLock;
    }
.end annotation


# static fields
.field private static alarmogg:Ljava/lang/String;


# instance fields
.field _PROJECTION:[Ljava/lang/String;

.field private alertTime:J

.field mAlertMode:I

.field private mAlertTimer:Landroid/os/CountDownTimer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBuffer:[B

.field private mCallReminderCircle:Lcom/android/phone/CallReminderCircle;

.field private mCalledTime:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mLogid:I

.field private mLogtype:I

.field private mName:Ljava/lang/String;

.field private mPause:Ljava/lang/Boolean;

.field private mPhotoUri:Ljava/lang/String;

.field public mRemindCallerNumber:Landroid/widget/TextView;

.field public mRemindCallerPicture:Landroid/widget/ImageView;

.field private mRemindLogtype:Landroid/widget/ImageView;

.field public mRemindMissedTime:Landroid/widget/TextView;

.field private mSoundTone:Landroid/net/Uri;

.field private mVoiceString:Ljava/lang/String;

.field private mVolume:I

.field private number:Ljava/lang/String;

.field private photoBm:Landroid/graphics/Bitmap;

.field private player:Lcom/android/phone/CallReminderPlayer;

.field private rejectTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "content%3A%2F%2Fmedia%2Finternal%2Faudio%2Fmedia%2F12"

    sput-object v0, Lcom/android/phone/CallReminderActivity;->alarmogg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mVoiceString:Ljava/lang/String;

    .line 114
    iput v2, p0, Lcom/android/phone/CallReminderActivity;->mAlertMode:I

    .line 115
    iput-wide v3, p0, Lcom/android/phone/CallReminderActivity;->rejectTime:J

    .line 116
    iput-wide v3, p0, Lcom/android/phone/CallReminderActivity;->alertTime:J

    .line 120
    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mPhotoUri:Ljava/lang/String;

    .line 121
    iput v2, p0, Lcom/android/phone/CallReminderActivity;->mLogtype:I

    .line 122
    iput v2, p0, Lcom/android/phone/CallReminderActivity;->mLogid:I

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mHandler:Landroid/os/Handler;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "logtype"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->_PROJECTION:[Ljava/lang/String;

    .line 395
    return-void
.end method

.method private IsOncall()Z
    .registers 3

    .prologue
    .line 288
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1e

    .line 289
    :cond_1c
    const/4 v0, 0x1

    .line 291
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic access$000(Lcom/android/phone/CallReminderActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/CallReminderActivity;->mCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/phone/CallReminderActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/CallReminderActivity;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallReminderActivity;->mCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallReminderActivity;)Lcom/android/phone/CallReminderPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    return-object v0
.end method

.method private initScreen()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 334
    iput-object p0, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    .line 335
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->setContentView(I)V

    .line 337
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerPicture:Landroid/widget/ImageView;

    .line 338
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindMissedTime:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerNumber:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindLogtype:Landroid/widget/ImageView;

    .line 341
    const-string v0, "initscreen"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindMissedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mRemindLogtype:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    const v0, 0x7f09007f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallReminderCircle;

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mCallReminderCircle:Lcom/android/phone/CallReminderCircle;

    .line 348
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mCallReminderCircle:Lcom/android/phone/CallReminderCircle;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallReminderCircle;->setCallReminderActivityInstance(Lcom/android/phone/CallReminderActivity;)V

    .line 350
    return-void
.end method

.method private loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "uri"

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mBuffer:[B

    if-nez v5, :cond_b

    .line 473
    const/16 v5, 0x4000

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/phone/CallReminderActivity;->mBuffer:[B

    .line 476
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 477
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_5f

    .line 478
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_2f

    .line 481
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :goto_1a
    :try_start_1a
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mBuffer:[B

    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, size:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_49

    .line 482
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2a

    goto :goto_1a

    .line 485
    .end local v4           #size:I
    :catchall_2a
    move-exception v5

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 492
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_2f
    move-exception v2

    .line 493
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "CallReminderActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot load photo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    .end local v2           #ex:Ljava/lang/Exception;
    :goto_48
    return-object v1

    .line 485
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #size:I
    :cond_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 487
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_48

    .line 490
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #size:I
    :cond_5f
    const-string v5, "CallReminderActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot load photo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_77} :catch_2f

    goto :goto_48
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 576
    const-string v0, "CallReminderActivity"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 577
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 580
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 583
    .local v1, windowmanager:Landroid/view/IWindowManager;
    :try_start_a
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_13

    move-result v2

    .line 587
    :goto_12
    return v2

    .line 584
    :catch_13
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private setWinodowOnTop()V
    .registers 3

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 570
    return-void
.end method


# virtual methods
.method public StopAll()V
    .registers 3

    .prologue
    .line 297
    const-string v1, "StopAll"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    if-eqz v1, :cond_e

    .line 300
    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderPlayer;->setIsFinishing()V

    .line 301
    :cond_e
    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_17

    .line 304
    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 305
    :cond_17
    invoke-static {}, Lcom/android/phone/CallReminderActivity$WakeLock;->release()V

    .line 306
    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    if-eqz v1, :cond_23

    .line 308
    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderPlayer;->Stop()V

    .line 309
    :cond_23
    invoke-static {}, Lcom/android/phone/CallReminderNotificationHelper;->getInstance()Lcom/android/phone/CallReminderNotificationHelper;

    move-result-object v0

    .line 310
    .local v0, helper:Lcom/android/phone/CallReminderNotificationHelper;
    invoke-virtual {v0, p0}, Lcom/android/phone/CallReminderNotificationHelper;->cancel(Landroid/content/Context;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->finish()V

    .line 312
    return-void
.end method

.method public getAlertUri()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 513
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remind_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, uriString:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 516
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 522
    .local v0, uri:Landroid/net/Uri;
    :goto_15
    return-object v0

    .line 519
    .end local v0           #uri:Landroid/net/Uri;
    :cond_16
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_15
.end method

.method public getCallInfo(Landroid/os/Bundle;)V
    .registers 15
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 418
    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    .line 419
    const-string v2, "rejectTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/CallReminderActivity;->rejectTime:J

    .line 420
    const-string v2, "alertTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/CallReminderActivity;->alertTime:J

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, cResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 424
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 427
    .local v1, uri:Landroid/net/Uri;
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 430
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "photo_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 431
    if-eqz v8, :cond_de

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 432
    const-string v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    .line 433
    const-string v2, "photo_uri"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->mPhotoUri:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_113
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_62} :catch_e7

    .line 442
    :goto_62
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    if-nez v2, :cond_6a

    .line 443
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    .line 444
    :cond_6a
    if-eqz v8, :cond_70

    .line 445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 446
    const/4 v8, 0x0

    .line 448
    :cond_70
    const/4 v1, 0x0

    .line 449
    const/4 v0, 0x0

    .line 452
    :goto_72
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 453
    .local v10, query:Ljava/lang/StringBuffer;
    const-string v2, "number  GLOB \'"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' and date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/CallReminderActivity;->rejectTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 456
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallReminderActivity;->_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 457
    if-eqz v8, :cond_dd

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_da

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 460
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CallReminderActivity;->mLogid:I

    .line 461
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CallReminderActivity;->mLogtype:I

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLogtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallReminderActivity;->mLogtype:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 464
    :cond_da
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_dd
    return-void

    .line 435
    .end local v10           #query:Ljava/lang/StringBuffer;
    :cond_de
    :try_start_de
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    .line 436
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->mPhotoUri:Ljava/lang/String;
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_113
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e5} :catch_e7

    goto/16 :goto_62

    .line 438
    :catch_e7
    move-exception v9

    .line 439
    .local v9, e:Ljava/lang/Exception;
    :try_start_e8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getCallerName() : Exception !!! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_e8 .. :try_end_101} :catchall_113

    .line 442
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    if-nez v2, :cond_109

    .line 443
    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    .line 444
    :cond_109
    if-eqz v8, :cond_10f

    .line 445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 446
    const/4 v8, 0x0

    .line 448
    :cond_10f
    const/4 v1, 0x0

    .line 449
    const/4 v0, 0x0

    .line 450
    goto/16 :goto_72

    .line 442
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_113
    move-exception v2

    iget-object v3, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    if-nez v3, :cond_11c

    .line 443
    iget-object v3, p0, Lcom/android/phone/CallReminderActivity;->number:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    .line 444
    :cond_11c
    if-eqz v8, :cond_122

    .line 445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 446
    const/4 v8, 0x0

    .line 448
    :cond_122
    const/4 v1, 0x0

    .line 449
    const/4 v0, 0x0

    throw v2
.end method

.method public getLogid()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lcom/android/phone/CallReminderActivity;->mLogid:I

    return v0
.end method

.method isDormantOn()Z
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, UNCHECK:I
    const/4 v0, 0x1

    .line 528
    .local v0, CHECK:I
    const/4 v6, 0x0

    .line 529
    .local v6, isDormantModeOn:I
    const/4 v5, 0x0

    .line 531
    .local v5, isDormantAlarm:I
    iget-object v10, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_switch_onoff"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 533
    iget-object v10, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_disable_alarm_and_timer"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 536
    if-eqz v6, :cond_22

    if-nez v5, :cond_28

    .line 537
    :cond_22
    const-string v10, "dormant disable "

    invoke-direct {p0, v10, v9}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;Z)V

    .line 562
    :cond_27
    :goto_27
    return v8

    .line 541
    :cond_28
    iget-object v10, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_always"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_cb

    .line 542
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 543
    .local v2, c:Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v3, v10, v11

    .line 544
    .local v3, curTime:I
    iget-object v10, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_start_hour"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    iget-object v11, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_start_min"

    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v7, v10, v11

    .line 546
    .local v7, startTime:I
    iget-object v10, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_end_hour"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    iget-object v11, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_end_min"

    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v4, v10, v11

    .line 548
    .local v4, endTime:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "curTime "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;Z)V

    .line 549
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startTime "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;Z)V

    .line 550
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endTime "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;Z)V

    .line 552
    if-ne v7, v4, :cond_ce

    .line 553
    const-string v8, "Dormant Time set as Always"

    invoke-direct {p0, v8, v9}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;Z)V

    .end local v2           #c:Ljava/util/Calendar;
    .end local v3           #curTime:I
    .end local v4           #endTime:I
    .end local v7           #startTime:I
    :cond_cb
    move v8, v9

    .line 562
    goto/16 :goto_27

    .line 554
    .restart local v2       #c:Ljava/util/Calendar;
    .restart local v3       #curTime:I
    .restart local v4       #endTime:I
    .restart local v7       #startTime:I
    :cond_ce
    if-ge v7, v4, :cond_d6

    .line 555
    if-lt v3, v7, :cond_27

    if-le v3, v4, :cond_cb

    goto/16 :goto_27

    .line 558
    :cond_d6
    if-le v3, v4, :cond_cb

    if-ge v3, v7, :cond_cb

    goto/16 :goto_27
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 572
    const-string v0, "CallReminderActivity"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    invoke-direct {p0}, Lcom/android/phone/CallReminderActivity;->initScreen()V

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->updateScreen()V

    .line 358
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/android/phone/CallReminderActivity$WakeLock;->acquire(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/android/phone/CallReminderActivity;->setWinodowOnTop()V

    .line 139
    invoke-direct {p0}, Lcom/android/phone/CallReminderActivity;->initScreen()V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    iput v3, p0, Lcom/android/phone/CallReminderActivity;->mCount:I

    .line 144
    new-instance v0, Lcom/android/phone/CallReminderPlayer;

    invoke-direct {v0, p0}, Lcom/android/phone/CallReminderPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    .line 145
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderPlayer;->setCallState(Lcom/android/internal/telephony/Phone$State;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getAlertUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mSoundTone:Landroid/net/Uri;

    .line 147
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_62

    .line 148
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallReminderActivity;->mVolume:I

    .line 150
    :cond_62
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_d2

    .line 151
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alertoncall_mode"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallReminderActivity;->mAlertMode:I

    .line 153
    iget v0, p0, Lcom/android/phone/CallReminderActivity;->mAlertMode:I

    if-ne v0, v8, :cond_cc

    .line 154
    const-string v0, "mAlertMode"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    const-string v1, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallReminderPlayer;->setPlayResource(Landroid/net/Uri;Ljava/lang/String;)V

    .line 160
    :goto_9a
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    iget v1, p0, Lcom/android/phone/CallReminderActivity;->mCount:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderPlayer;->Play(I)V

    .line 182
    :goto_a1
    new-instance v0, Lcom/android/phone/CallReminderActivity$1;

    const-wide/32 v2, 0xe678

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallReminderActivity$1;-><init>(Lcom/android/phone/CallReminderActivity;JJ)V

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    .line 196
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 197
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 198
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 199
    .local v6, data:Landroid/os/Bundle;
    invoke-virtual {p0, v6}, Lcom/android/phone/CallReminderActivity;->getCallInfo(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->updateScreen()V

    .line 201
    sput-object p0, Lcom/android/phone/PhoneApp;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    .line 202
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/CallReminderActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallReminderActivity$2;-><init>(Lcom/android/phone/CallReminderActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void

    .line 158
    .end local v6           #data:Landroid/os/Bundle;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_cc
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0, v9}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    goto :goto_9a

    .line 161
    :cond_d2
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mSoundTone:Landroid/net/Uri;

    if-eqz v0, :cond_126

    .line 162
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    iget-object v1, p0, Lcom/android/phone/CallReminderActivity;->mSoundTone:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/CallReminderActivity;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallReminderPlayer;->setPlayResource(Landroid/net/Uri;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallReminderActivity;->mVolume:I

    .line 164
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v8, :cond_fd

    .line 166
    :cond_f7
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0, v10}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    goto :goto_a1

    .line 168
    :cond_fd
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->isDormantOn()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0, v9}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    goto :goto_a1

    .line 170
    :cond_109
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_11f

    .line 171
    iput v3, p0, Lcom/android/phone/CallReminderActivity;->mVolume:I

    .line 172
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    goto :goto_a1

    .line 174
    :cond_11f
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    goto/16 :goto_a1

    .line 178
    :cond_126
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0, v9}, Lcom/android/phone/CallReminderPlayer;->setPlayMode(I)V

    goto/16 :goto_a1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->StopAll()V

    .line 215
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1c

    .line 216
    const-string v0, "Destroy..mAlertTimer..."

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 218
    iput-object v1, p0, Lcom/android/phone/CallReminderActivity;->mAlertTimer:Landroid/os/CountDownTimer;

    .line 221
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_22

    .line 222
    iput-object v1, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 224
    :cond_22
    sput-object v1, Lcom/android/phone/PhoneApp;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    .line 225
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 268
    sparse-switch p1, :sswitch_data_e

    .line 284
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 275
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->StopAll()V

    goto :goto_3

    .line 279
    :sswitch_c
    const/4 v0, 0x1

    goto :goto_7

    .line 268
    :sswitch_data_e
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_c
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1b -> :sswitch_8
        0x52 -> :sswitch_c
        0xa4 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 249
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallReminderActivity;->requestSystemKeyEvent(IZ)Z

    .line 250
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    if-eqz v0, :cond_17

    .line 251
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderPlayer;->Pause()V

    .line 252
    :cond_17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mPause:Ljava/lang/Boolean;

    .line 253
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 264
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 229
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 231
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallReminderActivity;->mVolume:I

    .line 232
    invoke-direct {p0}, Lcom/android/phone/CallReminderActivity;->IsOncall()Z

    move-result v0

    if-nez v0, :cond_20

    .line 233
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/phone/CallReminderActivity;->mVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 236
    :cond_20
    const/16 v0, 0x1a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallReminderActivity;->requestSystemKeyEvent(IZ)Z

    .line 237
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    if-eqz v0, :cond_3d

    .line 238
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderPlayer;->onResume()V

    .line 239
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    iget v1, p0, Lcom/android/phone/CallReminderActivity;->mCount:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderPlayer;->Resume(I)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderPlayer;->setVolume(F)V

    .line 242
    :cond_3d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallReminderActivity;->mPause:Ljava/lang/Boolean;

    .line 243
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 258
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public pauseRemindSound()V
    .registers 2

    .prologue
    .line 327
    const-string v0, "pauseRemindSound : "

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    if-eqz v0, :cond_e

    .line 329
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderPlayer;->Pause()V

    .line 330
    :cond_e
    return-void
.end method

.method public updateScreen()V
    .registers 8

    .prologue
    .line 361
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 362
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mPhotoUri:Ljava/lang/String;

    if-eqz v5, :cond_66

    .line 363
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mPhotoUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallReminderActivity;->loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallReminderActivity;->photoBm:Landroid/graphics/Bitmap;

    .line 364
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerPicture:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/CallReminderActivity;->photoBm:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    :goto_1c
    invoke-virtual {p0}, Lcom/android/phone/CallReminderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, time_format:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, sdf_24:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm a"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, sdf_12:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/phone/CallReminderActivity;->rejectTime:J

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 373
    .local v0, dd:Ljava/util/Date;
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 374
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallReminderActivity;->mCalledTime:Ljava/lang/String;

    .line 378
    :goto_49
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerNumber:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/CallReminderActivity;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mRemindMissedTime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/CallReminderActivity;->mCalledTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget v5, p0, Lcom/android/phone/CallReminderActivity;->mLogtype:I

    const/16 v6, 0x1f4

    if-ne v5, v6, :cond_65

    .line 381
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mRemindLogtype:Landroid/widget/ImageView;

    const v6, 0x7f0201e6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    :cond_65
    return-void

    .line 366
    .end local v0           #dd:Ljava/util/Date;
    .end local v2           #sdf_12:Ljava/text/SimpleDateFormat;
    .end local v3           #sdf_24:Ljava/text/SimpleDateFormat;
    .end local v4           #time_format:Ljava/lang/String;
    :cond_66
    iget-object v5, p0, Lcom/android/phone/CallReminderActivity;->mRemindCallerPicture:Landroid/widget/ImageView;

    const v6, 0x7f02039c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    .line 376
    .restart local v0       #dd:Ljava/util/Date;
    .restart local v2       #sdf_12:Ljava/text/SimpleDateFormat;
    .restart local v3       #sdf_24:Ljava/text/SimpleDateFormat;
    .restart local v4       #time_format:Ljava/lang/String;
    :cond_6f
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallReminderActivity;->mCalledTime:Ljava/lang/String;

    goto :goto_49
.end method
