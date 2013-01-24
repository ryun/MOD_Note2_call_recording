.class public Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "CallSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/phone/callsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    }
.end annotation


# instance fields
.field private isCreatedAndNotStopped:Z

.field private mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 248
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method protected dismissDialog(I)V
    .registers 4
    .parameter "dialogId"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_e

    .line 209
    const-string v0, "CallSettingsPreferenceFragment"

    const-string v1, "Fragment finished. We ignore dismissDialog."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_d
    return-void

    .line 212
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_d
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 345
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 347
    :cond_d
    return-void
.end method

.method protected getActionBar()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 62
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "dialogId"

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 142
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_12

    .line 143
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 147
    :cond_12
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 148
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 389
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 381
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 382
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 386
    :goto_1d
    const/4 v0, 0x1

    goto :goto_b

    .line 384
    :cond_1f
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    goto :goto_1d

    .line 379
    nop

    :pswitch_data_24
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareDialog(I)V
    .registers 2
    .parameter "dialogId"

    .prologue
    .line 183
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 72
    :cond_21
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setCurrentFragment(Landroid/app/Fragment;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 74
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 85
    return-void
.end method

.method protected removeDialog(I)V
    .registers 5
    .parameter "dialogId"

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, mDismissDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 192
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v0, :cond_11

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .end local v1           #mDismissDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 195
    .restart local v1       #mDismissDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    :cond_11
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-ne v1, v2, :cond_2a

    .line 196
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_26

    .line 197
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    .line 199
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 205
    :cond_29
    :goto_29
    return-void

    .line 201
    :cond_2a
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_29

    .line 202
    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_29
.end method

.method protected setCancelable(Z)V
    .registers 3
    .parameter "canCancel"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->setCancelable(Z)V

    .line 246
    :cond_9
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    #setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->access$002(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 224
    :cond_9
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    #setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->access$102(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 235
    :cond_9
    return-void
.end method

.method protected showDialog(I)V
    .registers 7
    .parameter "dialogId"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_e

    .line 154
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "Fragment finished. We ignore showDialog."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_d
    return-void

    .line 157
    :cond_e
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v2, :cond_36

    .line 158
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "Old dialog fragment not null!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 162
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v0, :cond_2a

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .end local v1           #mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 165
    .restart local v1       #mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    :cond_2a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-ne v1, v2, :cond_36

    .line 166
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "But, same dialog. We ignore showDialog command."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 170
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    :cond_36
    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    if-nez v2, :cond_42

    .line 171
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "Fragment is not visible. We ignore showDialog."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 174
    :cond_42
    new-instance v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;-><init>(Lcom/android/phone/callsettings/DialogCreatable;I)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 175
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .registers 13
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "titleRes"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_19

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 358
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 360
    const/4 v1, 0x1

    .line 365
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_18
    return v1

    .line 362
    :cond_19
    const-string v1, "CallSettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, 0x0

    goto :goto_18
.end method
