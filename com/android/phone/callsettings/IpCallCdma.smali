.class public Lcom/android/phone/callsettings/IpCallCdma;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCallCdma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private ipCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipCallListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mEdited:I

.field private mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ipcall_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/IpCallCdma;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    .line 137
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->istoastshowing:Z

    .line 153
    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    .line 432
    new-instance v0, Lcom/android/phone/callsettings/IpCallCdma$6;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCallCdma$6;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->handler:Landroid/os/Handler;

    .line 890
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpCallCdma;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/IpCallCdma;Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/phone/callsettings/IpCallCdma;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/callsettings/IpCallCdma;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpCallCdma;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpCallCdma;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/IpCallCdma;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->deleteIpNumber(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/IpCallCdma;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V

    return-void
.end method

.method private addIpNumber(Ljava/lang/String;)J
    .registers 9
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 624
    iput v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 625
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 626
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "ipcall_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 629
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 630
    .local v0, id:J
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .registers 6
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 601
    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    if-eqz v1, :cond_32

    .line 602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 606
    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItemForEdit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1f

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    .line 617
    :goto_1e
    return v1

    .line 608
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v3

    .line 609
    goto :goto_1e

    .line 602
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 612
    .end local v0           #i:I
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_33
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 613
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v3

    .line 614
    goto :goto_1e

    .line 612
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4e
    move v1, v2

    .line 617
    goto :goto_1e
.end method

.method private deleteIpNumber()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private deleteIpNumber(I)V
    .registers 7
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 645
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 646
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 736
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 737
    return-void
.end method

.method private getDefaultIpNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_CDMA"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_d

    .line 1000
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "17901"

    goto :goto_c
.end method

.method private getIpNumberList()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 661
    const-string v5, "_id desc"

    .line 662
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCallCdma;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .registers 7
    .parameter "layout"

    .prologue
    const/16 v2, 0x8

    .line 222
    const v1, 0x7f09002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    .line 223
    const v1, 0x7f09015d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    .line 225
    const v1, 0x7f090176

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    .line 226
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    const v1, 0x7f090178

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Landroid/widget/CheckBox;

    .line 229
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 230
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V

    .line 231
    if-eqz v0, :cond_3f

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_3f
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 236
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 237
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 238
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 242
    :cond_52
    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004f

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    .line 243
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040087

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 246
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$1;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 260
    const v1, 0x7f090179

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    .line 261
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$2;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    :cond_a6
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$3;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 295
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 865
    const-string v0, "IpCallCdma"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    move v0, v1

    .line 397
    .local v0, isLand:Z
    :goto_17
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 398
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v5, :cond_54

    move v3, v1

    :goto_28
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    if-lez v3, :cond_56

    move v3, v1

    :goto_34
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 400
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v4, v5, :cond_58

    :goto_3f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    :goto_51
    return-void

    .end local v0           #isLand:Z
    :cond_52
    move v0, v2

    .line 394
    goto :goto_17

    .restart local v0       #isLand:Z
    :cond_54
    move v3, v2

    .line 398
    goto :goto_28

    :cond_56
    move v3, v2

    .line 399
    goto :goto_34

    :cond_58
    move v1, v2

    .line 400
    goto :goto_3f

    .line 405
    :cond_5a
    if-eqz v0, :cond_95

    .line 406
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v5, :cond_8f

    move v3, v1

    :goto_65
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    if-lez v3, :cond_91

    move v3, v1

    :goto_71
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 408
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v4, v5, :cond_93

    :goto_7c
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51

    :cond_8f
    move v3, v2

    .line 406
    goto :goto_65

    :cond_91
    move v3, v2

    .line 407
    goto :goto_71

    :cond_93
    move v1, v2

    .line 408
    goto :goto_7c

    .line 414
    :cond_95
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v5, :cond_c8

    move v3, v1

    :goto_9e
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    if-lez v3, :cond_ca

    move v3, v1

    :goto_aa
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 416
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v4, v5, :cond_cc

    :goto_b6
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51

    :cond_c8
    move v3, v2

    .line 414
    goto :goto_9e

    :cond_ca
    move v3, v2

    .line 415
    goto :goto_aa

    :cond_cc
    move v1, v2

    .line 416
    goto :goto_b6
.end method

.method private saveIpNumber(Ljava/lang/String;)V
    .registers 14
    .parameter "resultString"

    .prologue
    const v11, 0x7f0e0445

    const/16 v10, 0x8

    const/4 v6, 0x2

    const/4 v9, 0x0

    .line 540
    move-object v3, p1

    .line 541
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 543
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v5, 0x1

    :goto_13
    iput v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 547
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0e034b

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    .line 598
    :goto_48
    return-void

    :cond_49
    move v5, v6

    .line 543
    goto :goto_13

    .line 553
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_59

    .line 554
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    goto :goto_48

    .line 560
    :cond_59
    const-string v5, " "

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 561
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    goto :goto_48

    .line 565
    :cond_79
    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v5, v7, :cond_c3

    iget-boolean v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    if-eqz v5, :cond_c3

    .line 566
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 569
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 570
    .local v4, update_id:I
    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList(Ljava/lang/String;I)V

    .line 571
    iput v9, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    .line 590
    .end local v4           #update_id:I
    :cond_a3
    :goto_a3
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 592
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_bd

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_bd

    .line 593
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 594
    :cond_bd
    iput v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 597
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateCount()V

    goto :goto_48

    .line 574
    :cond_c3
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 575
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a3

    .line 576
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v5, v7, :cond_10c

    .line 577
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 578
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->addIpNumber(Ljava/lang/String;)J

    move-result-wide v1

    .line 579
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 580
    const-string v5, "IpCall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a3

    .line 583
    :cond_10c
    const-string v5, "IpCall"

    const-string v7, "max in saveIpNumber - no add"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108
.end method

.method private setDefaultIpNumber(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_CDMA"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 992
    return-void
.end method

.method private showIpNumberList(Landroid/database/Cursor;)V
    .registers 16
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 669
    const/4 v3, 0x0

    .line 670
    .local v3, idx:I
    iput v9, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 671
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 674
    if-eqz p1, :cond_a9

    .line 675
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_a9

    .line 677
    :goto_17
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 678
    .local v1, id:J
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 679
    iget v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    if-ne v11, v9, :cond_b0

    move v5, v9

    .line 680
    .local v5, isChanged:Z
    :goto_27
    const/4 v6, 0x0

    .line 682
    .local v6, message:Ljava/lang/String;
    if-eqz v5, :cond_b3

    .line 683
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 684
    const-string v11, "Edited"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 695
    :goto_33
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, defaultNum:Ljava/lang/String;
    if-eqz v0, :cond_5c

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 697
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default ip num = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 698
    iput-object v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mDefaultIpNumber:Ljava/lang/String;

    .line 699
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->mDefaultIpNumber:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 702
    :cond_5c
    const-string v11, "IpCallCdma"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IpCall idx"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " IP number "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isChanged "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 706
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 707
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_d6

    move v3, v4

    .line 711
    .end local v0           #defaultNum:Ljava/lang/String;
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #isChanged:Z
    .end local v6           #message:Ljava/lang/String;
    .restart local v3       #idx:I
    :cond_a9
    const/4 v9, 0x6

    if-le v3, v9, :cond_af

    .line 713
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->deleteIpNumber()V

    .line 715
    :cond_af
    return-void

    .restart local v1       #id:J
    :cond_b0
    move v5, v10

    .line 679
    goto/16 :goto_27

    .line 686
    .restart local v5       #isChanged:Z
    .restart local v6       #message:Ljava/lang/String;
    :cond_b3
    const-wide/16 v11, 0x1

    sub-long v7, v1, v11

    .line 687
    .local v7, stringIdx:J
    sget-object v11, Lcom/android/phone/callsettings/IpCallCdmaDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v12, v7

    aget-object v6, v11, v12

    .line 692
    const-string v11, "IpCallCdma"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not Edited, Use Default valueIP number = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .end local v3           #idx:I
    .end local v7           #stringIdx:J
    .restart local v0       #defaultNum:Ljava/lang/String;
    .restart local v4       #idx:I
    :cond_d6
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_17
.end method

.method private updateCount()V
    .registers 2

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateTitleBar()V

    .line 880
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 881
    return-void
.end method

.method private updateDeleteItems()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 869
    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    .line 870
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 871
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 872
    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    .line 870
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 874
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_34

    :goto_29
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 875
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 876
    return-void

    .line 874
    :cond_34
    const/4 v1, 0x1

    goto :goto_29
.end method

.method private updateIpNumberList()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 859
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_a

    const/4 v0, 0x2

    :cond_a
    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateCount()V

    .line 862
    return-void
.end method

.method private updateIpNumberList(Ljava/lang/String;I)V
    .registers 9
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 650
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 651
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 652
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ipcall_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 655
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method private updateItem(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    .line 160
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 161
    if-eqz p1, :cond_15

    .line 162
    const-string v0, "SELECTED_ITEM"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    :cond_15
    const-class v0, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0442

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCallCdma;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 167
    return-void
.end method

.method private updateTitleBar()V
    .registers 4

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0442

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 888
    return-void
.end method


# virtual methods
.method public deleteDialog()V
    .registers 4

    .prologue
    .line 818
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cc

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$11;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cd

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$10;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$10;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCallCdma$9;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 856
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 740
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 741
    packed-switch p1, :pswitch_data_5c

    .line 759
    :cond_7
    :goto_7
    return-void

    .line 743
    :pswitch_8
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 744
    const-string v1, "IP_NUMBER_RESULT_Intent"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 746
    const-string v1, "EDITED_ITEM"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, resultString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 748
    const-string v1, "UPDATED"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    .line 749
    const-string v1, "IS_DEFAULT"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 750
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 751
    :cond_40
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->saveIpNumber(Ljava/lang/String;)V

    .line 753
    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004f

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    .line 754
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7

    .line 741
    nop

    :pswitch_data_5c
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 425
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 429
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 175
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 179
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->setHasOptionsMenu(Z)V

    .line 180
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 762
    packed-switch p1, :pswitch_data_62

    .line 813
    :goto_4
    return-object v2

    .line 764
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0e02ce

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0e02d0

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 771
    .local v3, items:[Ljava/lang/CharSequence;
    :try_start_25
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_25 .. :try_end_32} :catch_47

    .line 777
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCallCdma$7;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 801
    .local v2, edad:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$8;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCallCdma$8;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_4

    .line 772
    .end local v2           #edad:Landroid/app/AlertDialog;
    :catch_47
    move-exception v1

    .line 773
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 762
    nop

    :pswitch_data_62
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 10
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0e02cd

    const v5, 0x7f0e02d0

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    const v0, 0x7f0e02cb

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 348
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    invoke-interface {p1, v2, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    const/4 v0, 0x5

    invoke-interface {p1, v2, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    const/4 v0, 0x4

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 363
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 185
    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->initLayout(Landroid/view/View;)V

    .line 189
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 505
    sparse-switch p1, :sswitch_data_70

    .line 535
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_7
    return v5

    .line 507
    :sswitch_8
    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 509
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 510
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V

    .line 511
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    const/4 v5, 0x1

    goto :goto_7

    .line 515
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 516
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_3

    .line 517
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 518
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 519
    .local v1, childView:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 520
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3f
    if-ge v3, v0, :cond_3

    .line 521
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 522
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childView view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_3

    .line 520
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 505
    :sswitch_data_70
    .sparse-switch
        0x4 -> :sswitch_8
        0x17 -> :sswitch_20
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 455
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 458
    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 499
    :cond_c
    :goto_c
    return v0

    .line 462
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    move v0, v1

    .line 499
    goto :goto_c

    .line 472
    :pswitch_16
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->updateItem(Ljava/lang/String;)V

    goto :goto_c

    .line 476
    :pswitch_1a
    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v2, v5, :cond_c

    .line 477
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 480
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 481
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 484
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 485
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V

    goto :goto_c

    .line 491
    :pswitch_3b
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_c

    .line 496
    :pswitch_3f
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_c

    .line 462
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
        :pswitch_3b
        :pswitch_3b
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 218
    const-string v0, "IpCallCdma"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 367
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 371
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 374
    :cond_13
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-ge v0, v7, :cond_63

    move v1, v2

    :goto_1a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 375
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_65

    move v1, v2

    :goto_24
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 377
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v1, v5, :cond_67

    move v1, v2

    :goto_30
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v1, v5, :cond_69

    move v1, v2

    :goto_3c
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 381
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_6b

    move v1, v2

    :goto_4c
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 382
    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v1, v5, :cond_6d

    .line 383
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    :goto_58
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 391
    return-void

    :cond_63
    move v1, v3

    .line 374
    goto :goto_1a

    :cond_65
    move v1, v3

    .line 375
    goto :goto_24

    :cond_67
    move v1, v3

    .line 377
    goto :goto_30

    :cond_69
    move v1, v3

    .line 378
    goto :goto_3c

    :cond_6b
    move v1, v3

    .line 381
    goto :goto_4c

    .line 385
    :cond_6d
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_58
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 198
    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    packed-switch v1, :pswitch_data_46

    .line 209
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_2a

    const/4 v0, 0x2

    :cond_2a
    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 213
    :goto_2c
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateCount()V

    .line 214
    return-void

    .line 201
    :pswitch_30
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_42

    .line 202
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    goto :goto_2c

    .line 205
    :cond_42
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V

    goto :goto_2c

    .line 198
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_30
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCallCdma$4;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCallCdma$5;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void
.end method
