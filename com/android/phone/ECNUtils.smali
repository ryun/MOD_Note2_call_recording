.class public Lcom/android/phone/ECNUtils;
.super Ljava/lang/Object;
.source "ECNUtils.java"


# static fields
.field private static DBG:Z

.field private static final DEFAULT_STATUS_VALUE:Ljava/lang/Boolean;

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/ECNUtils;


# instance fields
.field public ecnDigits:Ljava/lang/String;

.field public ecnHexCode:Ljava/lang/String;

.field public ecnStatus:Z

.field public ecnUSSD:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 31
    const-string v0, "ECN"

    sput-object v0, Lcom/android/phone/ECNUtils;->TAG:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/android/phone/ECNUtils;->DBG:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ECNUtils;->DEFAULT_STATUS_VALUE:Ljava/lang/Boolean;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/android/phone/ECNUtils;->DEFAULT_STATUS_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    .line 77
    const-string v0, "#119#"

    iput-object v0, p0, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    .line 78
    const-string v0, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    iput-object v0, p0, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    .line 79
    const-string v0, "897023415618307564290729486153"

    iput-object v0, p0, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/android/phone/ECNUtils;->retrieve()V

    .line 57
    return-void
.end method

.method private calcUVRFromUNR(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .parameter "unr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: unr - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", size - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_30

    .line 223
    const/4 v13, 0x0

    .line 292
    :goto_2f
    return-object v13

    .line 226
    :cond_30
    move-object/from16 v12, p1

    .line 229
    .local v12, updated_unr:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 230
    .local v4, chars:[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v2, builder:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3c
    array-length v14, v4

    if-ge v8, v14, :cond_66

    .line 232
    aget-char v14, v4, v8

    int-to-byte v1, v14

    .line 233
    .local v1, b:B
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, hex:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_60

    .line 235
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    :cond_60
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 239
    .end local v1           #b:B
    .end local v5           #hex:Ljava/lang/String;
    :cond_66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: updated_unr - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", size - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 245
    .local v7, hexarr:[C
    const/4 v8, 0x0

    :goto_93
    array-length v14, v7

    if-ge v8, v14, :cond_be

    .line 246
    aget-char v3, v7, v8

    .line 247
    .local v3, ch:C
    const/16 v14, 0x30

    if-lt v3, v14, :cond_a0

    const/16 v14, 0x39

    if-le v3, v14, :cond_bb

    :cond_a0
    const/16 v14, 0x61

    if-lt v3, v14, :cond_a8

    const/16 v14, 0x66

    if-le v3, v14, :cond_bb

    :cond_a8
    const/16 v14, 0x41

    if-lt v3, v14, :cond_b0

    const/16 v14, 0x46

    if-le v3, v14, :cond_bb

    .line 250
    :cond_b0
    const-string v14, "calcUVRFromUNR: not an unr... invalid char"

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 251
    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14}, Ljava/lang/Exception;-><init>()V

    throw v14

    .line 245
    :cond_bb
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 257
    .end local v3           #ch:C
    :cond_be
    const/4 v14, 0x2

    invoke-static {v12, v14}, Lcom/android/phone/ECNUtils;->split(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 258
    .local v10, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    const/16 v15, 0xd

    if-ge v14, v15, :cond_eb

    .line 259
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: not an unr... insuficient data - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 260
    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14}, Ljava/lang/Exception;-><init>()V

    throw v14

    .line 263
    :cond_eb
    move-object/from16 p1, v12

    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v11, sb:Ljava/lang/StringBuilder;
    const/16 v14, 0x23

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    const/4 v9, -0x1

    .line 271
    .local v9, index:I
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v9

    .line 272
    add-int/lit8 v14, v9, 0x4

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 273
    .local v6, hexCode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: 1 - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 276
    const/4 v14, 0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v9

    .line 277
    add-int/lit8 v14, v9, 0x4

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #hexCode:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 278
    .restart local v6       #hexCode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: 2 - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 281
    const/4 v14, 0x2

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v9

    .line 282
    add-int/lit8 v14, v9, 0x4

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #hexCode:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 283
    .restart local v6       #hexCode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: 3 - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/ECNUtils;->digitForUNRByte(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 287
    const/16 v14, 0x23

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, uvr:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calcUVRFromUNR: uvr - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2f
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/android/phone/ECNUtils;
    .registers 2
    .parameter "context"

    .prologue
    .line 62
    const-string v0, "createInstance"

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    if-nez v0, :cond_1a

    .line 64
    new-instance v0, Lcom/android/phone/ECNUtils;

    invoke-direct {v0, p0}, Lcom/android/phone/ECNUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    .line 66
    sget-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    invoke-direct {v0}, Lcom/android/phone/ECNUtils;->retrieve()V

    .line 67
    sget-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->save()V

    .line 69
    :cond_1a
    sget-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    return-object v0
.end method

.method private digitForUNRByte(Ljava/lang/String;)I
    .registers 9
    .parameter "unrByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v3, -0x1

    .line 298
    .local v3, ret:I
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/phone/ECNUtils;->split(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_38

    .line 300
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, singleHexCode:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_44

    move-result v3

    .line 311
    .end local v4           #singleHexCode:Ljava/lang/String;
    :cond_38
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4b

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5

    .line 299
    .restart local v4       #singleHexCode:Ljava/lang/String;
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 307
    .end local v1           #i:I
    .end local v2           #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #singleHexCode:Ljava/lang/String;
    :catch_44
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5

    .line 312
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4b
    return v3
.end method

.method public static getInstance()Lcom/android/phone/ECNUtils;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/phone/ECNUtils;->sInstance:Lcom/android/phone/ECNUtils;

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 316
    sget-boolean v0, Lcom/android/phone/ECNUtils;->DBG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/phone/ECNUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/ECNUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_26
    return-void
.end method

.method private retrieve()V
    .registers 5

    .prologue
    .line 100
    const-string v1, "retrieve"

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.emergency_call_notification_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "ecn_status"

    sget-object v2, Lcom/android/phone/ECNUtils;->DEFAULT_STATUS_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    .line 104
    const-string v1, "ecn_ussd"

    const-string v2, "#119#"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    .line 105
    const-string v1, "ecn_hexcode"

    const-string v2, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    .line 106
    const-string v1, "ecn_digits"

    const-string v2, "897023415618307564290729486153"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieve: ecnUSSD - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecnStatus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecnHexCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecnDigits - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private static split(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .parameter "string"
    .parameter "partitionSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 212
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1b

    .line 213
    add-int v3, v0, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/2addr v0, p1

    goto :goto_a

    .line 216
    :cond_1b
    return-object v2
.end method


# virtual methods
.method public getECNSentFlag()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone.emergency_call_notification_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "ecn_sent"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 118
    .local v1, ret:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getECNSentFlag: ret - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 119
    return v1
.end method

.method public getECNUVRSentFlag()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone.emergency_call_notification_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "ecn_uvr_sent"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    .local v1, ret:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getECNUVRSentFlag: ret - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 139
    return v1
.end method

.method public processUNR(Ljava/lang/String;)Z
    .registers 6
    .parameter "unr"

    .prologue
    .line 185
    const-string v3, "processUNR"

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, ret:Z
    iget-boolean v3, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    if-eqz v3, :cond_2b

    .line 188
    const-string v3, "processUNR: ecnStatus true"

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 190
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/phone/ECNUtils;->calcUVRFromUNR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, uvr:Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 192
    const/4 v1, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/android/phone/ECNUtils;->setECNUVRSentFlag()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/phone/ECNUtils;->sendECNUSSD(Ljava/lang/String;)V

    .line 206
    .end local v2           #uvr:Ljava/lang/String;
    :goto_1c
    return v1

    .line 196
    .restart local v2       #uvr:Ljava/lang/String;
    :cond_1d
    const-string v3, "processUNR: not an UNR..."

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_1c

    .line 199
    .end local v2           #uvr:Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 201
    const-string v3, "processUNR: Invalid UNR..."

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2b
    const-string v3, "processUNR: ecnStatus true"

    invoke-static {v3}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public save()V
    .registers 5

    .prologue
    .line 83
    const-string v1, "save"

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.emergency_call_notification_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ecn_status"

    iget-boolean v2, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "ecn_ussd"

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "ecn_hexcode"

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "ecn_digits"

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save: ecnUSSD - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecnStatus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecnHexCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecnDigits - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public sendECN()V
    .registers 2

    .prologue
    .line 164
    const-string v0, "sendECN"

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/ECNUtils;->sendECNUSSD(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public sendECNUSSD(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 169
    const-string v0, "sendECNUSSD"

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 170
    iget-boolean v0, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    if-eqz v0, :cond_31

    .line 171
    const-string v0, "sendECNUSSD: ecnStatus true"

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.emergency_call_notification_intent"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/ECNUtils;->setECNSentFlag()V

    .line 179
    iget-object v1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    :goto_30
    return-void

    .line 181
    :cond_31
    const-string v0, "sendECNUSSD: ecnStatus false"

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    goto :goto_30
.end method

.method public setECNSentFlag()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ECNUtils;->setECNSentFlag(Z)V

    .line 124
    return-void
.end method

.method public setECNSentFlag(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setECNSentFlag: flag - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.emergency_call_notification_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ecn_sent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method public setECNUVRSentFlag()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ECNUtils;->setECNUVRSentFlag(Z)V

    .line 144
    return-void
.end method

.method public setECNUVRSentFlag(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setECNUVRSentFlag: flag - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.emergency_call_notification_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ecn_uvr_sent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public toggleFeatureStatus()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleFeatureStatus: ecnStatus-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_1e
    iput-boolean v0, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/ECNUtils;->save()V

    .line 159
    iget-object v0, p0, Lcom/android/phone/ECNUtils;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current ecn status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    return-void

    :cond_42
    move v0, v1

    .line 157
    goto :goto_1e
.end method
