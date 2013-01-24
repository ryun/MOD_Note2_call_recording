.class public Lcom/android/phone/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsLaunchFromWidget:Z

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 63
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .registers 9
    .parameter "preference"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAdded()Z

    move-result v0

    if-nez v0, :cond_e

    .line 237
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_d
    :goto_d
    return-void

    .line 240
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 241
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_17
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 242
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_34

    .line 243
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_d

    .line 241
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 197
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, -0x1

    if-eq p2, v0, :cond_14

    .line 199
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_13
    return-void

    .line 202
    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_34

    .line 205
    :cond_2c
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 209
    :cond_34
    packed-switch p1, :pswitch_data_60

    goto :goto_13

    .line 211
    :pswitch_38
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_13

    .line 214
    :pswitch_42
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_13

    .line 217
    :pswitch_4c
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_13

    .line 220
    :pswitch_56
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_13

    .line 209
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_38
        :pswitch_42
        :pswitch_4c
        :pswitch_56
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 92
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_cfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 93
    const-string v2, "button_cfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 94
    const-string v2, "button_cfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 95
    const-string v2, "button_cfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 97
    const-string v2, "default_vm_in_callforwarding"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 98
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 99
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 100
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 109
    :goto_62
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iput-boolean v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 119
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 124
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_9c

    .line 126
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    :cond_9c
    return-void

    .line 103
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_9d
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 104
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 105
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 106
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    goto :goto_62
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 7
    .parameter "preference"
    .parameter "reading"

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-nez v1, :cond_d

    .line 174
    const-string v1, "GsmUmtsCallForwardOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_c
    return-void

    .line 178
    :cond_d
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_36

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_36

    .line 179
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 180
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 192
    :cond_32
    :goto_32
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_c

    .line 181
    :cond_36
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_32

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_32

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 185
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, changedIntent:Landroid/content/Intent;
    const-string v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_32
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 6
    .parameter "preference"

    .prologue
    .line 72
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 73
    .local v0, Phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, vmDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 77
    const/4 v2, 0x0

    .line 82
    :goto_11
    return-object v2

    .line 81
    :cond_12
    const-string v2, "GsmUmtsCallForwardOptions"

    const-string v3, "updating default for call forwarding dialogs"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0055

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 257
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_41

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_41

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->finish()V

    .line 266
    const/4 v2, 0x1

    .line 268
    .end local v0           #intent:Landroid/content/Intent;
    :goto_40
    return v2

    :cond_41
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_40
.end method

.method public onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 132
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 134
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    if-eqz v4, :cond_25

    .line 135
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_26

    .line 136
    const-string v4, "GsmUmtsCallForwardOptions"

    const-string v5, "start to init "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 151
    :cond_21
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 152
    iput-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 154
    :cond_25
    return-void

    .line 139
    :cond_26
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 141
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreference;

    .line 142
    .local v3, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 143
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 144
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 145
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 146
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 147
    invoke-virtual {v3, v1, v7}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 148
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_34
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    .line 161
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_39

    .line 164
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    :cond_39
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_9

    .line 169
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_41
    return-void
.end method
