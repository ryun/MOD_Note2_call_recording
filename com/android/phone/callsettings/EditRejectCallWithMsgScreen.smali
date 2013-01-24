.class public Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field mCreateEdit:Landroid/widget/EditText;

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private prevString:Ljava/lang/String;

.field selectedMessage:Ljava/lang/String;

.field titleString:Ljava/lang/CharSequence;

.field updateMODE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->istoastshowing:Z

    .line 284
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$5;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->handler:Landroid/os/Handler;

    .line 439
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 523
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const/16 v6, 0x50

    .line 397
    const-string v3, "CreateRejectMessages"

    const-string v4, "============== afterTextChanged ============== :"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v3, "display_reject_message_limit"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 402
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e0597

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    .line 404
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    const-string v3, "CreateRejectMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringByteSize(text)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v3

    if-ge v6, v3, :cond_a8

    .line 412
    const v3, 0x7f0e02e9

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 417
    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->istoastshowing:Z

    if-eqz v3, :cond_a7

    .line 418
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->istoastshowing:Z

    .line 420
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->displayToast(Ljava/lang/String;)V

    .line 422
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 423
    .local v2, timer:Landroid/os/Handler;
    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$6;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$6;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #timer:Landroid/os/Handler;
    :cond_a7
    :goto_a7
    return-void

    .line 431
    .restart local v0       #errorMsg:Ljava/lang/String;
    .restart local v1       #text:Ljava/lang/String;
    :cond_a8
    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    goto :goto_a7
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 388
    return-void
.end method

.method public getStringByteSize(Ljava/lang/String;)I
    .registers 12
    .parameter "str"

    .prologue
    const/16 v9, 0x7f

    const/4 v6, 0x0

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v6

    .line 500
    :cond_a
    :goto_a
    return v3

    .line 455
    :cond_b
    const/4 v3, 0x0

    .line 456
    .local v3, ret:I
    const/4 v1, 0x0

    .line 457
    .local v1, nByte:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 461
    .local v2, nStr:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 462
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_a

    .line 464
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, szSubscriberId:Ljava/lang/String;
    if-eqz v4, :cond_4d

    const/4 v7, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "45006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3b
    if-ge v0, v2, :cond_4b

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_48

    .line 469
    add-int/lit8 v1, v1, 0x2

    .line 467
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 472
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 475
    :cond_4b
    move v3, v1

    goto :goto_a

    .line 478
    .end local v0           #i:I
    :cond_4d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4e
    if-ge v0, v2, :cond_56

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_5a

    .line 491
    :cond_56
    if-ne v0, v2, :cond_6b

    .line 492
    move v3, v1

    goto :goto_a

    .line 483
    :cond_5a
    const/16 v6, 0x1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v7

    if-eq v6, v7, :cond_56

    .line 486
    add-int/lit8 v1, v1, 0x1

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 494
    :cond_6b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    goto :goto_a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 349
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 351
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v1, "CreateRejectMessages"

    const-string v2, "OnCreate ============== :"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 104
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_14

    .line 106
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->setHasOptionsMenu(Z)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 13
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v9, 0x7f0e02d1

    const v8, 0x7f0e02cd

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 296
    .local v1, isTablet:Z
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    move v0, v3

    .line 297
    .local v0, cancelOrder:I
    :goto_18
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    move v2, v4

    .line 299
    .local v2, saveOrder:I
    :goto_21
    const/4 v5, 0x4

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_74

    move v5, v4

    :goto_31
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    const/4 v5, 0x3

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0202c3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    const/4 v5, 0x2

    invoke-interface {p1, v3, v5, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_76

    move v5, v4

    :goto_57
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    invoke-interface {p1, v3, v4, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0202c7

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 311
    return-void

    .end local v0           #cancelOrder:I
    .end local v2           #saveOrder:I
    :cond_70
    move v0, v4

    .line 296
    goto :goto_18

    .restart local v0       #cancelOrder:I
    :cond_72
    move v2, v3

    .line 297
    goto :goto_21

    .restart local v2       #saveOrder:I
    :cond_74
    move v5, v3

    .line 299
    goto :goto_31

    :cond_76
    move v5, v3

    .line 304
    goto :goto_57
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 115
    const v5, 0x7f040075

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0901e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    .line 119
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_1c

    .line 120
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    :cond_1c
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    .line 190
    .local v1, filter:Landroid/text/InputFilter;
    const/4 v5, 0x1

    new-array v2, v5, [Landroid/text/InputFilter;

    .line 192
    .local v2, filterArray:[Landroid/text/InputFilter;
    const-string v5, "dcm_reject_call_msg_limit"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 193
    const/4 v5, 0x0

    aput-object v1, v2, v5

    .line 194
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 195
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 198
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 204
    :goto_50
    const-string v5, "display_reject_message_limit"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 205
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 207
    :cond_5d
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 210
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    new-instance v6, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$3;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_be

    .line 227
    const-string v5, "UPDATE_MODE"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    .line 228
    const-string v5, "CreateRejectMessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMODE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_be

    .line 231
    const-string v5, "SELECTED_MESSAGE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->selectedMessage:Ljava/lang/String;

    .line 233
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->selectedMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 235
    .local v3, len:I
    if-lez v3, :cond_be

    .line 236
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 241
    .end local v3           #len:I
    :cond_be
    const-string v5, "display_reject_message_limit"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 242
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    iget-boolean v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12a

    .line 244
    iget-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e0597

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    .line 252
    :goto_114
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    :cond_11d
    return-object v4

    .line 201
    .end local v0           #args:Landroid/os/Bundle;
    :cond_11e
    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v5

    goto/16 :goto_50

    .line 249
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_12a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e0597

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->titleString:Ljava/lang/CharSequence;

    goto :goto_114
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 280
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    .line 281
    const-string v0, "CreateRejectMessages"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 382
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 374
    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_d

    .line 379
    :pswitch_12
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_d

    .line 363
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 315
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 316
    .local v1, isTablet:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_3e

    move v0, v3

    .line 319
    .local v0, isLand:Z
    :goto_1c
    if-eqz v1, :cond_40

    .line 320
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    :goto_3a
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 332
    return-void

    .end local v0           #isLand:Z
    :cond_3e
    move v0, v4

    .line 316
    goto :goto_1c

    .line 325
    .restart local v0       #isLand:Z
    :cond_40
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_63

    move v2, v3

    :goto_47
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_58

    move v4, v3

    :cond_58
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 328
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3a

    :cond_63
    move v2, v4

    .line 325
    goto :goto_47
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 263
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_13

    .line 264
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 265
    :cond_13
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$4;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 273
    const v1, 0x7f0e0720

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, titleString:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    .end local v0           #titleString:Ljava/lang/CharSequence;
    :cond_35
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 393
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EDITED_MESSAGE"

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "UPDATED"

    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->updateMODE:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 340
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 341
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 345
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 346
    return-void
.end method
