.class public Lcom/android/phone/callsettings/AutoRejectVideoCallDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AutoRejectVideoCallDB.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 35
    const-string v0, "autorejectvideocall.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 41
    const-string v0, "CREATE TABLE reject_videocall_num (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_number TEXT NOT NULL,reject_checked INTEGER,reject_match INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 49
    const-string v0, "DROP TABLE IF EXISTS reject_videocall_num"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    return-void
.end method
