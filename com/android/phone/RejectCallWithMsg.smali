.class public Lcom/android/phone/RejectCallWithMsg;
.super Landroid/app/Activity;
.source "RejectCallWithMsg.java"


# static fields
.field private static final DBG:Z

.field private static FROM:[Ljava/lang/String;

.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private rejectMsgList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-le v0, v1, :cond_29

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/phone/RejectCallWithMsg;->DBG:Z

    .line 68
    const-string v0, "content://com.android.phone.callsettings/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void

    :cond_29
    move v0, v2

    .line 57
    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    .line 61
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 62
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsg;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f040071

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsg;->setContentView(I)V

    .line 82
    const v2, 0x7f0901d5

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, parentIntent:Landroid/content/Intent;
    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    .line 90
    const/high16 v0, 0x8

    .line 91
    .local v0, flags:I
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .registers 18

    .prologue
    .line 99
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 105
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/RejectCallWithMsg$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/RejectCallWithMsg$1;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v6, "_id desc"

    .line 122
    .local v6, sortOrder:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    .local v7, cur:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 126
    .local v14, rejectMessage:Ljava/lang/String;
    if-nez v7, :cond_41

    .line 127
    const-string v2, "RejectCallWithMsg"

    const-string v3, "rejectmsg cursor is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_40
    return-void

    .line 132
    :cond_41
    :try_start_41
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 134
    :cond_47
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 135
    .local v11, id:J
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 136
    .local v9, edited:I
    const/4 v2, 0x1

    if-ne v9, v2, :cond_ac

    const/4 v13, 0x1

    .line 137
    .local v13, isChanged:Z
    :goto_55
    if-eqz v13, :cond_ae

    .line 138
    sget-boolean v2, Lcom/android/phone/RejectCallWithMsg;->DBG:Z

    if-eqz v2, :cond_62

    const-string v2, "RejectCallWithMsg"

    const-string v3, "Edited"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_62
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 154
    :cond_67
    :goto_67
    if-eqz v14, :cond_70

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_70
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_47

    .line 159
    .end local v9           #edited:I
    .end local v11           #id:J
    .end local v13           #isChanged:Z
    :cond_76
    const v2, 0x7f0901de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/RejectCallWithMsg$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/RejectCallWithMsg$2;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_a8
    .catchall {:try_start_41 .. :try_end_a8} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_a8} :catch_f7

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 136
    .restart local v9       #edited:I
    .restart local v11       #id:J
    :cond_ac
    const/4 v13, 0x0

    goto :goto_55

    .line 141
    .restart local v13       #isChanged:Z
    :cond_ae
    const-wide/16 v2, 0x1

    sub-long v15, v11, v2

    .line 143
    .local v15, stringIdx:J
    :try_start_b2
    const-string v2, "modify_reject_message"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 144
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v3, v15

    aget-object v10, v2, v3

    .line 148
    .local v10, entryName:Ljava/lang/String;
    :goto_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v10, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    sget-boolean v2, Lcom/android/phone/RejectCallWithMsg;->DBG:Z

    if-eqz v2, :cond_67

    const-string v2, "RejectCallWithMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_b2 .. :try_end_f5} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_f5} :catch_f7

    goto/16 :goto_67

    .line 197
    .end local v9           #edited:I
    .end local v10           #entryName:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #isChanged:Z
    .end local v15           #stringIdx:J
    :catch_f7
    move-exception v8

    .line 198
    .local v8, e:Ljava/lang/Exception;
    :try_start_f8
    const-string v2, "RejectCallWithMsg"

    const-string v3, "rejectmsg exception"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_10a

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_40

    .line 146
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #edited:I
    .restart local v11       #id:J
    .restart local v13       #isChanged:Z
    .restart local v15       #stringIdx:J
    :cond_104
    :try_start_104
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v3, v15

    aget-object v10, v2, v3
    :try_end_109
    .catchall {:try_start_104 .. :try_end_109} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_109} :catch_f7

    .restart local v10       #entryName:Ljava/lang/String;
    goto :goto_bf

    .line 200
    .end local v9           #edited:I
    .end local v10           #entryName:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #isChanged:Z
    .end local v15           #stringIdx:J
    :catchall_10a
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method
