.class Lcom/android/phone/LGTRoamingData$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LGTRoamingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTRoamingData;


# direct methods
.method public constructor <init>(Lcom/android/phone/LGTRoamingData;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    .line 91
    const-string v0, "roaming.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method

.method private init(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .parameter "db"

    .prologue
    .line 139
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, connectList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, countryList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, sidList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, sidList2:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4a
    if-ge v3, v4, :cond_54

    aget-object v5, v0, v3

    .line 145
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 149
    .end local v5           #query:Ljava/lang/String;
    :cond_54
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v4, :cond_61

    aget-object v5, v0, v3

    .line 150
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 153
    .end local v5           #query:Ljava/lang/String;
    :cond_61
    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_64
    if-ge v3, v4, :cond_6e

    aget-object v5, v0, v3

    .line 154
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 157
    .end local v5           #query:Ljava/lang/String;
    :cond_6e
    move-object v0, v7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_71
    if-ge v3, v4, :cond_7b

    aget-object v5, v0, v3

    .line 158
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 160
    .end local v5           #query:Ljava/lang/String;
    :cond_7b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 100
    const-string v0, "CREATE TABLE connect (_id INTEGER PRIMARY KEY, country_code INTEGER, country_name TEXT NOT NULL, country_name_eng TEXT NOT NULL, connect_num TEXT NOT NULL, deleteable INTEGER, default_set INTEGER, iptel INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE TABLE country (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, name_kor TEXT NOT NULL, country_num TEXT , chosung TEXT,simplify INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "CREATE TABLE sid (_id INTEGER PRIMARY KEY, sid TEXT NOT NULL, connect_id TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->init(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 132
    const-string v0, "RoamingData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "DROP TABLE IF EXISTS contact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    return-void
.end method
