.class public Lcom/android/phone/callsettings/EditIpCallScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditIpCallScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field ipCallListSize:I

.field isDefault:I

.field istoastshowing:Z

.field mCreateEdit:Landroid/widget/EditText;

.field private prevString:Ljava/lang/String;

.field selectedMessage:Ljava/lang/String;

.field titleString:Ljava/lang/CharSequence;

.field updateMODE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->istoastshowing:Z

    .line 196
    new-instance v0, Lcom/android/phone/callsettings/EditIpCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditIpCallScreen$2;-><init>(Lcom/android/phone/callsettings/EditIpCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditIpCallScreen;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 384
    return-void
.end method

.method public static getByteSize(Ljava/lang/String;)I
    .registers 6
    .parameter "str"

    .prologue
    .line 364
    if-nez p0, :cond_4

    .line 365
    const/4 v1, 0x0

    .line 378
    :cond_3
    return v1

    .line 367
    :cond_4
    const/4 v1, 0x0

    .line 368
    .local v1, nCount:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 370
    .local v2, nStr:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v2, :cond_3

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_19

    .line 372
    add-int/lit8 v1, v1, 0x2

    .line 370
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 375
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const/16 v6, 0x50

    .line 308
    const-string v3, "CreateIpNumber"

    const-string v4, "============== afterTextChanged ============== :"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v3, "display_reject_message_limit"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 313
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e0597

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditIpCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/phone/callsettings/EditIpCallScreen;->getByteSize(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->titleString:Ljava/lang/CharSequence;

    .line 315
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    const-string v3, "CreateIpNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getByteSize(text)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/phone/callsettings/EditIpCallScreen;->getByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {v1}, Lcom/android/phone/callsettings/EditIpCallScreen;->getByteSize(Ljava/lang/String;)I

    move-result v3

    if-ge v6, v3, :cond_ae

    .line 323
    const v3, 0x7f0e02e9

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditIpCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 328
    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->istoastshowing:Z

    if-eqz v3, :cond_ad

    .line 329
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->istoastshowing:Z

    .line 331
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/EditIpCallScreen;->displayToast(Ljava/lang/String;)V

    .line 333
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 334
    .local v2, timer:Landroid/os/Handler;
    new-instance v3, Lcom/android/phone/callsettings/EditIpCallScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditIpCallScreen$3;-><init>(Lcom/android/phone/callsettings/EditIpCallScreen;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #timer:Landroid/os/Handler;
    :cond_ad
    :goto_ad
    return-void

    .line 342
    .restart local v0       #errorMsg:Ljava/lang/String;
    .restart local v1       #text:Ljava/lang/String;
    :cond_ae
    iput-object v1, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->prevString:Ljava/lang/String;

    goto :goto_ad
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 299
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 260
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 262
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v1, "CreateIpNumber"

    const-string v2, "OnCreate ============== :"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_14

    .line 111
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditIpCallScreen;->setHasOptionsMenu(Z)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 11
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v7, 0x7f0e02d1

    const v6, 0x7f0e02cd

    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 207
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 209
    .local v0, isTablet:Z
    const/4 v1, 0x4

    invoke-interface {p1, v3, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_5e

    move v1, v2

    :goto_1f
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    const/4 v1, 0x3

    invoke-interface {p1, v3, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0202c3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    const/4 v1, 0x2

    invoke-interface {p1, v3, v1, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_60

    move v1, v2

    :goto_45
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    invoke-interface {p1, v3, v2, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202c7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 221
    return-void

    :cond_5e
    move v1, v3

    .line 209
    goto :goto_1f

    :cond_60
    move v1, v3

    .line 214
    goto :goto_45
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    const v4, 0x7f040075

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0901e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    .line 123
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 124
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v4, :cond_23

    .line 125
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    :cond_23
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/callsettings/EditIpCallScreen$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditIpCallScreen$1;-><init>(Lcom/android/phone/callsettings/EditIpCallScreen;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    new-array v1, v9, [Landroid/text/InputFilter;

    .line 134
    .local v1, filterArray:[Landroid/text/InputFilter;
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v8

    .line 135
    const-string v4, "display_reject_message_limit"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 136
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 138
    :cond_47
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActivity()Landroid/app/Activity;

    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditIpCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_c6

    .line 143
    const-string v4, "UPDATE_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->updateMODE:Z

    .line 144
    const-string v4, "CreateIpNumber"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMODE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->updateMODE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v4, "IP_CALL_LIST_SIZE"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->ipCallListSize:I

    .line 147
    const-string v4, "CreateIpNumber"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ipCallListSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->ipCallListSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->updateMODE:Z

    if-ne v4, v9, :cond_c6

    .line 150
    const-string v4, "SELECTED_ITEM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->selectedMessage:Ljava/lang/String;

    .line 152
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->selectedMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 154
    .local v2, len:I
    if-lez v2, :cond_be

    .line 155
    iget-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 158
    :cond_be
    const-string v4, "IS_DEFAULT"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->isDefault:I

    .line 162
    .end local v2           #len:I
    :cond_c6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->ipCallListSize:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0e0442

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditIpCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->titleString:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    return-object v3
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 192
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    .line 193
    const-string v0, "CreateIpNumber"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 293
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 285
    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditIpCallScreen;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_d

    .line 290
    :pswitch_12
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditIpCallScreen;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_d

    .line 274
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

    .line 225
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 226
    .local v1, isTablet:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_3e

    move v0, v3

    .line 229
    .local v0, isLand:Z
    :goto_1c
    if-eqz v1, :cond_40

    .line 230
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 241
    :goto_3a
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 242
    return-void

    .end local v0           #isLand:Z
    :cond_3e
    move v0, v4

    .line 226
    goto :goto_1c

    .line 235
    .restart local v0       #isLand:Z
    :cond_40
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_63

    move v2, v3

    :goto_47
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_58

    move v4, v3

    :cond_58
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3a

    :cond_63
    move v2, v4

    .line 235
    goto :goto_47
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 187
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 188
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 304
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EDITED_ITEM"

    iget-object v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v2, "UPDATED"

    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->updateMODE:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v2, "IS_DEFAULT"

    iget v3, p0, Lcom/android/phone/callsettings/EditIpCallScreen;->isDefault:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 251
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditIpCallScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 256
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 257
    return-void
.end method
