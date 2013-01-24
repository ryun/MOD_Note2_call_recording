.class public Lcom/android/phone/callsettings/IntCallServicePreference;
.super Landroid/preference/DialogPreference;
.source "IntCallServicePreference.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field mAutoLayout:Landroid/widget/LinearLayout;

.field mAutoRadio:Landroid/widget/CheckedTextView;

.field mContext:Landroid/content/Context;

.field mManualLayout:Landroid/widget/LinearLayout;

.field mManualRadio:Landroid/widget/CheckedTextView;

.field mManualSvcNumber:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$3;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IntCallServicePreference;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private setInitValueAndLayout(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    const v2, 0x7f0901b4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    .line 99
    const v2, 0x7f0901b6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    .line 100
    const v2, 0x7f0901b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    .line 101
    const v2, 0x7f0901b7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    .line 102
    const v2, 0x7f0901b8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    .line 104
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 105
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    const v5, 0x7f0e063f

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 106
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    const v5, 0x7f0e063e

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 110
    :cond_51
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "int_call_svc_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, value:I
    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    if-lez v1, :cond_b0

    move v2, v3

    :goto_62
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 115
    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    if-lez v1, :cond_b2

    move v2, v4

    :goto_6a
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-lez v1, :cond_b4

    :goto_71
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 117
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "int_call_svc_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v2, :cond_96

    .line 121
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 122
    .local v0, len:I
    if-lez v0, :cond_96

    .line 123
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 127
    .end local v0           #len:I
    :cond_96
    if-nez v1, :cond_9b

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    .line 129
    :cond_9b
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/IntCallServicePreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$1;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/IntCallServicePreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$2;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void

    :cond_b0
    move v2, v4

    .line 114
    goto :goto_62

    :cond_b2
    move v2, v3

    .line 115
    goto :goto_6a

    :cond_b4
    move v4, v3

    .line 116
    goto :goto_71
.end method

.method private showKeypad()V
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 166
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$4;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V

    .line 92
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 3

    .prologue
    .line 80
    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->setDialogLayoutResource(I)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 84
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4
    .parameter "builder"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 179
    const v0, 0x7f0e02cc

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$5;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    return-void
.end method
