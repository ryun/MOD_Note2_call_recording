.class public Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;
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

.field private contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private defaultName:Ljava/lang/String;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedCount:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

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
    .line 103
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

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 120
    sget-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    .line 123
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->NORMAL_SCREEN:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->DELETE_SCREEN:I

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->DIALOG_SCREEN:I

    .line 129
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 141
    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    .line 145
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->QUERY_COMPLETE:I

    .line 147
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    .line 151
    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 153
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 155
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    .line 157
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateDeleteScreenItems()V

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .registers 7

    .prologue
    const/4 v3, 0x3

    .line 1098
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1100
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1101
    const-string v1, "UPDATE_ID"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1102
    const-string v1, "SELECT_NUMBER"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v1, "MATCH_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1106
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1107
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e0720

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 1110
    :goto_59
    return-void

    .line 1109
    :cond_5a
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e02d7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_59
.end method

.method private deleteAutoRejectNumber(I)V
    .registers 7
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 1077
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1078
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1122
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1123
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1093
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .registers 4
    .parameter "layout"

    .prologue
    .line 334
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    .line 336
    const v0, 0x7f090176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    .line 337
    const v0, 0x7f090178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 338
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const-string v0, "add_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 350
    const v0, 0x7f090179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    .line 351
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$4;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 384
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 1137
    const-string v0, "AutoRejectVideoCallList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "string"
    .parameter "always"

    .prologue
    .line 1141
    const-string v0, "AutoRejectVideoCallList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1142
    return-void
.end method

.method private makeScreen()V
    .registers 16

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeScreen : ScreenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    .line 444
    const/4 v14, 0x0

    .line 445
    .local v14, idx:I
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 446
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 447
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-nez v0, :cond_4c

    .line 450
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_videocall_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 452
    .local v4, unknownMode:I
    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    const v1, 0x7f0e0004

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v4           #unknownMode:I
    :cond_4c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    .line 458
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v11

    .line 459
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_b8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 461
    :cond_5b
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 462
    .local v12, id:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, num:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 464
    .local v9, checked:I
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 465
    .local v10, matched:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRejectNum idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checked ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 471
    .end local v7           #num:Ljava/lang/String;
    .end local v9           #checked:I
    .end local v10           #matched:I
    .end local v12           #id:J
    :cond_b8
    if-eqz v11, :cond_bd

    .line 472
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_bd
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-nez v0, :cond_e7

    .line 475
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    :goto_c8
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    if-nez v0, :cond_d9

    .line 484
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    .line 486
    :cond_d9
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 487
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateCount()V

    .line 488
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startContactQuery()V

    .line 489
    return-void

    .line 478
    :cond_e7
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_c8
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

    .line 692
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_66

    move v0, v1

    .line 695
    .local v0, isLand:Z
    :goto_16
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    if-eqz v0, :cond_6e

    .line 696
    :cond_20
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v3, v1, :cond_68

    move v3, v1

    :goto_29
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 697
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    if-lez v3, :cond_6a

    move v3, v1

    :goto_35
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 698
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v4, v1, :cond_6c

    :goto_41
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 700
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 701
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 711
    :goto_53
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    if-nez v0, :cond_a8

    .line 712
    :cond_5d
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 717
    :goto_65
    return-void

    .end local v0           #isLand:Z
    :cond_66
    move v0, v2

    .line 692
    goto :goto_16

    .restart local v0       #isLand:Z
    :cond_68
    move v3, v2

    .line 696
    goto :goto_29

    :cond_6a
    move v3, v2

    .line 697
    goto :goto_35

    :cond_6c
    move v1, v2

    .line 698
    goto :goto_41

    .line 703
    :cond_6e
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v3, v1, :cond_a2

    move v3, v1

    :goto_77
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    if-lez v3, :cond_a4

    move v3, v1

    :goto_83
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 705
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v4, v1, :cond_a6

    :goto_8f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 707
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 708
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_53

    :cond_a2
    move v3, v2

    .line 703
    goto :goto_77

    :cond_a4
    move v3, v2

    .line 704
    goto :goto_83

    :cond_a6
    move v1, v2

    .line 705
    goto :goto_8f

    .line 714
    :cond_a8
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_65
.end method

.method private startContactQuery()V
    .registers 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    if-nez v0, :cond_30

    .line 236
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    .line 237
    const-string v0, "AutoRejectVideoCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 238
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->start()V

    .line 240
    :cond_30
    return-void
.end method

.method private stopContactQuery()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    if-eqz v0, :cond_c

    .line 244
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->interrupt()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    .line 247
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

    .line 1083
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1087
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private updateCount()V
    .registers 2

    .prologue
    .line 1145
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateTitleBar()V

    .line 1146
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1147
    return-void
.end method

.method private updateDeleteScreenItems()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1126
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 1128
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1129
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1130
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 1128
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1132
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1134
    return-void
.end method

.method private updateTitleBar()V
    .registers 4

    .prologue
    const v2, 0x7f0e0504

    .line 1150
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    .line 1152
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1153
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-nez v1, :cond_12

    .line 1155
    add-int/lit8 v0, v0, -0x1

    .line 1158
    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1161
    return-void
