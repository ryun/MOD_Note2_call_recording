.class public Lcom/android/phone/callsettings/AutoRejectList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;,
        Lcom/android/phone/callsettings/AutoRejectList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final DIALOG_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private defaultName:Ljava/lang/String;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedCount:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

.field private mIsOutgoing:Z

.field private mListView:Landroid/widget/ListView;

.field private mScreenType:I

.field private mSelectedItem:I

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectList;->FROM:[Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 121
    sget-object v0, Lcom/android/phone/callsettings/AutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    .line 124
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->NORMAL_SCREEN:I

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->DELETE_SCREEN:I

    .line 128
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->DIALOG_SCREEN:I

    .line 130
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    .line 142
    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->defaultName:Ljava/lang/String;

    .line 146
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->QUERY_COMPLETE:I

    .line 148
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mUpdateScreen:Z

    .line 152
    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 154
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    .line 156
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mFirstVisibleItem:I

    .line 158
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    .line 160
    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    .line 162
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AutoRejectList$1;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectList$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectList$2;-><init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentObserver:Landroid/database/ContentObserver;

    .line 833
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/callsettings/AutoRejectList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/AutoRejectList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/AutoRejectList;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/AutoRejectList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/callsettings/AutoRejectList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->updateCount()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/AutoRejectList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AutoRejectList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->updateDeleteScreenItems()V

    return-void
.end method

.method private addUnknownItem()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 517
    .local v4, unknownMode:I
    const v6, 0x7f0e0004

    .line 518
    .local v6, resID:I
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 519
    const v6, 0x7f0e073c

    .line 522
    :cond_19
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .registers 7

    .prologue
    const/4 v3, 0x3

    .line 1136
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1138
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1139
    const-string v1, "UPDATE_ID"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1140
    const-string v1, "SELECT_NUMBER"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v1, "MATCH_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v0, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1142
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1143
    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1145
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1146
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e0720

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 1149
    :goto_60
    return-void

    .line 1148
    :cond_61
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e02d7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_60
.end method

.method private deleteAutoRejectNumber(I)V
    .registers 7
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 1115
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1116
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1117
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1161
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1162
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1131
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/AutoRejectList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private hasUnknownItem()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1212
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-eq v1, v0, :cond_a

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private initLayout(Landroid/view/View;)V
    .registers 4
    .parameter "layout"

    .prologue
    .line 352
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    .line 354
    const v0, 0x7f090176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    .line 355
    const v0, 0x7f090178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 356
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectList$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectList$3;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const-string v0, "add_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 368
    const v0, 0x7f090179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->createLayout:Landroid/widget/LinearLayout;

    .line 369
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->createLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectList$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectList$4;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->createLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectList$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectList$5;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectList$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectList$6;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 402
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 1176
    const-string v0, "AutoRejectList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "string"
    .parameter "always"

    .prologue
    .line 1180
    const-string v0, "AutoRejectList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1181
    return-void
.end method

.method private makeScreen()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeScreen : ScreenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;Z)V

    .line 462
    const/4 v9, 0x0

    .line 463
    .local v9, idx:I
    iput v11, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    .line 464
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 465
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 468
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->addUnknownItem()V

    .line 472
    :cond_35
    iput-boolean v11, p0, Lcom/android/phone/callsettings/AutoRejectList;->mUpdateScreen:Z

    .line 473
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v6

    .line 474
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_9d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 476
    :cond_43
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 477
    .local v7, id:J
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, num:Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 479
    .local v4, checked:I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 480
    .local v5, matched:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRejectNum idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checked ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V

    .line 482
    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_43

    .line 486
    .end local v2           #num:Ljava/lang/String;
    .end local v4           #checked:I
    .end local v5           #matched:I
    .end local v7           #id:J
    :cond_9d
    if-eqz v6, :cond_a2

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_a2
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-nez v0, :cond_ca

    .line 490
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :goto_ab
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    if-nez v0, :cond_bc

    .line 506
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    .line 508
    :cond_bc
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->updateCount()V

    .line 510
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->startContactQuery()V

    .line 511
    return-void

    .line 493
    :cond_ca
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_dd

    .line 494
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iput v11, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    .line 496
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->addUnknownItem()V

    goto :goto_ab

    .line 499
    :cond_dd
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_ab
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_66

    move v0, v1

    .line 733
    .local v0, isLand:Z
    :goto_16
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    if-eqz v0, :cond_6e

    .line 734
    :cond_20
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-ne v3, v1, :cond_68

    move v3, v1

    :goto_29
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 735
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    if-lez v3, :cond_6a

    move v3, v1

    :goto_35
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 736
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-ne v4, v1, :cond_6c

    :goto_41
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 738
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 739
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 749
    :goto_53
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    if-nez v0, :cond_a8

    .line 750
    :cond_5d
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 755
    :goto_65
    return-void

    .end local v0           #isLand:Z
    :cond_66
    move v0, v2

    .line 730
    goto :goto_16

    .restart local v0       #isLand:Z
    :cond_68
    move v3, v2

    .line 734
    goto :goto_29

    :cond_6a
    move v3, v2

    .line 735
    goto :goto_35

    :cond_6c
    move v1, v2

    .line 736
    goto :goto_41

    .line 741
    :cond_6e
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-ne v3, v1, :cond_a2

    move v3, v1

    :goto_77
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 742
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    if-lez v3, :cond_a4

    move v3, v1

    :goto_83
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 743
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-ne v4, v1, :cond_a6

    :goto_8f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 745
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 746
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_53

    :cond_a2
    move v3, v2

    .line 741
    goto :goto_77

    :cond_a4
    move v3, v2

    .line 742
    goto :goto_83

    :cond_a6
    move v1, v2

    .line 743
    goto :goto_8f

    .line 752
    :cond_a8
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_65
.end method

