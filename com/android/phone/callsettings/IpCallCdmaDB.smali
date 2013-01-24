.class public Lcom/android/phone/callsettings/IpCallCdmaDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IpCallCdmaDB.java"


# static fields
.field private static DefaultMessage:Ljava/lang/String;

.field private static DefaultMsgNum:I

.field public static final defaultIpNumberList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x5

    sput v0, Lcom/android/phone/callsettings/IpCallCdmaDB;->DefaultMsgNum:I

    .line 38
    const-string v0, "default_number"

    sput-object v0, Lcom/android/phone/callsettings/IpCallCdmaDB;->DefaultMessage:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "17901"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/IpCallCdmaDB;->defaultIpNumberList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 50
    const-string v0, "ipcallcdma.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 51
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdmaDB;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 59
    const-string v1, "CREATE TABLE ip_call_cdma (_id INTEGER PRIMARY KEY AUTOINCREMENT, ipcall_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    sget-object v1, Lcom/android/phone/callsettings/IpCallCdmaDB;->defaultIpNumberList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO ip_call_cdma (\'IPCALL_NUMBER\', \'EDIT_CHECKED\') values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/IpCallCdmaDB;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' , 0);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    :cond_2c
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 73
    const-string v0, "IpCallCdmaDB"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "DROP TABLE IF EXISTS ip_call_cdma"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpCallCdmaDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    return-void
.end method
