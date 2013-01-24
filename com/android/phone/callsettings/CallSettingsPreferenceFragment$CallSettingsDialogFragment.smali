.class public Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "CallSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallSettingsDialogFragment"
.end annotation


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 261
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/callsettings/DialogCreatable;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 264
    iput p2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mDialogId:I

    .line 265
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_28

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_28
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 270
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 312
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_c

    .line 313
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 315
    :cond_c
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 283
    if-eqz p1, :cond_50

    .line 284
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mDialogId:I

    .line 285
    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 286
    if-le v0, v2, :cond_43

    .line 287
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 288
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/phone/callsettings/DialogCreatable;

    if-nez v0, :cond_43

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_parent_fragment_id must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/DialogCreatable;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_43
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v0, :cond_50

    .line 297
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    #setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-static {v0, p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->access$202(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 300
    :cond_50
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/DialogCreatable;

    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mDialogId:I

    invoke-interface {v0, v1}, Lcom/android/phone/callsettings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .registers 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 334
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v0, :cond_1b

    .line 336
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    #getter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->access$200(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_1b

    .line 337
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->access$202(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 340
    :cond_1b
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 320
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 323
    :cond_c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_19

    .line 276
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    :cond_19
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 5
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/DialogCreatable;

    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mDialogId:I

    invoke-interface {v0, v1}, Lcom/android/phone/callsettings/DialogCreatable;->onPrepareDialog(I)V

    .line 306
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 307
    return-void
.end method
