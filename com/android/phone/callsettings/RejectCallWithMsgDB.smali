.class public Lcom/android/phone/callsettings/RejectCallWithMsgDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RejectCallWithMsgDB.java"


# static fields
.field private static DefaultMessage:Ljava/lang/String;

.field private static DefaultMsgNum:I

.field public static defaultRejectMsgList:[Ljava/lang/String;

.field public static final defaultRejectMsgListKor:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 39
    sput v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMsgNum:I

    .line 40
    const-string v0, "default_message"

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list2"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list3"

    aput-object v1, v0, v6

    const-string v1, "callsettings_rejectmessage_list4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "callsettings_rejectmessage_list5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1_kor"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list2_kor"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list3_kor"

    aput-object v1, v0, v6

    const-string v1, "callsettings_rejectmessage_list4_kor"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "callsettings_rejectmessage_list5_kor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 67
    const-string v0, "rejectmessage.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 76
    .local v0, DefaultRemindtime:I
    const-string v2, "CREATE TABLE reject_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_message TEXT NOT NULL,edit_checked INTEGER NOT NULL,remind_time INTEGER NOT NULL);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    .line 84
    if-nez v1, :cond_3b

    .line 85
    const/16 v0, 0x3c

    .line 90
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' , \'REMIND_TIME\') values (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' , 0 ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 87
    :cond_3b
    const/4 v0, 0x0

    goto :goto_10

    .line 95
    :cond_3d
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x2

    .line 100
    if-ge p2, v3, :cond_8

    .line 101
    const-string v0, "ALTER TABLE reject_msg ADD COLUMN remind_time INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    :cond_8
    const-string v0, "ResectMsgDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 105
    if-ge p2, v3, :cond_32

    .line 106
    const-string v0, "DROP TABLE IF EXISTS reject_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void
.end method
