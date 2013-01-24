.class public Lcom/android/phone/callsettings/IpCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
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

.field private mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

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

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    .line 139
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->istoastshowing:Z

    .line 155
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 431
    new-instance v0, Lcom/android/phone/callsettings/IpCall$6;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCall$6;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    .line 890
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpCall;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/phone/callsettings/IpCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/IpCall;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/callsettings/IpCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpCall;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/IpCall;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/IpCall;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    return-void
.end method

.method private addIpNumber(Ljava/lang/String;)J
    .registers 9
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 616
    iput v6, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 617
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 618
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "ipcall_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 621
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 622
    .local v0, id:J
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .registers 6
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v1, :cond_32

    .line 594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 598
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1f

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    .line 609
    :goto_1e
    return v1

    .line 600
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v3

    .line 601
    goto :goto_1e

    .line 594
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 604
    .end local v0           #i:I
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_33
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 605
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v3

    .line 606
    goto :goto_1e

    .line 604
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4e
    move v1, v2

    .line 609
    goto :goto_1e
.end method

.method private deleteIpNumber()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method private deleteIpNumber(I)V
    .registers 7
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 637
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 638
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 733
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 734
    return-void
.end method

.method private getDefaultIpNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_d

    .line 1003
    :goto_c
    return-object v0

    .line 1000
    :cond_d
    const-string v0, "ip_call_cmcc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1001
    const-string v0, "17951"

    goto :goto_c

    .line 1003
    :cond_18
    const-string v0, "17911"

    goto :goto_c
.end method

