.class public Lcom/android/phone/callsettings/CallStatusTonesPreference;
.super Landroid/preference/DialogPreference;
.source "CallStatusTonesPreference.java"


# instance fields
.field private mCallStatusTonesChecked:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    .line 46
    return-void

    .line 39
    :array_c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallStatusTonesPreference;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    return-object v0
.end method

.method private getValueIndex()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "call_conn_tone"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, callconntone:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "min_minder"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 59
    .local v2, minminder:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "call_end_tone"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, callendtone:I
    iget-object v6, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    if-lez v0, :cond_42

    move v3, v4

    :goto_31
    aput-boolean v3, v6, v5

    .line 63
    iget-object v6, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    if-lez v2, :cond_44

    move v3, v4

    :goto_38
    aput-boolean v3, v6, v4

    .line 64
    iget-object v3, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    const/4 v6, 0x2

    if-lez v1, :cond_46

    :goto_3f
    aput-boolean v4, v3, v6

    .line 65
    return-void

    :cond_42
    move v3, v5

    .line 62
    goto :goto_31

    :cond_44
    move v3, v5

    .line 63
    goto :goto_38

    :cond_46
    move v4, v5

    .line 64
    goto :goto_3f
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 2
    .parameter "positiveResult"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 113
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 6
    .parameter "builder"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 71
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0315

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0316

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0317

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    .local v0, mEntries:[Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getValueIndex()V

    .line 80
    iget-object v1, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    new-instance v2, Lcom/android/phone/callsettings/CallStatusTonesPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference$1;-><init>(Lcom/android/phone/callsettings/CallStatusTonesPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    const v1, 0x7f0e02cc

    new-instance v2, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;-><init>(Lcom/android/phone/callsettings/CallStatusTonesPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    return-void
.end method
