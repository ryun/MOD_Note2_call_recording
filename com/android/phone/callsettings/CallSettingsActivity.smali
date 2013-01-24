.class public Lcom/android/phone/callsettings/CallSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CallSettingsActivity.java"


# instance fields
.field protected mCurrentFragment:Landroid/app/Fragment;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallSettingsActivity;)Landroid/preference/PreferenceActivity$Header;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallSettingsActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private checkAutoReject()Z
    .registers 3

    .prologue
    .line 477
    const-string v0, "com.android.phone.callsettings.AutoRejectList"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "com.android.phone.callsettings.AutoRejectVideoCallList"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 478
    :cond_14
    const-string v0, "checkAutoReject true"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x1

    .line 482
    :goto_1a
    return v0

    .line 481
    :cond_1b
    const-string v0, "checkAutoReject false"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getMetaData()V
    .registers 7

    .prologue
    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 389
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_14

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_15

    .line 406
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_14
    :goto_14
    return-void

    .line 390
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_15
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mTopLevelHeaderId:I

    .line 391
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 394
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.phone.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 397
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 398
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 399
    if-eqz v2, :cond_14

    .line 400
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_14

    .line 403
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_55
    move-exception v3

    goto :goto_14
.end method

.method private highlightHeader()V
    .registers 5

    .prologue
    .line 215
    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mTopLevelHeaderId:I

    if-eqz v1, :cond_2d

    .line 216
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 217
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_2d

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionWithDuration(II)V

    .line 222
    .end local v0           #index:Ljava/lang/Integer;
    :cond_2d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 486
    const-string v0, "CallSettingsActivity"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 147
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .registers 13
    .parameter "className"

    .prologue
    .line 164
    const-string v8, "CallSettingsActivity : switchToParent"

    invoke-static {v8}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_a
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 168
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 170
    .local v6, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_71

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_71

    .line 171
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.phone.FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 173
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 174
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 175
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 176
    iput-object v4, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 178
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 179
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->highlightHeader()V

    .line 181
    new-instance v8, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v8}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 182
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.phone.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 184
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.phone.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 186
    .local v5, parentHeaderTitleRes:I
    if-eqz v5, :cond_60

    .line 187
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 190
    :cond_60
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v8, :cond_71

    .line 191
    iget-object v8, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/phone/callsettings/CallSettingsActivity$2;

    invoke-direct {v10, p0}, Lcom/android/phone/callsettings/CallSettingsActivity$2;-><init>(Lcom/android/phone/callsettings/CallSettingsActivity;)V

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/callsettings/CallSettingsActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_71} :catch_72

    .line 201
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentHeaderTitleRes:I
    .end local v6           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_71
    :goto_71
    return-void

    .line 198
    :catch_72
    move-exception v3

    .line 199
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "CallSettingsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find parent activity : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f0e020e

    const/4 v1, 0x0

    .line 337
    const-string v0, "disable_sip_call_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 338
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 339
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 340
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 341
    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 342
    const-class v2, Lcom/android/phone/callsettings/VoipSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 343
    const-wide/32 v2, 0x7f0e020e

    iput-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 344
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_2f
    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 351
    :goto_3c
    if-ge v2, v3, :cond_55

    .line 352
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v4, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 353
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    :cond_55
    const-string v0, "remove_voicemail_category"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 361
    :goto_62
    if-ge v2, v3, :cond_7b

    .line 362
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v4, Lcom/android/phone/callsettings/VoicemailSettingFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 363
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 370
    :cond_7b
    :goto_7b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a3

    .line 371
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 373
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v2

    .line 375
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 377
    goto :goto_7b

    .line 351
    :cond_9b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3c

    .line 361
    :cond_9f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_62

    .line 378
    :cond_a3
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 226
    const-string v0, "CallSettingsActivity : getIntent"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 232
    const-string v3, "support_split_settings"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "support_split_settings"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v3, "call_block_ui"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->checkAutoReject()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 234
    :cond_30
    if-eqz v0, :cond_5d

    .line 235
    const-string v3, ":android:show_fragment"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_57

    .line 238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 242
    :goto_42
    const-string v3, "intent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 249
    :cond_50
    :goto_50
    const-string v0, ":android:no_headers"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    :cond_56
    return-object v2

    .line 240
    :cond_57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_42

    .line 245
    :cond_5d
    const-string v0, ":android:show_fragment"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_50

    .line 246
    const-string v0, ":android:show_fragment"

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_50
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 259
    const-string v1, "getStartingFragmentClass..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "support_split_settings"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 273
    :cond_22
    :goto_22
    return-object v0

    .line 269
    :cond_23
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    goto :goto_22

    .line 271
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object v0, v1

    .line 273
    goto :goto_22
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-string v0, "onBuildHeaders..."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 327
    const v0, 0x7f06000a

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallSettingsActivity;->updateHeaderList(Ljava/util/List;)V

    .line 331
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    .line 332
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 315
    const-string v1, "onBuildStartFragmentIntent..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 83
    const-string v1, "CallSettingsActivity : onCreate"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 88
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getMetaData()V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "support_split_settings"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 94
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->highlightHeader()V

    .line 97
    const v1, 0x7f0e0057

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->setTitle(I)V

    .line 101
    :cond_32
    if-eqz p1, :cond_48

    .line 102
    const-string v1, "com.android.phone.CURRENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 103
    const-string v1, "com.android.phone.PARENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 107
    :cond_48
    if-eqz p1, :cond_55

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_55

    .line 109
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v5}, Lcom/android/phone/callsettings/CallSettingsActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 112
    :cond_55
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_65

    .line 113
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/phone/callsettings/CallSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallSettingsActivity$1;-><init>(Lcom/android/phone/callsettings/CallSettingsActivity;)V

    invoke-virtual {p0, v1, v5, v2}, Lcom/android/phone/callsettings/CallSettingsActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_65
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_6e

    .line 122
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 127
    :cond_6e
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 128
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 9

    .prologue
    .line 278
    const-string v6, "onGetInitialHeader..."

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 279
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, fragmentClass:Ljava/lang/String;
    if-eqz v2, :cond_71

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader fragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 282
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 283
    .local v3, h:Landroid/preference/PreferenceActivity$Header;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader h.fragment : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 284
    iget-object v6, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 309
    .end local v3           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_57
    return-object v3

    .line 288
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_58
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 289
    .local v4, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 291
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v3, v4

    .line 292
    goto :goto_57

    .line 295
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_71
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, action:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 298
    const-string v6, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 299
    const v6, 0x7f0e0054

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 300
    .local v1, fragTitle:Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader fragTitle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 302
    .restart local v3       #h:Landroid/preference/PreferenceActivity$Header;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetInitialHeader h.title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 303
    iget v6, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ba

    goto/16 :goto_57

    .line 308
    .end local v1           #fragTitle:Ljava/lang/CharSequence;
    .end local v3           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_f0
    const-string v6, "onGetInitialHeader default header"

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    goto/16 :goto_57
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 5
    .parameter "header"
    .parameter "position"

    .prologue
    .line 430
    const-string v1, "onHeaderClick..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 432
    .local v0, currentIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setIntent(Landroid/content/Intent;)V

    .line 434
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 435
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 460
    const-string v1, "onKeyDown..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_1c

    .line 462
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 463
    .local v0, result:Z
    if-eqz v0, :cond_32

    move v1, v2

    .line 468
    .end local v0           #result:Z
    :goto_1b
    return v1

    .line 464
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/ADNList;

    if-eqz v1, :cond_32

    .line 465
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/ADNList;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 466
    .restart local v0       #result:Z
    if-eqz v0, :cond_32

    move v1, v2

    goto :goto_1b

    .line 468
    .end local v0           #result:Z
    :cond_32
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 443
    const-string v1, "onKeyUp..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_1c

    .line 445
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 446
    .local v0, result:Z
    if-eqz v0, :cond_32

    move v1, v2

    .line 451
    .end local v0           #result:Z
    :goto_1b
    return v1

    .line 447
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/ADNList;

    if-eqz v1, :cond_32

    .line 448
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/ADNList;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/ADNList;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 449
    .restart local v0       #result:Z
    if-eqz v0, :cond_32

    move v1, v2

    goto :goto_1b

    .line 451
    .end local v0           #result:Z
    :cond_32
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 210
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 212
    :cond_23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 410
    const-string v1, "onOptionsItemSelected..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_1c

    .line 412
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 413
    .local v0, result:Z
    if-eqz v0, :cond_1c

    move v1, v2

    .line 425
    .end local v0           #result:Z
    :goto_1b
    return v1

    .line 415
    :cond_1c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 425
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1b

    .line 417
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_3b

    .line 418
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_39
    move v1, v2

    .line 422
    goto :goto_1b

    .line 420
    :cond_3b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->finish()V

    goto :goto_39

    .line 415
    nop

    :pswitch_data_40
    .packed-switch 0x102002c
        :pswitch_28
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_e

    .line 136
    const-string v0, "com.android.phone.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    :cond_e
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_19

    .line 139
    const-string v0, "com.android.phone.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    :cond_19
    return-void
.end method

.method public setCurrentFragment(Landroid/app/Fragment;)V
    .registers 2
    .parameter "current"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 473
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 4
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 151
    const-string v0, "CallSettingsActivity : switchToHeader"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_e

    .line 153
    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 154
    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 156
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 157
    return-void
.end method
