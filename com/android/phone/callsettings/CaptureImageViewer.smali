.class public Lcom/android/phone/callsettings/CaptureImageViewer;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;,
        Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDisplayNameProjection:Ljava/lang/String;

.field private final mFilePathProjection:Ljava/lang/String;

.field private mImageGallery:Landroid/widget/Gallery;

.field private mNoSDCardstart:Z

.field private mSelectedFilePath:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mTitle:Landroid/widget/TextView;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 71
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;

    .line 72
    const-string v0, "_data"

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mFilePathProjection:Ljava/lang/String;

    .line 73
    const-string v0, "title"

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mDisplayNameProjection:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    .line 87
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoSDCardstart:Z

    .line 315
    return-void
.end method

.method private CaptureImageViewer_checkFsWritable()Z
    .registers 6

    .prologue
    .line 566
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 575
    const/4 v2, 0x1

    .line 579
    :goto_14
    return v2

    .line 578
    :cond_15
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not writable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v2, 0x0

    goto :goto_14
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/CaptureImageViewer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/ImageSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/callsettings/CaptureImageViewer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    return p1
.end method

.method private static getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 439
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_9

    move-result-object v1

    .line 443
    :goto_4
    return-object v1

    .line 440
    :catch_5
    move-exception v0

    .line 441
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, ""

    goto :goto_4

    .line 442
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_9
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, ""

    goto :goto_4
.end method

.method private showToast(II)V
    .registers 5
    .parameter "aResId"
    .parameter "duration"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    .line 542
    sget-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_14

    .line 543
    sget-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 544
    :cond_14
    return-void
.end method


