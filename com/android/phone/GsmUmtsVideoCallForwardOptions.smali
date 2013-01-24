.class public Lcom/android/phone/GsmUmtsVideoCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsVideoCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsLaunchFromWidget:Z

.field private mPreferences:Ljava/util/ArrayList;
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
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 41
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_18

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 61
    iput v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 64
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    return-void

    :cond_18
    move v0, v1

    .line 41
    goto :goto_a
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .registers 9
    .parameter "preference"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAdded()Z

    move-result v0

    if-nez v0, :cond_e

    .line 214
    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_d
    :goto_d
    return-void

    .line 217
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 218
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_17
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 219
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_34

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_d

    .line 218
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

    .line 169
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_d
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1c

    .line 171
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1b
    :goto_1b
    return-void

    .line 174
    :cond_1c
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_3a

    .line 177
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, query return null"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 180
    :cond_3a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 181
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_4b

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_4b
    :goto_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 183
    :cond_4f
    packed-switch p1, :pswitch_data_7c

    goto :goto_4b

    .line 185
    :pswitch_53
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_4b

    .line 188
    :pswitch_5d
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_4b

    .line 191
    :pswitch_67
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_4b

    .line 194
    :pswitch_71
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_4b

    .line 183
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_5d
        :pswitch_67
        :pswitch_71
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f06003a

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_13

    .line 76
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 80
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_vcfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 81
    const-string v2, "button_vcfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 82
    const-string v2, "button_vcfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 83
    const-string v2, "button_vcfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 85
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 86
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 87
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 88
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 90
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    .line 96
    iput-object p1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 100
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 7
    .parameter "preference"
    .parameter "reading"

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-nez v1, :cond_11

    .line 146
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "GsmUmtsVideoCallForwardOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_10
    :goto_10
    return-void

    .line 150
    :cond_11
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3a

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 151
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 152
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, p0, v3}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 164
    :cond_36
    :goto_36
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_10

    .line 153
    :cond_3a
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_36

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_36

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 157
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, changedIntent:Landroid/content/Intent;
    const-string v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 161
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_36
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 234
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_41

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_41

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->finish()V

    .line 243
    const/4 v2, 0x1

    .line 245
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

    .line 104
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 106
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    if-eqz v4, :cond_29

    .line 107
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_2a

    .line 108
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_18

    const-string v4, "GsmUmtsVideoCallForwardOptions"

    const-string v5, "start to init "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_18
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 123
    :cond_25
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    .line 124
    iput-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 126
    :cond_29
    return-void

    .line 111
    :cond_2a
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 113
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreference;

    .line 114
    .local v3, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 115
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 116
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 117
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 118
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 119
    invoke-virtual {v3, v1, v7}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 120
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_38
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

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

    .line 133
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_39

    .line 136
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    :cond_39
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_9

    .line 141
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_41
    return-void
.end method
