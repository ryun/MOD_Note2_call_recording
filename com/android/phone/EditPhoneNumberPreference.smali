.class public Lcom/android/phone/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field protected mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/Button;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mIsContactsBtn:Z

.field private mParentActivity:Landroid/app/Activity;

.field private mParentFragment:Landroid/app/Fragment;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-boolean v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mIsContactsBtn:Z

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 127
    const v1, 0x7f040065

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f100006

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 138
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 139
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditPhoneNumberPreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "1"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const-string v0, "0"

    goto :goto_d
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method public makeCursorPosition()V
    .registers 3

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_11

    .line 499
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 500
    .local v0, len:I
    if-lez v0, :cond_11

    .line 501
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 504
    .end local v0           #len:I
    :cond_11
    return-void
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .registers 6
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    const/4 v1, 0x0

    .line 256
    if-eqz p2, :cond_9

    .line 257
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 258
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 261
    :cond_9
    const v1, 0x7f090023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 265
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_19

    .line 266
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 269
    :cond_19
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 196
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 198
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 201
    const v1, 0x7f0901b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    .line 204
    const v1, 0x7f0901b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_57

    .line 208
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v1, :cond_34

    .line 212
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, defaultNumber:Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 214
    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 217
    .end local v0           #defaultNumber:Ljava/lang/String;
    :cond_34
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->makeCursorPosition()V

    .line 219
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    :cond_57
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/Button;

    if-eqz v1, :cond_65

    .line 226
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/EditPhoneNumberPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference$1;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_65
    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mIsContactsBtn:Z

    if-nez v1, :cond_74

    .line 242
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/Button;

    if-eqz v1, :cond_74

    .line 243
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    :cond_74
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 163
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_2e

    .line 169
    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    .line 170
    iget-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_32

    .line 171
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_2f

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_1f
    if-eqz v0, :cond_43

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v2, 0x0

    .line 186
    .local v2, vis:I
    :goto_25
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_2e

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_2e
    return-void

    .line 171
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_1f

    .line 173
    :cond_32
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3b

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_3a
    goto :goto_1f

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_3a

    .line 176
    :cond_3e
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_1f

    .line 183
    :cond_43
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_25
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v0, :cond_11

    const/4 v1, -0x3

    if-ne p2, v1, :cond_11

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_17

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 360
    :cond_11
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 361
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 362
    return-void

    .line 357
    :cond_17
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .parameter "positiveResult"

    .prologue
    .line 369
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2d

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 372
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 379
    :goto_21
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_2c

    .line 380
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V

    .line 382
    :cond_2c
    return-void

    .line 375
    :cond_2d
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_21
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .registers 3
    .parameter "pickedValue"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    .line 346
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->makeCursorPosition()V

    .line 349
    :cond_c
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 277
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 278
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_15

    .line 279
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    :cond_14
    :goto_14
    return-void

    .line 282
    :cond_15
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_14
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 435
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_a
    invoke-virtual {p0, p2}, Lcom/android/phone/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 437
    return-void

    .line 435
    .restart local p2
    :cond_e
    check-cast p2, Ljava/lang/String;

    goto :goto_a
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 469
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContactPickIconActive(Z)V
    .registers 2
    .parameter "isActive"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mIsContactsBtn:Z

    .line 294
    return-void
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 307
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .registers 4
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 320
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 321
    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 322
    return-void
.end method

.method public setParentFragment(Landroid/app/Fragment;I)V
    .registers 4
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    .line 327
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 329
    return-void
.end method

.method public setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .registers 4
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    .line 335
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 336
    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 337
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;
    .registers 3
    .parameter "number"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 422
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 425
    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .registers 3
    .parameter "summary"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 479
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 480
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 482
    :cond_b
    return-object p0
.end method

.method public setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;
    .registers 3
    .parameter "checked"

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    .line 397
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 400
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 535
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 537
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 538
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, shouldDisable:Z
    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_1d

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 453
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 458
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_1c
    return v1

    .line 456
    :cond_1d
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_2b

    move v1, v2

    :goto_2a
    goto :goto_1c

    :cond_2b
    move v1, v3

    goto :goto_2a
.end method