# virtual methods
.method public CaptureImageViewer_hasStorage(Z)Z
    .registers 7
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 547
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, state:Ljava/lang/String;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 550
    if-eqz p1, :cond_2b

    .line 551
    invoke-direct {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->CaptureImageViewer_checkFsWritable()Z

    move-result v1

    .line 559
    :cond_2b
    :goto_2b
    return v1

    .line 556
    :cond_2c
    if-nez p1, :cond_36

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 559
    :cond_36
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public imageSelected(Landroid/view/View;IJ)V
    .registers 24
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 218
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 219
    .local v4, projection:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 220
    .local v9, FilePath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 221
    .local v8, DisplayName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 224
    .local v13, fScramble:Ljava/io/FileInputStream;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;

    const-string v5, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_1f} :catch_75

    move-result-object v11

    .line 225
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_37

    .line 227
    :try_start_22
    move/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 228
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    .line 229
    const/4 v2, 0x1

    invoke-static {v11, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_70

    move-result-object v8

    .line 232
    :cond_34
    :try_start_34
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_37} :catch_75

    .line 241
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_37
    :goto_37
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 242
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    if-eqz v9, :cond_10d

    .line 247
    const-string v2, ".vci"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_65
    :goto_65
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    .line 287
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    .line 293
    :goto_6f
    return-void

    .line 232
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_70
    move-exception v2

    :try_start_71
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_71 .. :try_end_75} :catch_75

    .line 235
    .end local v11           #cursor:Landroid/database/Cursor;
    :catch_75
    move-exception v12

    .line 238
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ImageManager"

    const-string v3, "SQLiteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 249
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7e
    const-string v2, ".vcy"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 251
    :try_start_86
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v10, v2

    .line 254
    .local v10, bufSize:I
    if-lez v10, :cond_e3

    .line 256
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_86 .. :try_end_97} :catchall_101
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_97} :catch_11f
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_97} :catch_f0

    .line 257
    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .local v14, fScramble:Ljava/io/FileInputStream;
    :try_start_97
    new-array v0, v10, [B

    move-object/from16 v18, v0

    .line 259
    .local v18, scrambleBuffer:[B
    :goto_9b
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e2

    .line 261
    new-instance v17, Lcom/android/phone/callsettings/ScrambleLib;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/ScrambleLib;-><init>(Landroid/content/Context;)V

    .line 262
    .local v17, scram:Lcom/android/phone/callsettings/ScrambleLib;
    const/16 v2, 0x20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/phone/callsettings/ScrambleLib;->setScrambleData([BII)V

    .line 263
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/callsettings/ScrambleLib;->decode()Z

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v6, v10, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_d1
    .catchall {:try_start_97 .. :try_end_d1} :catchall_119
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_d1} :catch_d2
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_d1} :catch_11c

    goto :goto_9b

    .line 270
    .end local v17           #scram:Lcom/android/phone/callsettings/ScrambleLib;
    .end local v18           #scrambleBuffer:[B
    :catch_d2
    move-exception v12

    move-object v13, v14

    .line 271
    .end local v10           #bufSize:I
    .end local v14           #fScramble:Ljava/io/FileInputStream;
    .end local v15           #file:Ljava/io/File;
    .local v12, e:Ljava/io/FileNotFoundException;
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    :goto_d4
    :try_start_d4
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_101

    .line 276
    if-eqz v13, :cond_65

    .line 278
    :try_start_d9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_65

    .line 279
    :catch_dd
    move-exception v12

    .line 280
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .restart local v10       #bufSize:I
    .restart local v14       #fScramble:Ljava/io/FileInputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v18       #scrambleBuffer:[B
    :cond_e2
    move-object v13, v14

    .line 276
    .end local v14           #fScramble:Ljava/io/FileInputStream;
    .end local v18           #scrambleBuffer:[B
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    :cond_e3
    if-eqz v13, :cond_65

    .line 278
    :try_start_e5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_ea

    goto/16 :goto_65

    .line 279
    :catch_ea
    move-exception v12

    .line 280
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_65

    .line 272
    .end local v10           #bufSize:I
    .end local v12           #e:Ljava/io/IOException;
    .end local v15           #file:Ljava/io/File;
    :catch_f0
    move-exception v12

    .line 274
    .restart local v12       #e:Ljava/io/IOException;
    :goto_f1
    :try_start_f1
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_101

    .line 276
    if-eqz v13, :cond_65

    .line 278
    :try_start_f6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fb

    goto/16 :goto_65

    .line 279
    :catch_fb
    move-exception v12

    .line 280
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_65

    .line 276
    .end local v12           #e:Ljava/io/IOException;
    :catchall_101
    move-exception v2

    :goto_102
    if-eqz v13, :cond_107

    .line 278
    :try_start_104
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_108

    .line 281
    :cond_107
    :goto_107
    throw v2

    .line 279
    :catch_108
    move-exception v12

    .line 280
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_107

    .line 289
    .end local v12           #e:Ljava/io/IOException;
    :cond_10d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    .line 290
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    goto/16 :goto_6f

    .line 276
    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .restart local v10       #bufSize:I
    .restart local v14       #fScramble:Ljava/io/FileInputStream;
    .restart local v15       #file:Ljava/io/File;
    :catchall_119
    move-exception v2

    move-object v13, v14

    .end local v14           #fScramble:Ljava/io/FileInputStream;
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    goto :goto_102

    .line 272
    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .restart local v14       #fScramble:Ljava/io/FileInputStream;
    :catch_11c
    move-exception v12

    move-object v13, v14

    .end local v14           #fScramble:Ljava/io/FileInputStream;
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    goto :goto_f1

    .line 270
    .end local v10           #bufSize:I
    .end local v15           #file:Ljava/io/File;
    :catch_11f
    move-exception v12

    goto :goto_d4
.end method

.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 305
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, i:Landroid/widget/ImageView;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 307
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 308
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    :cond_d
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 460
    packed-switch p1, :pswitch_data_32

    .line 533
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 462
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 463
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e04f7

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080037

    new-instance v4, Lcom/android/phone/callsettings/CaptureImageViewer$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$4;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 523
    .local v1, del_ad:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_4

    .line 460
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 102
    const v4, 0x7f04001a

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 105
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->CaptureImageViewer_hasStorage(Z)Z

    move-result v2

    .line 107
    .local v2, imageManagerHasStorage:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    const v4, 0x7f090084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;

    .line 111
    const v4, 0x7f090085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 113
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 114
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    const/high16 v5, 0x10a

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    const v5, 0x10a0001

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$1;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Gallery;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    .line 127
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$2;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$3;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 151
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 152
    const v4, 0x7f0e04f5

    invoke-direct {p0, v4, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->showToast(II)V

    .line 158
    :cond_97
    :goto_97
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_d9

    .line 159
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAdapter.getCount(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v6}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_e5

    .line 162
    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 163
    .local v0, Count:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    .end local v0           #Count:Landroid/widget/RelativeLayout;
    :cond_d9
    :goto_d9
    return-object v3

    .line 153
    :cond_da
    if-nez v2, :cond_97

    .line 154
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoSDCardstart:Z

    .line 155
    const v4, 0x7f0e04f3

    invoke-direct {p0, v4, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->showToast(II)V

    goto :goto_97

    .line 167
    :cond_e5
    const v4, 0x7f090083

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 168
    .restart local v0       #Count:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_d9
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p3}, Landroid/widget/Gallery;->setSelection(I)V

    .line 297
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    .line 301
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 213
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    .line 214
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 455
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    .line 457
    :cond_8
    return v1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 210
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
