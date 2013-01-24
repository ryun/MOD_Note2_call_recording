.class public Lcom/android/phone/callsettings/RegisterUssdDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RegisterUssdDB.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 44
    const-string v0, "registerussd.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 50
    const-string v0, "CREATE TABLE register_ussd (_id INTEGER PRIMARY KEY AUTOINCREMENT, registerussd_service_name TEXT NOT NULL,registerussd_ussd_code INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "CREATE TABLE register_reply_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, registerreplymsg_service_name TEXT NOT NULL,registerreplymsg_ussd_code INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 62
    const-string v0, "DROP TABLE IF EXISTS register_ussd"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "DROP TABLE IF EXISTS register_reply_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/RegisterUssdDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void
.end method
