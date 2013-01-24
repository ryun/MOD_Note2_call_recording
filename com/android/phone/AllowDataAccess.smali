.class public Lcom/android/phone/AllowDataAccess;
.super Landroid/app/ListActivity;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;,
        Lcom/android/phone/AllowDataAccess$RoamAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private mCurrentMode:I

.field private mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AllowDataAccess;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    return v0
.end method

.method private fillArrays()V
    .registers 7

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 144
    .local v3, set:[Ljava/lang/CharSequence;
    array-length v4, v3

    div-int/lit8 v2, v4, 0x2

    .line 145
    .local v2, len:I
    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    .line 146
    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, k:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    array-length v4, v3

    if-ge v0, v4, :cond_2e

    .line 150
    iget-object v4, p0, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    .line 151
    iget-object v4, p0, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 154
    :cond_2e
    return-void
.end method

.method private getMode()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, isRoam:I
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming_onetime"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, isOnetime:I
    const/4 v2, 0x0

    .line 162
    .local v2, mode:I
    if-ne v1, v6, :cond_1c

    .line 163
    if-ne v0, v6, :cond_1d

    .line 164
    const/4 v2, 0x1

    .line 169
    :cond_1c
    :goto_1c
    return v2

    .line 166
    :cond_1d
    const/4 v2, 0x2

    goto :goto_1c
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v4, "AllowDataAccess"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 63
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->setRequestedOrientation(I)V

    .line 65
    :cond_18
    const v4, 0x7f040003

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e06c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lcom/android/phone/AllowDataAccess;->fillArrays()V

    .line 70
    invoke-direct {p0}, Lcom/android/phone/AllowDataAccess;->getMode()I

    move-result v4

    iput v4, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 73
    .local v3, mListViewRadioButton:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 75
    .local v2, mInflater:Landroid/view/LayoutInflater;
    if-eqz v3, :cond_65

    if-eqz v2, :cond_65

    .line 76
    const v4, 0x7f040040

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 77
    const v4, 0x7f04003e

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 78
    new-instance v4, Lcom/android/phone/AllowDataAccess$RoamAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/phone/AllowDataAccess$RoamAdapter;-><init>(Lcom/android/phone/AllowDataAccess;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    :cond_65
    const v4, 0x7f09000f

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 82
    .local v1, mCancelButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/phone/AllowDataAccess$1;

    invoke-direct {v4, p0}, Lcom/android/phone/AllowDataAccess$1;-><init>(Lcom/android/phone/AllowDataAccess;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v4, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;-><init>(Lcom/android/phone/AllowDataAccess;)V

    iput-object v4, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    const-string v4, "data_roaming_onetime"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    const-string v4, "data_roam_access_notify"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 138
    const-string v0, "AllowDataAccess"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    if-lez p3, :cond_69

    const/4 v2, 0x3

    if-ge p3, v2, :cond_69

    .line 108
    iget-object v2, p0, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, value:I
    const-string v2, "AllowDataAccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick(): position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentMode:value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "data_roam_access_notify"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iget v2, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    if-eq v2, v1, :cond_5d

    .line 116
    packed-switch v1, :pswitch_data_80

    .line 126
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideAllowDataAccess()V

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->finish()V

    .line 134
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #value:I
    :cond_69
    return-void

    .line 118
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v1       #value:I
    :pswitch_6a
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5d

    .line 122
    :pswitch_75
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5d

    .line 116
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_75
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 102
    const-string v0, "AllowDataAccess"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/android/phone/AllowDataAccess;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    .line 104
    return-void
.end method
