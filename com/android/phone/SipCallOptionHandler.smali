.class public Lcom/android/phone/SipCallOptionHandler;
.super Landroid/app/Activity;
.source "SipCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCallOption:Ljava/lang/String;

.field private mDialogs:[Landroid/app/Dialog;

.field private mIntent:Landroid/content/Intent;

.field private mMakePrimary:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoingSipProfile:Landroid/net/sip/SipProfile;

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUnsetPriamryHint:Landroid/widget/TextView;

.field private mUseSipPhone:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .line 85
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/SipCallOptionHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V

    return-void
.end method

.method private addMakeDefaultCheckBox(Landroid/app/Dialog;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 291
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 293
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090027

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, view:Landroid/view/View;
    const v3, 0x1020276

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 297
    .local v1, makePrimaryCheckBox:Landroid/widget/CheckBox;
    const v3, 0x7f0e021f

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 298
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    const v3, 0x1020277

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    .line 301
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const v4, 0x7f0e0220

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method private createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    .registers 8
    .parameter "p"

    .prologue
    .line 362
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 363
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 377
    :goto_10
    return-void

    .line 367
    :cond_11
    :try_start_11
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    .line 368
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 369
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_41

    .line 370
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z
    :try_end_25
    .catch Landroid/net/sip/SipException; {:try_start_11 .. :try_end_25} :catch_26

    goto :goto_10

    .line 374
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :catch_26
    move-exception v1

    .line 375
    .local v1, e:Landroid/net/sip/SipException;
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open sip profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_10

    .line 372
    .end local v1           #e:Landroid/net/sip/SipException;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_41
    :try_start_41
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot make sipphone profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/net/sip/SipException; {:try_start_41 .. :try_end_59} :catch_26

    goto :goto_10
.end method

.method private getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .registers 6
    .parameter "primarySipUri"

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    .line 452
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-nez v3, :cond_f

    move-object v1, v2

    .line 456
    :goto_e
    return-object v1

    .line 453
    :cond_f
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 454
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    .end local v1           #p:Landroid/net/sip/SipProfile;
    :cond_2c
    move-object v1, v2

    .line 456
    goto :goto_e
.end method

.method private getPrimarySipPhone()V
    .registers 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, primarySipUri:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 437
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_25

    .line 438
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 439
    new-instance v1, Lcom/android/phone/SipCallOptionHandler$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$3;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    :goto_24
    return-void

    .line 447
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_24
.end method

.method private getProfileNameArray()[Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 307
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 308
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 309
    .local v1, i:I
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 310
    .local v4, p:Landroid/net/sip/SipProfile;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_f

    .line 312
    .end local v4           #p:Landroid/net/sip/SipProfile;
    :cond_25
    return-object v0
.end method

.method private isNetworkConnected()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 415
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 416
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 417
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_19

    .line 422
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_18
    :goto_18
    return v2

    .line 419
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_25

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_25
    move v2, v3

    goto :goto_18
.end method

.method private setResultAndFinish()V
    .registers 3

    .prologue
    .line 380
    const-string v0, "SipCallOptionHandler"

    const-string v1, "setResultAndFinish..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Lcom/android/phone/SipCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SipCallOptionHandler$1;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method private startGetPrimarySipPhoneThread()V
    .registers 3

    .prologue
    .line 426
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$2;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 431
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 350
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 353
    iput-boolean p2, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 354
    if-eqz p2, :cond_b

    .line 355
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :goto_a
    return-void

    .line 357
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 316
    const/4 v0, -0x2

    if-ne p2, v0, :cond_8

    .line 318
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 346
    :goto_7
    return-void

    .line 320
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_47

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 323
    const-string v1, "SipCallOptionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User pick phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const v1, 0x7f0e0222

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 325
    iput-boolean v4, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 326
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto :goto_7

    .line 329
    :cond_47
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_5b

    .line 330
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 345
    :cond_57
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_7

    .line 331
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_69

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_6d

    .line 333
    :cond_69
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_7

    .line 336
    :cond_6d
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7f

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 342
    :cond_7f
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v8, "SipCallOptionHandler"

    const-string v11, "onCreate: "

    invoke-static {v8, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 95
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 100
    const-string v8, "SipCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate: got intent action \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 211
    :goto_43
    return-void

    .line 110
    :cond_44
    const-string v8, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    .line 111
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_56

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_43

    .line 120
    :cond_56
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    .line 143
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v7

    .line 144
    .local v7, voipSupported:Z
    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "voipSupported: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v8, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 146
    new-instance v8, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 147
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    .line 148
    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Call option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 150
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v2

    .line 153
    .local v2, isInCellNetwork:Z
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d7

    const-string v8, "sip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    :cond_d7
    move v3, v10

    .line 155
    .local v3, isKnownCallScheme:Z
    :goto_d8
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f2

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f2

    move v4, v10

    .line 159
    .local v4, isRegularCall:Z
    :goto_e9
    if-nez v3, :cond_f4

    .line 160
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_43

    .end local v3           #isKnownCallScheme:Z
    .end local v4           #isRegularCall:Z
    :cond_f0
    move v3, v9

    .line 153
    goto :goto_d8

    .restart local v3       #isKnownCallScheme:Z
    :cond_f2
    move v4, v9

    .line 155
    goto :goto_e9

    .line 165
    .restart local v4       #isRegularCall:Z
    :cond_f4
    if-nez v7, :cond_103

    .line 166
    if-nez v4, :cond_fe

    .line 167
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 169
    :cond_fe
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_43

    .line 181
    :cond_103
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_13a

    .line 182
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_119

    .line 183
    if-nez v4, :cond_13a

    .line 184
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 188
    :cond_119
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ASK_ME_EACH_TIME"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    if-eqz v4, :cond_12c

    if-eqz v2, :cond_12c

    .line 190
    invoke-virtual {p0, v9}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 193
    :cond_12c
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ADDRESS_ONLY"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_138

    if-nez v4, :cond_13a

    .line 195
    :cond_138
    iput-boolean v10, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 200
    :cond_13a
    iget-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-eqz v8, :cond_14f

    .line 203
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v8

    if-gtz v8, :cond_148

    if-nez v4, :cond_14d

    .line 204
    :cond_148
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto/16 :goto_43

    .line 207
    :cond_14d
    iput-boolean v9, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 210
    :cond_14f
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_43
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/4 v6, -0x1

    const/high16 v5, 0x104

    const v4, 0x1010355

    .line 231
    packed-switch p1, :pswitch_data_de

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, dialog:Landroid/app/Dialog;
    :goto_d
    if-eqz v0, :cond_13

    .line 285
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aput-object v0, v2, p1

    .line 287
    :cond_13
    return-object v0

    .line 233
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_14
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e021d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 240
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_d

    .line 242
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_38
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e021e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getProfileNameArray()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    .restart local v0       #dialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->addMakeDefaultCheckBox(Landroid/app/Dialog;)V

    goto :goto_d

    .line 252
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_60
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0223

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0224

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0225

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 260
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_d

    .line 262
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_8b
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 263
    .local v1, wifiOnly:Z
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_b8

    const v2, 0x7f0e025d

    :goto_99
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v1, :cond_bc

    const v2, 0x7f0e025f

    :goto_a2
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 272
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_d

    .line 263
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_b8
    const v2, 0x7f0e025c

    goto :goto_99

    :cond_bc
    const v2, 0x7f0e025e

    goto :goto_a2

    .line 274
    .end local v1           #wifiOnly:Z
    :pswitch_c0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0260

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 280
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_d

    .line 231
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_14
        :pswitch_38
        :pswitch_60
        :pswitch_8b
        :pswitch_c0
    .end packed-switch
.end method

.method public onPause()V
    .registers 7

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 220
    const-string v4, "SipCallOptionHandler"

    const-string v5, "onPause() mCallerInfo = null for requery"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 227
    :goto_17
    return-void

    .line 223
    :cond_18
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .local v0, arr$:[Landroid/app/Dialog;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1c
    if-ge v2, v3, :cond_28

    aget-object v1, v0, v2

    .line 224
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 223
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 226
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_17
.end method