.method private startContactQuery()V
    .registers 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    if-nez v0, :cond_30

    .line 241
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;-><init>(Lcom/android/phone/callsettings/AutoRejectList;Lcom/android/phone/callsettings/AutoRejectList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    .line 242
    const-string v0, "AutoRejectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 243
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->start()V

    .line 245
    :cond_30
    return-void
.end method

.method private stopContactQuery()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->interrupt()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectList$QueryThread;

    .line 252
    :cond_c
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .registers 10
    .parameter "string"
    .parameter "checked"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 1121
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1125
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1126
    return-void
.end method

.method private updateCount()V
    .registers 2

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->updateTitleBar()V

    .line 1185
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1186
    return-void
.end method

.method private updateDeleteScreenItems()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1165
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    .line 1167
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1168
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1169
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    .line 1167
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1171
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1173
    return-void
.end method

.method private updateTitleBar()V
    .registers 5

    .prologue
    const v3, 0x7f0e02dd

    .line 1189
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    .line 1191
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1192
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1194
    add-int/lit8 v0, v0, -0x1

    .line 1197
    :cond_14
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1198
    const v0, 0x7f0e0503

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1208
    :goto_2b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1209
    return-void

    .line 1199
    :cond_33
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1200
    const v0, 0x7f0e0502

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 1201
    :cond_43
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_53
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5d

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_65

    .line 1203
    :cond_5d
    const v0, 0x7f0e0720

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 1205
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->autoreject_maxcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method


# virtual methods
.method public addAutoRejectList()V
    .registers 7

    .prologue
    const/4 v3, 0x3

    .line 617
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 618
    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 620
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 621
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e0720

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 624
    :goto_23
    return-void

    .line 623
    :cond_24
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e02d7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_23
.end method

.method public deleteDialog()V
    .registers 5

    .prologue
    .line 568
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02e2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02cc

    new-instance v3, Lcom/android/phone/callsettings/AutoRejectList$12;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectList$12;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02cd

    new-instance v3, Lcom/android/phone/callsettings/AutoRejectList$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectList$11;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 590
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/callsettings/AutoRejectList$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectList$13;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 596
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 597
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 1099
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1101
    packed-switch p1, :pswitch_data_c

    .line 1112
    :cond_6
    :goto_6
    return-void

    .line 1103
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    goto :goto_6

    .line 1101
    nop

    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 600
    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 604
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 605
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 257
    const-string v2, "AutoRejectList"

    const-string v3, "onCreate "

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 258
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_maxcount"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->autoreject_maxcount:I

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->defaultName:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 264
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_4d

    .line 265
    const-string v2, "isOutgoing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArgument : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V

    .line 269
    :cond_4d
    iget-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mIsOutgoing:Z

    if-eqz v2, :cond_6d

    .line 270
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    .line 275
    :goto_55
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 279
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_69

    .line 281
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 283
    :cond_69
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/AutoRejectList;->setHasOptionsMenu(Z)V

    .line 284
    return-void

    .line 272
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_6d
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentURI:Landroid/net/Uri;

    goto :goto_55
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 526
    packed-switch p1, :pswitch_data_64

    .line 564
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 528
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0e02ce

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0e02d0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 534
    .local v2, items:[Ljava/lang/CharSequence;
    const-string v3, "AutoRejectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 538
    new-instance v3, Lcom/android/phone/callsettings/AutoRejectList$9;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectList$9;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 554
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/phone/callsettings/AutoRejectList$10;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectList$10;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_4

    .line 526
    nop

    :pswitch_data_64
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 12
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v8, 0x7f020003

    const v7, 0x7f0e02d0

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 668
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    move v0, v2

    .line 669
    .local v0, cancelOrder:I
    :goto_12
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    move v1, v3

    .line 672
    .local v1, saveOrder:I
    :goto_1b
    const v4, 0x7f0e02cb

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020002

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 674
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 677
    const/4 v4, 0x7

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    const v4, 0x7f0e02cd

    invoke-interface {p1, v2, v6, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 683
    const/4 v4, 0x5

    const v5, 0x7f0e02cd

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 692
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 693
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_96
    move v0, v3

    .line 668
    goto/16 :goto_12

    .restart local v0       #cancelOrder:I
    :cond_99
    move v1, v2

    .line 669
    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 289
    const v1, 0x7f04000f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, v:Landroid/view/View;
    if-eqz p3, :cond_12

    .line 292
    const-string v1, "blacklist_id"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    .line 295
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->initLayout(Landroid/view/View;)V

    .line 296
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V

    .line 298
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 304
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 305
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 759
    sparse-switch p1, :sswitch_data_74

    .line 803
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_8
    return v5

    .line 761
    :sswitch_9
    iget v6, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-ne v6, v5, :cond_4

    .line 762
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    .line 763
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V

    goto :goto_8

    .line 770
    :sswitch_14
    const/4 v2, 0x0

    .line 771
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 772
    .local v4, obj:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/ListView;

    if-eqz v5, :cond_24

    move-object v2, v4

    .line 773
    check-cast v2, Landroid/widget/ListView;

    .line 775
    :cond_24
    if-eqz v2, :cond_4

    .line 776
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 777
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_4

    .line 778
    const v5, 0x7f09002a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 780
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_3d

    .line 781
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_4

    .line 783
    :cond_3d
    const v5, 0x7f09002f

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 785
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 787
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_4

    .line 789
    :cond_58
    const v5, 0x7f090176

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 791
    .restart local v3       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 793
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_4

    .line 759
    nop

    :sswitch_data_74
    .sparse-switch
        0x4 -> :sswitch_9
        0x17 -> :sswitch_14
        0x42 -> :sswitch_14
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 629
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 663
    :goto_7
    return v0

    .line 633
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 663
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 644
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectList;->addAutoRejectList()V

    goto :goto_7

    .line 649
    :pswitch_18
    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    .line 650
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V

    goto :goto_7

    .line 655
    :pswitch_1e
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_7

    .line 660
    :pswitch_22
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_7

    .line 633
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_22
        :pswitch_22
        :pswitch_18
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 345
    const-string v0, "AutoRejectList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 347
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->stopContactQuery()V

    .line 348
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 697
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 701
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 702
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 704
    add-int/lit8 v0, v0, -0x1

    .line 708
    :cond_1a
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_84

    move v1, v2

    :goto_23
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 709
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-nez v1, :cond_86

    move v1, v2

    :goto_2f
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 711
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-nez v1, :cond_88

    move v1, v2

    :goto_3b
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 712
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_8a

    move v1, v2

    :goto_45
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 713
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-nez v1, :cond_8c

    move v1, v2

    :goto_51
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_8e

    move v1, v2

    :goto_5b
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 716
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 717
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList;->createLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_90

    move v1, v2

    :goto_6d
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 718
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    if-nez v1, :cond_92

    .line 719
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    :goto_79
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 726
    :cond_80
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 727
    return-void

    :cond_84
    move v1, v3

    .line 708
    goto :goto_23

    :cond_86
    move v1, v3

    .line 709
    goto :goto_2f

    :cond_88
    move v1, v3

    .line 711
    goto :goto_3b

    :cond_8a
    move v1, v3

    .line 712
    goto :goto_45

    :cond_8c
    move v1, v3

    .line 713
    goto :goto_51

    :cond_8e
    move v1, v3

    .line 714
    goto :goto_5b

    :cond_90
    move v1, v3

    .line 717
    goto :goto_6d

    .line 721
    :cond_92
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_79
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 319
    const-string v0, "AutoRejectList"

    const-string v1, "onResume "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 321
    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mUpdateScreen:Z

    if-eqz v0, :cond_3e

    .line 323
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectList;->removeDialog(I)V

    .line 324
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 325
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I

    .line 328
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 329
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 334
    :cond_30
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->stopContactQuery()V

    .line 335
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V

    .line 336
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mFirstVisibleItem:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 341
    :goto_3d
    return-void

    .line 338
    :cond_3e
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->updateTitleBar()V

    .line 339
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectList;->startContactQuery()V

    goto :goto_3d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    const-string v0, "AutoRejectList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectList$7;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectList$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectList$8;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    return-void
.end method