.end method


# virtual methods
.method public addAutoRejectList()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 582
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 583
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e0720

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 586
    :goto_18
    return-void

    .line 585
    :cond_19
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0e02d7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_18
.end method

.method public deleteDialog()V
    .registers 5

    .prologue
    .line 534
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

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

    new-instance v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02cd

    new-instance v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$11;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 556
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$13;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 562
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 563
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 1061
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1063
    packed-switch p1, :pswitch_data_c

    .line 1074
    :cond_6
    :goto_6
    return-void

    .line 1065
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    goto :goto_6

    .line 1063
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
    .line 566
    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 570
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 571
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 252
    const-string v1, "AutoRejectVideoCallList"

    const-string v2, "onCreate "

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 253
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 261
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3a

    .line 263
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 265
    :cond_3a
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->setHasOptionsMenu(Z)V

    .line 266
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 492
    packed-switch p1, :pswitch_data_64

    .line 530
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 494
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0e02ce

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0e02d0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 500
    .local v2, items:[Ljava/lang/CharSequence;
    const-string v3, "AutoRejectVideoCallList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 520
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_4

    .line 492
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

    .line 630
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    move v0, v2

    .line 631
    .local v0, cancelOrder:I
    :goto_12
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    move v1, v3

    .line 634
    .local v1, saveOrder:I
    :goto_1b
    const v4, 0x7f0e02cb

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020002

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 636
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 639
    const/4 v4, 0x7

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 643
    const v4, 0x7f0e02cd

    invoke-interface {p1, v2, v6, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
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

    .line 648
    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 650
    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 654
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 655
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_96
    move v0, v3

    .line 630
    goto/16 :goto_12

    .restart local v0       #cancelOrder:I
    :cond_99
    move v1, v2

    .line 631
    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 271
    const v1, 0x7f04000f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, v:Landroid/view/View;
    if-eqz p3, :cond_12

    .line 274
    const-string v1, "blacklist_id"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    .line 277
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V

    .line 278
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    .line 280
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 721
    sparse-switch p1, :sswitch_data_74

    .line 765
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_8
    return v5

    .line 723
    :sswitch_9
    iget v6, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v6, v5, :cond_4

    .line 724
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 725
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    goto :goto_8

    .line 732
    :sswitch_14
    const/4 v2, 0x0

    .line 733
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 734
    .local v4, obj:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/ListView;

    if-eqz v5, :cond_24

    move-object v2, v4

    .line 735
    check-cast v2, Landroid/widget/ListView;

    .line 737
    :cond_24
    if-eqz v2, :cond_4

    .line 738
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 739
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_4

    .line 740
    const v5, 0x7f09002a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 742
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_3d

    .line 743
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_4

    .line 745
    :cond_3d
    const v5, 0x7f09002f

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 747
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 749
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_4

    .line 751
    :cond_58
    const v5, 0x7f090176

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 753
    .restart local v3       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 755
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_4

    .line 721
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

    .line 591
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 625
    :goto_7
    return v0

    .line 595
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 625
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 606
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->addAutoRejectList()V

    goto :goto_7

    .line 611
    :pswitch_18
    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 612
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    goto :goto_7

    .line 617
    :pswitch_1e
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_7

    .line 622
    :pswitch_22
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_7

    .line 595
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
    .line 326
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 327
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 329
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    .line 330
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

    .line 659
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    .line 663
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 664
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-nez v1, :cond_18

    .line 666
    add-int/lit8 v0, v0, -0x1

    .line 670
    :cond_18
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_82

    move v1, v2

    :goto_21
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 671
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_84

    move v1, v2

    :goto_2d
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 673
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_86

    move v1, v2

    :goto_39
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 674
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_88

    move v1, v2

    :goto_43
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 675
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_8a

    move v1, v2

    :goto_4f
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_8c

    move v1, v2

    :goto_59
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 678
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 679
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_8e

    move v1, v2

    :goto_6b
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 680
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_90

    .line 681
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    :goto_77
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    :cond_7e
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 689
    return-void

    :cond_82
    move v1, v3

    .line 670
    goto :goto_21

    :cond_84
    move v1, v3

    .line 671
    goto :goto_2d

    :cond_86
    move v1, v3

    .line 673
    goto :goto_39

    :cond_88
    move v1, v3

    .line 674
    goto :goto_43

    :cond_8a
    move v1, v3

    .line 675
    goto :goto_4f

    :cond_8c
    move v1, v3

    .line 676
    goto :goto_59

    :cond_8e
    move v1, v3

    .line 679
    goto :goto_6b

    .line 683
    :cond_90
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_77
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 301
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onResume "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 303
    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    if-eqz v0, :cond_3e

    .line 305
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->removeDialog(I)V

    .line 306
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 307
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 310
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 311
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 316
    :cond_30
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    .line 317
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    .line 318
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 323
    :goto_3d
    return-void

    .line 320
    :cond_3e
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateTitleBar()V

    .line 321
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startContactQuery()V

    goto :goto_3d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method
