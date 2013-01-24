.class public Lcom/android/phone/callsettings/CallReminderDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CallReminderDB.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 44
    const-string v0, "callreminder.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    iput-object p1, p0, Lcom/android/phone/callsettings/CallReminderDB;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 53
    const-string v0, "CREATE TABLE call_reminder (_id INTEGER PRIMARY KEY AUTOINCREMENT, callreminder_callerid TEXT NOT NULL,callreminder_enable INTEGER NOT NULL,callreminder_rejecttime LONG NOT NULL,callreminder_alerttime LONG NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x2

    .line 62
    if-ge p2, v3, :cond_8

    .line 64
    const-string v0, "ALTER TABLE call_reminder ADD COLUMN callreminder_enable INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    :cond_8
    const-string v0, "CallReminderDB"

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

    .line 67
    if-eq p2, v3, :cond_32

    .line 68
    const-string v0, "DROP TABLE IF EXISTS call_reminder"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallReminderDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method
