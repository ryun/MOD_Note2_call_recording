.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/TimeConsumingPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TimeConsumingPreferenceActivity$1;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private final mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

.field protected mIsForeground:Z

.field protected mIsShowDialog:Z

.field private mResult:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    .line 62
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    return-void
.end method

.method private dismissDialogSafely(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 249
    const-string v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialogSafely, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 251
    const/4 v0, 0x0

    :try_start_1a
    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialog(I)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 258
    :goto_1f
    return-void

    .line 253
    :catch_20
    move-exception v0

    goto :goto_1f
.end method


# virtual methods
.method dumpState()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 270
    const-string v2, "TimeConsumingPreferenceActivity"

    const-string v3, "dumpState begin"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 271
    iget-object v2, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, key:Ljava/lang/String;
    const-string v2, "TimeConsumingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBusyList: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_e

    .line 274
    .end local v1           #key:Ljava/lang/String;
    :cond_33
    const-string v2, "TimeConsumingPreferenceActivity"

    const-string v3, "dumpState end"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 275
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    .line 243
    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    .line 246
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x258

    const/4 v8, 0x0

    const v7, 0x7f0e0087

    const/4 v6, 0x1

    .line 88
    iput-boolean v6, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    .line 90
    const/16 v5, 0x64

    if-eq p1, v5, :cond_12

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_53

    .line 91
    :cond_12
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0e007e

    invoke-virtual {p0, v5}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 95
    sparse-switch p1, :sswitch_data_b8

    move-object v1, v4

    .line 162
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_2c
    return-object v1

    .line 98
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_2d
    invoke-virtual {p0, v6}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setCancelable(Z)V

    .line 99
    invoke-virtual {p0, p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 100
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 101
    const v4, 0x7f0e0080

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 105
    :sswitch_45
    invoke-virtual {p0, v8}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setCancelable(Z)V

    .line 106
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 114
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_53
    const/16 v5, 0x190

    if-eq p1, v5, :cond_61

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_61

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_61

    if-ne p1, v9, :cond_b4

    .line 116
    :cond_61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e007f

    .line 121
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_c2

    .line 141
    const v2, 0x7f0e0084

    .line 143
    .local v2, msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    :goto_78
    invoke-virtual {p0, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 148
    if-eq p1, v9, :cond_87

    .line 149
    const v4, 0x1010355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 151
    :cond_87
    invoke-virtual {p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {p0, v6}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setCancelable(Z)V

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 160
    .local v1, dialog:Landroid/app/AlertDialog;
    goto :goto_2c

    .line 123
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_96
    const v2, 0x7f0e0083

    .line 124
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_78

    .line 127
    .end local v2           #msgId:I
    :sswitch_9f
    const v2, 0x7f0e0086

    .line 129
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_78

    .line 134
    .end local v2           #msgId:I
    :sswitch_a8
    const v2, 0x7f0e033c

    .line 135
    .restart local v2       #msgId:I
    const v3, 0x7f0e02c7

    .line 137
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_78

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_b4
    move-object v1, v4

    .line 162
    goto/16 :goto_2c

    .line 95
    nop

    :sswitch_data_b8
    .sparse-switch
        0x64 -> :sswitch_2d
        0xc8 -> :sswitch_45
    .end sparse-switch

    .line 121
    :sswitch_data_c2
    .sparse-switch
        0x190 -> :sswitch_96
        0x1f4 -> :sswitch_9f
        0x258 -> :sswitch_a8
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .registers 6
    .parameter "preference"
    .parameter "error"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    .line 219
    const-string v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 223
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 224
    iput p2, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    .line 228
    :cond_38
    :goto_38
    return-void

    .line 225
    :cond_39
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-nez v0, :cond_38

    .line 226
    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_38
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .registers 5
    .parameter "preference"
    .parameter "exception"

    .prologue
    .line 232
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_12

    .line 233
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    :goto_11
    return-void

    .line 236
    :cond_12
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_11
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 8
    .parameter "preference"
    .parameter "reading"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 197
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    .line 198
    const-string v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinished, preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 200
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 203
    if-eqz p2, :cond_52

    .line 204
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 208
    :goto_43
    iget v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    if-eq v0, v3, :cond_4e

    .line 209
    iget v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 210
    iput v3, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    .line 213
    :cond_4e
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 214
    return-void

    .line 206
    :cond_52
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_43
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 169
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .registers 6
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    .line 179
    const-string v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted, preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 181
    const-string v0, "cdma_additional_setting_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 193
    :cond_32
    :goto_32
    return-void

    .line 183
    :cond_33
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-nez v0, :cond_32

    .line 186
    if-eqz p2, :cond_48

    .line 187
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_32

    .line 189
    :cond_48
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_32
.end method

.method protected showDialog(I)V
    .registers 3
    .parameter "dialogId"

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    .line 266
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 267
    return-void
.end method
