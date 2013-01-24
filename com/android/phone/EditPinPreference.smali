.class public Lcom/android/phone/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

.field private shouldHideButtons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 94
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/phone/EditPinPreference;->shouldHideButtons:Z

    .line 95
    return-void

    .line 94
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 68
    const v2, 0x7f040066

    invoke-virtual {p0, v2}, Lcom/android/phone/EditPinPreference;->setDialogLayoutResource(I)V

    .line 70
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, dialog:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 75
    .local v1, textfield:Landroid/widget/EditText;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 76
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 77
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 78
    new-array v2, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 82
    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 86
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 3
    .parameter "positiveResult"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/phone/EditPinPreference;Z)V

    .line 114
    :cond_c
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4
    .parameter "builder"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 102
    iget-boolean v0, p0, Lcom/android/phone/EditPinPreference;->shouldHideButtons:Z

    if-eqz v0, :cond_e

    .line 103
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    :cond_e
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    .line 51
    return-void
.end method

.method public showPinDialog()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method