.method private getIpNumberList()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 653
    const-string v5, "_id desc"

    .line 654
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

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

    .line 227
    const v1, 0x7f09002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    .line 228
    const v1, 0x7f09015d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    .line 230
    const v1, 0x7f090176

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    .line 231
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    const v1, 0x7f090178

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/widget/CheckBox;

    .line 234
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 235
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    .line 236
    if-eqz v0, :cond_3f

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_3f
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 241
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 242
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 247
    :cond_52
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004f

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 248
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040087

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 251
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$1;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 265
    const v1, 0x7f090179

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    .line 266
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$2;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    :cond_a6
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$3;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 300
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 865
    const-string v0, "IpCall"

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

    .line 393
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    move v0, v1

    .line 396
    .local v0, isLand:Z
    :goto_17
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 397
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_54

    move v3, v1

    :goto_28
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_56

    move v3, v1

    :goto_34
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 399
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_58

    :goto_3f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    :goto_51
    return-void

    .end local v0           #isLand:Z
    :cond_52
    move v0, v2

    .line 393
    goto :goto_17

    .restart local v0       #isLand:Z
    :cond_54
    move v3, v2

    .line 397
    goto :goto_28

    :cond_56
    move v3, v2

    .line 398
    goto :goto_34

    :cond_58
    move v1, v2

    .line 399
    goto :goto_3f

    .line 404
    :cond_5a
    if-eqz v0, :cond_95

    .line 405
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_8f

    move v3, v1

    :goto_65
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_91

    move v3, v1

    :goto_71
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 407
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_93

    :goto_7c
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51

    :cond_8f
    move v3, v2

    .line 405
    goto :goto_65

    :cond_91
    move v3, v2

    .line 406
    goto :goto_71

    :cond_93
    move v1, v2

    .line 407
    goto :goto_7c

    .line 413
    :cond_95
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_c8

    move v3, v1

    :goto_9e
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_ca

    move v3, v1

    :goto_aa
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 415
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_cc

    :goto_b6
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 417
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51

    :cond_c8
    move v3, v2

    .line 413
    goto :goto_9e

    :cond_ca
    move v3, v2

    .line 414
    goto :goto_aa

    :cond_cc
    move v1, v2

    .line 415
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

    .line 532
    move-object v3, p1

    .line 533
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 535
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v5, 0x1

    :goto_13
    iput v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 539
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 540
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

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    .line 590
    :goto_48
    return-void

    :cond_49
    move v5, v6

    .line 535
    goto :goto_13

    .line 545
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_59

    .line 546
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    goto :goto_48

    .line 552
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

    .line 553
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    goto :goto_48

    .line 557
    :cond_79
    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v5, v7, :cond_c3

    iget-boolean v5, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v5, :cond_c3

    .line 558
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 562
    .local v4, update_id:I
    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Ljava/lang/String;I)V

    .line 563
    iput v9, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 582
    .end local v4           #update_id:I
    :cond_a3
    :goto_a3
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 584
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_bd

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_bd

    .line 585
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 586
    :cond_bd
    iput v6, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 589
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    goto :goto_48

    .line 566
    :cond_c3
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 567
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a3

    .line 568
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v5, v7, :cond_10c

    .line 569
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 570
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->addIpNumber(Ljava/lang/String;)J

    move-result-wide v1

    .line 571
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 572
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

    .line 577
    :goto_108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a3

    .line 575
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
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

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

    .line 661
    const/4 v3, 0x0

    .line 662
    .local v3, idx:I
    iput v9, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 663
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 664
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 666
    if-eqz p1, :cond_a9

    .line 667
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_a9

    .line 669
    :goto_17
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 670
    .local v1, id:J
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 671
    iget v11, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    if-ne v11, v9, :cond_b0

    move v5, v9

    .line 672
    .local v5, isChanged:Z
    :goto_27
    const/4 v6, 0x0

    .line 674
    .local v6, message:Ljava/lang/String;
    if-eqz v5, :cond_b3

    .line 675
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 676
    const-string v11, "Edited"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 692
    :goto_33
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, defaultNum:Ljava/lang/String;
    if-eqz v0, :cond_5c

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 694
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default ip num = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 695
    iput-object v6, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    .line 696
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 699
    :cond_5c
    const-string v11, "IpCall"

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

    .line 702
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 703
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 704
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_f2

    move v3, v4

    .line 708
    .end local v0           #defaultNum:Ljava/lang/String;
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #isChanged:Z
    .end local v6           #message:Ljava/lang/String;
    .restart local v3       #idx:I
    :cond_a9
    const/4 v9, 0x6

    if-le v3, v9, :cond_af

    .line 710
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber()V

    .line 712
    :cond_af
    return-void

    .restart local v1       #id:J
    :cond_b0
    move v5, v10

    .line 671
    goto/16 :goto_27

    .line 678
    .restart local v5       #isChanged:Z
    .restart local v6       #message:Ljava/lang/String;
    :cond_b3
    const-wide/16 v11, 0x1

    sub-long v7, v1, v11

    .line 679
    .local v7, stringIdx:J
    const-string v11, "ip_call_cmcc"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_de

    .line 680
    sget-object v11, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCMCC:[Ljava/lang/String;

    long-to-int v12, v7

    aget-object v6, v11, v12

    .line 689
    :goto_c4
    const-string v11, "IpCall"

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

    .line 681
    :cond_de
    const-string v11, "feature_ctc"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 682
    sget-object v11, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCTC:[Ljava/lang/String;

    long-to-int v12, v7

    aget-object v6, v11, v12

    goto :goto_c4

    .line 684
    :cond_ec
    sget-object v11, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v12, v7

    aget-object v6, v11, v12

    goto :goto_c4

    .end local v3           #idx:I
    .end local v7           #stringIdx:J
    .restart local v0       #defaultNum:Ljava/lang/String;
    .restart local v4       #idx:I
    :cond_f2
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_17
.end method

.method private updateCount()V
    .registers 2

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    .line 880
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getFragmentManager()Landroid/app/FragmentManager;

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
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 870
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 871
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 872
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 870
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 874
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_34

    :goto_29
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 875
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getFragmentManager()Landroid/app/FragmentManager;

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
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_a

    const/4 v0, 0x2

    :cond_a
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    .line 862
    return-void
.end method

.method private updateIpNumberList(Ljava/lang/String;I)V
    .registers 9
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 642
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 643
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 644
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ipcall_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 647
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private updateItem(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 162
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 163
    if-eqz p1, :cond_24

    .line 164
    const-string v0, "SELECTED_ITEM"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 167
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    :cond_24
    const-string v0, "IP_CALL_LIST_SIZE"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-class v0, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0442

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCall;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 172
    return-void
.end method

.method private updateTitleBar()V
    .registers 4

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0442

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getResources()Landroid/content/res/Resources;

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

    new-instance v2, Lcom/android/phone/callsettings/IpCall$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$11;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cd

    new-instance v2, Lcom/android/phone/callsettings/IpCall$10;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$10;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCall$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$9;-><init>(Lcom/android/phone/callsettings/IpCall;)V

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

    .line 737
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 738
    packed-switch p1, :pswitch_data_5c

    .line 756
    :cond_7
    :goto_7
    return-void

    .line 740
    :pswitch_8
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 741
    const-string v1, "IP_NUMBER_RESULT_Intent"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 743
    const-string v1, "EDITED_ITEM"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
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

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 745
    const-string v1, "UPDATED"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 746
    const-string v1, "IS_DEFAULT"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 747
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 748
    :cond_40
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    .line 750
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004f

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 751
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7

    .line 738
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
    .line 424
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 428
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 429
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 184
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpCall;->setHasOptionsMenu(Z)V

    .line 185
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 759
    packed-switch p1, :pswitch_data_62

    .line 813
    :goto_4
    return-object v2

    .line 761
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0e02ce

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0e02d0

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 768
    .local v3, items:[Ljava/lang/CharSequence;
    :try_start_25
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_25 .. :try_end_32} :catch_47

    .line 774
    new-instance v4, Lcom/android/phone/callsettings/IpCall$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCall$7;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 801
    .local v2, edad:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/phone/callsettings/IpCall$8;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCall$8;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_4

    .line 769
    .end local v2           #edad:Landroid/app/AlertDialog;
    :catch_47
    move-exception v1

    .line 770
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 759
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

    .line 345
    const v0, 0x7f0e02cb

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 347
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 350
    invoke-interface {p1, v2, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    const/4 v0, 0x5

    invoke-interface {p1, v2, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    const/4 v0, 0x4

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 357
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 362
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 190
    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->initLayout(Landroid/view/View;)V

    .line 194
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 495
    sparse-switch p1, :sswitch_data_72

    .line 527
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_7
    return v5

    .line 497
    :sswitch_8
    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 499
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    .line 501
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    const/4 v5, 0x1

    goto :goto_7

    .line 505
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 506
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_3

    .line 507
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 508
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 509
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_3

    .line 510
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 511
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_41
    if-ge v3, v0, :cond_3

    .line 512
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 513
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childView view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_3

    .line 511
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 495
    :sswitch_data_72
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

    .line 454
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 457
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 489
    :cond_c
    :goto_c
    return v0

    .line 461
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    move v0, v1

    .line 489
    goto :goto_c

    .line 463
    :pswitch_16
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/IpCall;->updateItem(Ljava/lang/String;)V

    goto :goto_c

    .line 467
    :pswitch_1a
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v2, v5, :cond_c

    .line 468
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 472
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 475
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    goto :goto_c

    .line 481
    :pswitch_3b
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_c

    .line 486
    :pswitch_3f
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_c

    .line 461
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
    .line 222
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 223
    const-string v0, "IpCall"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
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

    .line 366
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 370
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 373
    :cond_13
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-ge v0, v7, :cond_63

    move v1, v2

    :goto_1a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 374
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_65

    move v1, v2

    :goto_24
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 376
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v1, v5, :cond_67

    move v1, v2

    :goto_30
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v1, v5, :cond_69

    move v1, v2

    :goto_3c
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 380
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_6b

    move v1, v2

    :goto_4c
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 381
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v1, v5, :cond_6d

    .line 382
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    :goto_58
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 390
    return-void

    :cond_63
    move v1, v3

    .line 373
    goto :goto_1a

    :cond_65
    move v1, v3

    .line 374
    goto :goto_24

    :cond_67
    move v1, v3

    .line 376
    goto :goto_30

    :cond_69
    move v1, v3

    .line 377
    goto :goto_3c

    :cond_6b
    move v1, v3

    .line 380
    goto :goto_4c

    .line 384
    :cond_6d
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_58
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 203
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    packed-switch v1, :pswitch_data_46

    .line 214
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_2a

    const/4 v0, 0x2

    :cond_2a
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 218
    :goto_2c
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    .line 219
    return-void

    .line 206
    :pswitch_30
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_42

    .line 207
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    goto :goto_2c

    .line 210
    :cond_42
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    goto :goto_2c

    .line 203
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_30
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$4;-><init>(Lcom/android/phone/callsettings/IpCall;)V

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
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$5;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void
.end method
