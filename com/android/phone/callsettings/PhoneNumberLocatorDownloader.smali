.class public Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;
    }
.end annotation


# static fields
.field public static isAutoUpdating:Z

.field private static isLanguageChange:Z

.field public static sDownloadFailTime:I

.field public static tryTimes:I


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private final READ_TIMEOUT_SEC:I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final extraSize:I

.field private isAutoUpdateType:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 96
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->extraSize:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_DOWNLOAD_FINISH:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_HTTP_EXCEPTION:I

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_FILE_EXCEPTION:I

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_VERSION_SAME:I

    .line 102
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_COPY_FINISH:I

    .line 103
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_USER_CANCELED:I

    .line 104
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->READ_TIMEOUT_SEC:I

    .line 115
    return-void
.end method

.method public static CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "strSrc"
    .parameter "strDst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v5, src:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, dst:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_13

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 239
    :cond_13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 240
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 241
    :cond_1c
    const/4 v3, 0x0

    .line 242
    .local v3, from:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 245
    .local v6, to:Ljava/io/FileOutputStream;
    :try_start_1e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_80

    .line 246
    .end local v3           #from:Ljava/io/FileInputStream;
    .local v4, from:Ljava/io/FileInputStream;
    :try_start_23
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_82

    .line 248
    .end local v6           #to:Ljava/io/FileOutputStream;
    .local v7, to:Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_2a
    new-array v0, v8, [B

    .line 250
    .local v0, buffer:[B
    :goto_2c
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_46

    .line 251
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_38

    goto :goto_2c

    .line 255
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_38
    move-exception v8

    move-object v6, v7

    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 256
    .end local v4           #from:Ljava/io/FileInputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    :goto_3b
    if-eqz v3, :cond_40

    .line 257
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_71
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_68

    .line 262
    :cond_40
    if-eqz v6, :cond_45

    .line 263
    :try_start_42
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_7c

    .line 266
    :cond_45
    :goto_45
    throw v8

    .line 253
    .end local v3           #from:Ljava/io/FileInputStream;
    .end local v6           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #from:Ljava/io/FileInputStream;
    .restart local v7       #to:Ljava/io/FileOutputStream;
    :cond_46
    :try_start_46
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_38

    .line 256
    if-eqz v4, :cond_4e

    .line 257
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_61
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_58

    .line 262
    :cond_4e
    if-eqz v7, :cond_53

    .line 263
    :try_start_50
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_78

    .line 269
    :cond_53
    :goto_53
    invoke-static {p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->changePermission(Ljava/lang/String;)V

    .line 270
    const/4 v8, 0x1

    return v8

    .line 258
    :catch_58
    move-exception v8

    .line 262
    if-eqz v7, :cond_53

    .line 263
    :try_start_5b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_53

    .line 264
    :catch_5f
    move-exception v8

    goto :goto_53

    .line 261
    :catchall_61
    move-exception v8

    .line 262
    if-eqz v7, :cond_67

    .line 263
    :try_start_64
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_7a

    .line 266
    :cond_67
    :goto_67
    throw v8

    .line 258
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #from:Ljava/io/FileInputStream;
    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    :catch_68
    move-exception v9

    .line 262
    if-eqz v6, :cond_45

    .line 263
    :try_start_6b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_45

    .line 264
    :catch_6f
    move-exception v9

    goto :goto_45

    .line 261
    :catchall_71
    move-exception v8

    .line 262
    if-eqz v6, :cond_77

    .line 263
    :try_start_74
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_7e

    .line 266
    :cond_77
    :goto_77
    throw v8

    .line 264
    .end local v3           #from:Ljava/io/FileInputStream;
    .end local v6           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #from:Ljava/io/FileInputStream;
    .restart local v7       #to:Ljava/io/FileOutputStream;
    :catch_78
    move-exception v8

    goto :goto_53

    :catch_7a
    move-exception v9

    goto :goto_67

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #from:Ljava/io/FileInputStream;
    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    :catch_7c
    move-exception v9

    goto :goto_45

    :catch_7e
    move-exception v9

    goto :goto_77

    .line 255
    :catchall_80
    move-exception v8

    goto :goto_3b

    .end local v3           #from:Ljava/io/FileInputStream;
    .restart local v4       #from:Ljava/io/FileInputStream;
    :catchall_82
    move-exception v8

    move-object v3, v4

    .end local v4           #from:Ljava/io/FileInputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    goto :goto_3b
.end method

.method private DeleteFile(Ljava/lang/String;)V
    .registers 4
    .parameter "strFileName"

    .prologue
    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, myFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 231
    :cond_e
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static changePermission(Ljava/lang/String;)V
    .registers 5
    .parameter "strDst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 276
    .local v1, runtime:Ljava/lang/Runtime;
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 277
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 873
    const-string v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 877
    const-string v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 878
    return-void
.end method

.method private saveValuesBeforeUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 320
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 328
    const-string v1, "updateSuccess"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_32

    .line 331
    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    .line 335
    :goto_27
    const-string v1, "tryTimes"

    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void

    .line 333
    :cond_32
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    goto :goto_27
.end method

.method private saveValuesForSuccess()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 348
    const-string v1, "saveValuesForSuccess()"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "bTryAgain10"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 356
    const-string v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 357
    const-string v1, "tryTimes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    const-string v1, "updateSuccess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    return-void
.end method


# virtual methods
.method getBufferUnicodeString([BII)Ljava/lang/String;
    .registers 13
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 288
    const/4 v4, 0x0

    .line 289
    .local v4, isStringEnd:Z
    const/4 v1, 0x0

    .line 290
    .local v1, count:I
    const/4 v3, 0x0

    .line 291
    .local v3, i:I
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 293
    .local v0, buffer128:[B
    const/4 v3, 0x0

    :goto_8
    if-ge v3, p3, :cond_13

    .line 294
    add-int v7, p2, v3

    aget-byte v7, p1, v7

    aput-byte v7, v0, v3

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 296
    :cond_13
    const/4 v3, 0x0

    :goto_14
    if-ge v3, p3, :cond_2b

    .line 297
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_37

    add-int/lit8 v7, p3, -0x1

    if-ge v3, v7, :cond_37

    aget-byte v7, v0, v3

    if-nez v7, :cond_37

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_37

    const/4 v4, 0x1

    .line 299
    :goto_29
    if-eqz v4, :cond_39

    .line 305
    :cond_2b
    new-array v5, v1, [B

    .line 306
    .local v5, newBuffer:[B
    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v1, :cond_3e

    .line 307
    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 297
    .end local v5           #newBuffer:[B
    :cond_37
    const/4 v4, 0x0

    goto :goto_29

    .line 302
    :cond_39
    add-int/lit8 v1, v1, 0x1

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 309
    .restart local v5       #newBuffer:[B
    :cond_3e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBufferUnicodeString buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "End"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 311
    :try_start_68
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_70

    .line 316
    :goto_6f
    return-object v6

    .line 313
    :catch_70
    move-exception v2

    .line 314
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    const-string v6, ""

    goto :goto_6f
.end method

.method public getCurrentTime()I
    .registers 4

    .prologue
    .line 341
    const-string v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 342
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 343
    .local v1, date:Ljava/util/Date;
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    .registers 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    .line 179
    new-array v0, v5, [B

    .line 180
    .local v0, buffer32:[B
    new-instance v4, Lcom/android/phone/callsettings/VersionInfo;

    invoke-direct {v4}, Lcom/android/phone/callsettings/VersionInfo;-><init>()V

    .line 182
    .local v4, versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    const/4 v2, 0x0

    .line 184
    .local v2, ois:Ljava/io/RandomAccessFile;
    :try_start_a
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_bf

    .line 185
    .end local v2           #ois:Ljava/io/RandomAccessFile;
    .local v3, ois:Ljava/io/RandomAccessFile;
    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersionInfo file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ois: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 187
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 188
    .local v1, count:I
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    .line 190
    iget-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 191
    iget-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    .line 193
    :cond_59
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 194
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    .line 196
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    .line 199
    iget-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersionInfo version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lastUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b5
    .catchall {:try_start_11 .. :try_end_b5} :catchall_cd

    .line 204
    const/4 v2, 0x0

    .line 205
    .end local v3           #ois:Ljava/io/RandomAccessFile;
    .restart local v2       #ois:Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_ba

    .line 207
    :try_start_b8
    throw v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_b9} :catch_c7

    .line 208
    const/4 v2, 0x0

    .line 215
    :cond_ba
    :goto_ba
    if-eqz v2, :cond_be

    .line 217
    :try_start_bc
    throw v2
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bd} :catch_c9

    .line 218
    const/4 v2, 0x0

    .line 221
    :cond_be
    :goto_be
    return-object v4

    .line 215
    .end local v1           #count:I
    :catchall_bf
    move-exception v5

    :goto_c0
    if-eqz v2, :cond_c6

    .line 217
    :try_start_c2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_cb

    .line 218
    const/4 v2, 0x0

    .line 221
    :cond_c6
    :goto_c6
    throw v5

    .line 209
    .restart local v1       #count:I
    :catch_c7
    move-exception v5

    goto :goto_ba

    .line 219
    :catch_c9
    move-exception v5

    goto :goto_be

    .end local v1           #count:I
    :catch_cb
    move-exception v6

    goto :goto_c6

    .line 215
    .end local v2           #ois:Ljava/io/RandomAccessFile;
    .restart local v3       #ois:Ljava/io/RandomAccessFile;
    :catchall_cd
    move-exception v5

    move-object v2, v3

    .end local v3           #ois:Ljava/io/RandomAccessFile;
    .restart local v2       #ois:Ljava/io/RandomAccessFile;
    goto :goto_c0
.end method

.method public readUnsignedInt([B)J
    .registers 13
    .parameter "bytes"

    .prologue
    .line 280
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 281
    .local v0, b0:J
    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 282
    .local v2, b1:J
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 283
    .local v4, b2:J
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 284
    .local v6, b3:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public setCallback(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    .line 142
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public setTypeAuto(Z)V
    .registers 2
    .parameter "auto"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    .line 133
    return-void
.end method

.method public startDownloadThread()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 148
    const-string v1, "startDownloadThread"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    .line 149
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_c

    .line 150
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    .line 153
    :cond_c
    :try_start_c
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    .line 154
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->startThread()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19

    .line 162
    :cond_18
    :goto_18
    return-void

    .line 155
    :catch_19
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_18

    .line 158
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_18
.end method

.method public stopDownloadThread()V
    .registers 3

    .prologue
    .line 168
    const-string v0, "stopDownloadThread"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 170
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    :cond_10
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    if-eqz v0, :cond_1c

    .line 173
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->stopThread()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    .line 176
    :cond_1c
    return-void
.end method
