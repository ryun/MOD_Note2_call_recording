.class public Lcom/android/phone/callsettings/RejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mEdited:I

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    .line 141
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->istoastshowing:Z

    .line 157
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 501
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    .line 1007
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .registers 10
    .parameter "string"
    .parameter "remindtime"

    .prologue
    const/4 v6, 0x1

    .line 711
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 712
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v4, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 717
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 718
    .local v0, id:J
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .registers 6
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 688
    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_30

    .line 689
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 693
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v2

    .line 704
    :goto_1c
    return v1

    .line 695
    :cond_1d
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v3

    .line 696
    goto :goto_1c

    .line 689
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 699
    .end local v0           #i:I
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_31
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 700
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    move v1, v3

    .line 701
    goto :goto_1c

    .line 699
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_4c
    move v1, v2

    .line 704
    goto :goto_1c
.end method

.method private deleteRejectMessage()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method private deleteRejectMessage(I)V
    .registers 7
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 733
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 734
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 824
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 825
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 750
    const-string v5, "_id desc"

    .line 751
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

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

    .line 246
    const v1, 0x7f0901e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    .line 247
    const v1, 0x7f0901e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    .line 249
    const v1, 0x7f090176

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    .line 250
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    const v1, 0x7f090178

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    .line 253
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 254
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 255
    if-eqz v0, :cond_3f

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_3f
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 260
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 261
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 262
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 266
    :cond_52
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040087

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 269
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 270
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    .line 271
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    :goto_7e
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 290
    const v1, 0x7f090179

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    .line 291
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    :cond_ab
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 329
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 343
    return-void

    .line 273
    :cond_c0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040086

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 274
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7e
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 970
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "message"
    .parameter "always"

    .prologue
    .line 974
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 975
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

    .line 457
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_64

    move v0, v1

    .line 460
    .local v0, isLand:Z
    :goto_17
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 461
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_66

    move v3, v1

    :goto_28
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_68

    move v3, v1

    :goto_34
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 463
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_6a

    :goto_3f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 465
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    :goto_51
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    if-nez v0, :cond_e1

    .line 487
    :cond_5b
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 491
    :goto_63
    return-void

    .end local v0           #isLand:Z
    :cond_64
    move v0, v2

    .line 457
    goto :goto_17

    .restart local v0       #isLand:Z
    :cond_66
    move v3, v2

    .line 461
    goto :goto_28

    :cond_68
    move v3, v2

    .line 462
    goto :goto_34

    :cond_6a
    move v1, v2

    .line 463
    goto :goto_3f

    .line 468
    :cond_6c
    if-eqz v0, :cond_a7

    .line 469
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_a1

    move v3, v1

    :goto_77
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_a3

    move v3, v1

    :goto_83
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 471
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_a5

    :goto_8e
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 474
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51

    :cond_a1
    move v3, v2

    .line 469
    goto :goto_77

    :cond_a3
    move v3, v2

    .line 470
    goto :goto_83

    :cond_a5
    move v1, v2

    .line 471
    goto :goto_8e

    .line 477
    :cond_a7
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_db

    move v3, v1

    :goto_b0
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_dd

    move v3, v1

    :goto_bc
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 479
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_df

    :goto_c8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_51

    :cond_db
    move v3, v2

    .line 477
    goto :goto_b0

    :cond_dd
    move v3, v2

    .line 478
    goto :goto_bc

    :cond_df
    move v1, v2

    .line 479
    goto :goto_c8

    .line 489
    :cond_e1
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_63
.end method

.method private removeTitleBar()V
    .registers 3

    .prologue
    .line 1001
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    .line 1003
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0720

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 1004
    :cond_24
    return-void
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .registers 15
    .parameter "cursor"

    .prologue
    .line 758
    const/4 v3, 0x0

    .line 759
    .local v3, idx:I
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 760
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 761
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 762
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 764
    if-eqz p1, :cond_97

    .line 765
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_97

    .line 767
    :goto_1b
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 768
    .local v1, id:J
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 769
    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9e

    const/4 v5, 0x1

    .line 770
    .local v5, isChanged:Z
    :goto_2d
    const/4 v6, 0x0

    .line 773
    .local v6, message:Ljava/lang/String;
    if-eqz v5, :cond_a0

    .line 774
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 775
    const-string v10, "Edited"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 789
    :goto_3b
    const-string v10, "RejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RejectMsg idx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Reject Message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "isChanged "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 791
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 792
    .local v9, time:I
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 793
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 794
    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 795
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_e8

    move v3, v4

    .line 799
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #isChanged:Z
    .end local v6           #message:Ljava/lang/String;
    .end local v9           #time:I
    .restart local v3       #idx:I
    :cond_97
    const/4 v10, 0x6

    if-le v3, v10, :cond_9d

    .line 801
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage()V

    .line 803
    :cond_9d
    return-void

    .line 769
    .restart local v1       #id:J
    :cond_9e
    const/4 v5, 0x0

    goto :goto_2d

    .line 777
    .restart local v5       #isChanged:Z
    .restart local v6       #message:Ljava/lang/String;
    :cond_a0
    const-wide/16 v10, 0x1

    sub-long v7, v1, v10

    .line 779
    .local v7, stringIdx:J
    const-string v10, "modify_reject_message"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 780
    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v11, v7

    aget-object v0, v10, v11

    .line 785
    .local v0, entryName:Ljava/lang/String;
    :goto_b1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 787
    const-string v10, "RejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3b

    .line 782
    .end local v0           #entryName:Ljava/lang/String;
    :cond_e2
    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v11, v7

    aget-object v0, v10, v11

    .restart local v0       #entryName:Ljava/lang/String;
    goto :goto_b1

    .end local v0           #entryName:Ljava/lang/String;
    .end local v3           #idx:I
    .end local v7           #stringIdx:J
    .restart local v4       #idx:I
    .restart local v9       #time:I
    :cond_e8
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_1b
.end method

