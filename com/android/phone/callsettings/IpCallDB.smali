.class public Lcom/android/phone/callsettings/IpCallDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IpCallDB.java"


# static fields
.field private static DefaultMessage:Ljava/lang/String;

.field private static DefaultMsgNum:I

.field public static final defaultIpNumberList:[Ljava/lang/String;

.field public static final defaultIpNumberListCMCC:[Ljava/lang/String;

.field public static final defaultIpNumberListCTC:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x5

    sput v0, Lcom/android/phone/callsettings/IpCallDB;->DefaultMsgNum:I

    .line 40
    const-string v0, "default_number"

    sput-object v0, Lcom/android/phone/callsettings/IpCallDB;->DefaultMessage:Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "17950"

    aput-object v1, v0, v2

    const-string v1, "17951"

    aput-object v1, v0, v3

    const-string v1, "17911"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "17950"

    aput-object v1, v0, v2

    const-string v1, "17911"

    aput-object v1, v0, v3

    const-string v1, "17951"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCMCC:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "17911"

    aput-object v1, v0, v2

    const-string v1, "17951"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCTC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 62
    const-string v0, "ipcall.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallDB;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 71
    const-string v1, "CREATE TABLE ip_call (_id INTEGER PRIMARY KEY AUTOINCREMENT, ipcall_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v1, "IpCallDB"

    const-string v2, "CREATE TABLE ip_call (_id INTEGER PRIMARY KEY AUTOINCREMENT, ipcall_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    sget-object v1, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCTC:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_62

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO ip_call (\'IPCALL_NUMBER\', \'EDIT_CHECKED\') values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' , 0);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 85
    .end local v0           #i:I
    :cond_3b
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3c
    sget-object v1, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_62

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO ip_call (\'IPCALL_NUMBER\', \'EDIT_CHECKED\') values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' , 0);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 91
    :cond_62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 96
    const-string v0, "IpCallDB"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "DROP TABLE IF EXISTS ip_call"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpCallDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    return-void
.end method