.method private updateCount()V
    .registers 2

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    .line 989
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 990
    return-void
.end method

.method private updateDeleteItems()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 978
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 979
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 980
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 981
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 979
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 983
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_34

    :goto_29
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 984
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 985
    return-void

    .line 983
    :cond_34
    const/4 v1, 0x1

    goto :goto_29
.end method

.method private updateItem(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 162
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 163
    if-eqz p1, :cond_51

    .line 164
    const-string v0, "SELECTED_MESSAGE"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 167
    const-string v1, "REMIND_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v0, "RejectCallWithMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remindList.get(mSelectedItem): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_51
    const v5, 0x7f0e02e8

    .line 173
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 174
    const v5, 0x7f0e0720

    .line 177
    :cond_5f
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 178
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 181
    :goto_72
    return-void

    .line 180
    :cond_73
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_72
.end method

.method private updateRejectMessage()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 964
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_28

    const/4 v0, 0x2

    :goto_a
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 966
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 967
    return-void

    :cond_28
    move v0, v1

    .line 964
    goto :goto_a
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .registers 10
    .parameter "string"
    .parameter "rowId"
    .parameter "remindtime"

    .prologue
    const/4 v5, 0x0

    .line 738
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 739
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 740
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string v2, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 744
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method private updateTitleBar()V
    .registers 4

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e02e8

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

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

    .line 996
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 997
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->removeTitleBar()V

    .line 998
    return-void
.end method


# virtual methods
.method public deleteDialog()V
    .registers 4

    .prologue
    .line 920
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cc

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$12;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$12;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02cd

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$11;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$10;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 961
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 828
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 842
    const/4 v2, -0x1

    if-ne p2, v2, :cond_23

    .line 843
    const-string v2, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 844
    const-string v2, "EDITED_MESSAGE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, resultString:Ljava/lang/String;
    const-string v2, "EDITED_REMINDTIME"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 846
    .local v0, resultRemind:I
    const-string v2, "UPDATED"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    .line 847
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    .line 849
    .end local v0           #resultRemind:I
    .end local v1           #resultString:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 494
    const-string v0, "Configuration"

    const-string v1, "changed "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 496
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 498
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 499
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 195
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 199
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setHasOptionsMenu(Z)V

    .line 200
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 852
    packed-switch p1, :pswitch_data_64

    move-object v0, v1

    .line 915
    :goto_6
    return-object v0

    .line 854
    :pswitch_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 855
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0e02ce

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const v0, 0x7f0e02d0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    .line 861
    :try_start_26
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_33
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_26 .. :try_end_33} :catch_48

    .line 867
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$8;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 902
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 903
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$9;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_6

    .line 862
    :catch_48
    move-exception v0

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 864
    goto :goto_6

    .line 852
    nop

    :pswitch_data_64
    .packed-switch 0x64
        :pswitch_7
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

    .line 398
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    move v0, v2

    .line 399
    .local v0, cancelOrder:I
    :goto_12
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    move v1, v3

    .line 402
    .local v1, saveOrder:I
    :goto_1b
    const v4, 0x7f0e02cb

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020002

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 404
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 408
    const/4 v4, 0x7

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    const v4, 0x7f0e02cd

    invoke-interface {p1, v2, v6, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
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

    .line 417
    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 424
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_96
    move v0, v3

    .line 398
    goto/16 :goto_12

    .restart local v0       #cancelOrder:I
    :cond_99
    move v1, v2

    .line 399
    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 205
    const v1, 0x7f040078

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, v:Landroid/view/View;
    if-eqz p3, :cond_12

    .line 208
    const-string v1, "editString"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    .line 211
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V

    .line 213
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 576
    sparse-switch p1, :sswitch_data_8a

    .line 616
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    :goto_7
    return v6

    .line 578
    :sswitch_8
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 580
    const-string v6, "feature_remind_me_later_support "

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 581
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 585
    :goto_1c
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    .line 586
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    const/4 v6, 0x1

    goto :goto_7

    .line 583
    :cond_28
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1c

    .line 590
    :sswitch_30
    const/4 v2, 0x0

    .line 591
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 592
    .local v4, obj:Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ListView;

    if-eqz v6, :cond_40

    move-object v2, v4

    .line 593
    check-cast v2, Landroid/widget/ListView;

    .line 595
    :cond_40
    if-eqz v2, :cond_3

    .line 596
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 597
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 598
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_3

    .line 599
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 600
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_57
    if-ge v3, v0, :cond_3

    .line 601
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 602
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_86

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childView view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto/16 :goto_3

    .line 600
    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 576
    nop

    :sswitch_data_8a
    .sparse-switch
        0x4 -> :sswitch_8
        0x17 -> :sswitch_30
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

    .line 524
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 527
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 570
    :cond_c
    :goto_c
    return v0

    .line 531
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    move v0, v1

    .line 570
    goto :goto_c

    .line 541
    :pswitch_16
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    goto :goto_c

    .line 547
    :pswitch_1a
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v2, v5, :cond_c

    .line 548
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 551
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 552
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 555
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 556
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_c

    .line 562
    :pswitch_3b
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_c

    .line 567
    :pswitch_3f
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_c

    .line 531
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
        :pswitch_3b
        :pswitch_3b
        :pswitch_3f
        :pswitch_3f
        :pswitch_1a
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 242
    const-string v0, "RejectCallWithMsg"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 243
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

    .line 428
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 432
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 435
    :cond_13
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-ge v0, v7, :cond_7e

    move v1, v2

    :goto_1a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 436
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_80

    move v1, v2

    :goto_26
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_82

    move v1, v2

    :goto_30
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 438
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_84

    move v1, v2

    :goto_3c
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_86

    move v1, v2

    :goto_47
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 440
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_88

    move v1, v2

    :goto_54
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 442
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 443
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_8a

    move v1, v2

    :goto_64
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 444
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_8c

    .line 445
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    :goto_70
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    :cond_77
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 453
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->removeTitleBar()V

    .line 454
    return-void

    :cond_7e
    move v1, v3

    .line 435
    goto :goto_1a

    :cond_80
    move v1, v3

    .line 436
    goto :goto_26

    :cond_82
    move v1, v3

    .line 437
    goto :goto_30

    :cond_84
    move v1, v3

    .line 438
    goto :goto_3c

    :cond_86
    move v1, v3

    .line 439
    goto :goto_47

    :cond_88
    move v1, v3

    .line 440
    goto :goto_54

    :cond_8a
    move v1, v3

    .line 443
    goto :goto_64

    .line 447
    :cond_8c
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_70
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 222
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    packed-switch v1, :pswitch_data_46

    .line 233
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_2a

    const/4 v0, 0x2

    :cond_2a
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 237
    :goto_2c
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 238
    return-void

    .line 225
    :pswitch_30
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_42

    .line 226
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_2c

    .line 229
    :cond_42
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_2c

    .line 222
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_30
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 185
    const-string v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .registers 16
    .parameter "resultString"
    .parameter "resultRemind"

    .prologue
    const v12, 0x7f0e034f

    const/16 v11, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 621
    move-object v3, p1

    .line 622
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 624
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4a

    move v5, v6

    :goto_14
    iput v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 628
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 629
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

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 685
    :goto_49
    return-void

    :cond_4a
    move v5, v7

    .line 624
    goto :goto_14

    .line 634
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5a

    .line 635
    invoke-virtual {p0, v12}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_49

    .line 641
    :cond_5a
    const-string v5, " "

    const-string v8, ""

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 642
    invoke-virtual {p0, v12}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_49

    .line 646
    :cond_7a
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const/4 v8, -0x1

    if-le v5, v8, :cond_df

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v5, :cond_df

    .line 647
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 648
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 649
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 650
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 652
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 653
    .local v4, update_id:I
    invoke-direct {p0, v3, v4, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    .line 654
    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 674
    .end local v4           #update_id:I
    :cond_b6
    :goto_b6
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_139

    .line 675
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->notifyDataSetInvalidated()V

    .line 679
    :goto_c3
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d8

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_d8

    .line 680
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 681
    :cond_d8
    iput v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 684
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    goto/16 :goto_49

    .line 657
    :cond_df
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 658
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_b6

    .line 659
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-le v5, v8, :cond_131

    .line 660
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 661
    invoke-direct {p0, v3, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v1

    .line 662
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 663
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 664
    const-string v5, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " message = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 669
    :goto_12d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b6

    .line 667
    :cond_131
    const-string v5, "RejectCallWithMsg"

    const-string v8, "max in saveRejectMessage - no add"

    invoke-static {v5, v8, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_12d

    .line 677
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_139
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_c3
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    return-void
.end method
