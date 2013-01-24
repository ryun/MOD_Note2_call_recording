.class public Lcom/android/phone/callsettings/ScrambleLib;
.super Ljava/lang/Object;
.source "ScrambleLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/ScrambleLib$UUID;
    }
.end annotation


# instance fields
.field private lplpwScramleArray:[[I

.field private mBuffer:[B

.field private mContext:Landroid/content/Context;

.field private mDataLength:I

.field private mScrambleSize:I

.field private final myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

.field private nScrambleArraySize:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    .line 23
    const/16 v0, 0x10

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    .line 89
    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    .line 90
    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    .line 92
    new-instance v0, Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;-><init>(Lcom/android/phone/callsettings/ScrambleLib;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    .line 93
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;->UpdateUUID()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    .line 23
    const/16 v0, 0x10

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    .line 98
    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    .line 99
    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    .line 100
    iput-object p1, p0, Lcom/android/phone/callsettings/ScrambleLib;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;-><init>(Lcom/android/phone/callsettings/ScrambleLib;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    .line 103
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;->UpdateUUID()V

    .line 104
    return-void
.end method

.method public static final ByteToInt([B)I
    .registers 3
    .parameter "b"

    .prologue
    .line 214
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private InitScambleArray()V
    .registers 8

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v5, 0x10

    if-ge v0, v5, :cond_4d

    .line 120
    const/4 v1, 0x0

    .local v1, j:I
    :goto_6
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v1, v5, :cond_13

    .line 122
    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    aput v1, v5, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 127
    :cond_13
    new-instance v3, Ljava/util/Random;

    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    #getter for: Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I
    invoke-static {v5}, Lcom/android/phone/callsettings/ScrambleLib$UUID;->access$200(Lcom/android/phone/callsettings/ScrambleLib$UUID;)I

    move-result v5

    add-int/2addr v5, v0

    const v6, 0x186a0

    rem-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 129
    .local v3, random_number:Ljava/util/Random;
    const/4 v1, 0x0

    :goto_25
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v1, v5, :cond_4a

    .line 131
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 132
    .local v2, k:I
    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    aget v4, v5, v1

    .line 133
    .local v4, tmp:I
    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v6, v6, v0

    aget v6, v6, v2

    aput v6, v5, v1

    .line 134
    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    aput v4, v5, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 118
    .end local v2           #k:I
    .end local v4           #tmp:I
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v1           #j:I
    .end local v3           #random_number:Ljava/util/Random;
    :cond_4d
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    iput v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    .line 138
    return-void
.end method

.method public static final IntToByte(I)[B
    .registers 4
    .parameter "i"

    .prologue
    .line 217
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/ScrambleLib;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/ScrambleLib;)Lcom/android/phone/callsettings/ScrambleLib$UUID;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    return-object v0
.end method


# virtual methods
.method public decode()Z
    .registers 15

    .prologue
    const/4 v13, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v12, -0x8000

    .line 173
    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v9, v10, :cond_c

    .line 210
    :goto_b
    return v7

    .line 177
    :cond_c
    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v9, v9, 0x11

    rem-int/lit8 v5, v9, 0x20

    .line 179
    .local v5, nRotate:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    div-int/lit8 v9, v9, 0x4

    if-ge v3, v9, :cond_80

    .line 180
    mul-int/lit8 v6, v3, 0x4

    .line 181
    .local v6, startIndex:I
    new-array v1, v13, [B

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    aget-byte v9, v9, v6

    aput-byte v9, v1, v7

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v1, v8

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v11, v6, 0x2

    aget-byte v10, v10, v11

    aput-byte v10, v1, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v11, v6, 0x3

    aget-byte v10, v10, v11

    aput-byte v10, v1, v9

    .line 182
    .local v1, buffer:[B
    invoke-static {v1}, Lcom/android/phone/callsettings/ScrambleLib;->ByteToInt([B)I

    move-result v2

    .line 184
    .local v2, data:I
    xor-int/lit16 v2, v2, 0x1732

    .line 186
    const/16 v9, 0x10

    if-lt v5, v9, :cond_5a

    .line 188
    const/4 v4, 0x0

    .local v4, j:I
    :goto_48
    rsub-int/lit8 v9, v5, 0x20

    if-ge v4, v9, :cond_6b

    .line 189
    and-int v9, v12, v2

    if-eqz v9, :cond_57

    shl-int/lit8 v9, v2, 0x1

    or-int/lit8 v2, v9, 0x1

    .line 188
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 189
    :cond_57
    shl-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 193
    .end local v4           #j:I
    :cond_5a
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_5b
    if-ge v4, v5, :cond_6b

    .line 194
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_68

    ushr-int/lit8 v9, v2, 0x1

    or-int v2, v9, v12

    .line 193
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 194
    :cond_68
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 197
    :cond_6b
    invoke-static {v2}, Lcom/android/phone/callsettings/ScrambleLib;->IntToByte(I)[B

    move-result-object v1

    .line 198
    const/4 v4, 0x0

    :goto_70
    if-ge v4, v13, :cond_7d

    .line 199
    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int v10, v6, v4

    aget-byte v11, v1, v4

    aput-byte v11, v9, v10

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 179
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 203
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #j:I
    .end local v6           #startIndex:I
    :cond_80
    const/4 v3, 0x0

    :goto_81
    iget v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v3, v7, :cond_c4

    .line 205
    iget-object v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v3

    aget-byte v0, v7, v9

    .line 206
    .local v0, bTmp:B
    iget-object v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    iget v12, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v12, v12, 0x11

    rem-int/lit8 v12, v12, 0x10

    aget-object v11, v11, v12

    iget v12, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v3

    aget v11, v11, v12

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 207
    iget-object v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v10, v10, 0x11

    rem-int/lit8 v10, v10, 0x10

    aget-object v9, v9, v10

    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v3

    aget v9, v9, v10

    aput-byte v0, v7, v9

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .end local v0           #bTmp:B
    :cond_c4
    move v7, v8

    .line 210
    goto/16 :goto_b
.end method

.method public encode()Z
    .registers 16

    .prologue
    const/4 v14, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    iget v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v10, v11, :cond_a

    .line 168
    :goto_9
    return v8

    .line 146
    :cond_a
    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v10, v10, 0x11

    rem-int/lit8 v5, v10, 0x20

    .line 148
    .local v5, nRotate:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v3, v10, :cond_40

    .line 149
    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    aget-byte v0, v10, v3

    .line 150
    .local v0, bTmp:B
    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v12, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    iget v13, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v13, v13, 0x11

    rem-int/lit8 v13, v13, 0x10

    aget-object v12, v12, v13

    aget v12, v12, v3

    aget-byte v11, v11, v12

    aput-byte v11, v10, v3

    .line 151
    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    iget v12, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v12, v12, 0x11

    rem-int/lit8 v12, v12, 0x10

    aget-object v11, v11, v12

    aget v11, v11, v3

    aput-byte v0, v10, v11

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 154
    .end local v0           #bTmp:B
    :cond_40
    const/4 v3, 0x0

    :goto_41
    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    div-int/lit8 v10, v10, 0x4

    if-ge v3, v10, :cond_98

    .line 155
    mul-int/lit8 v7, v3, 0x4

    .line 156
    .local v7, startIndex:I
    new-array v1, v14, [B

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    aget-byte v10, v10, v7

    aput-byte v10, v1, v8

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v1, v9

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v12, v7, 0x2

    aget-byte v11, v11, v12

    aput-byte v11, v1, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v12, v7, 0x3

    aget-byte v11, v11, v12

    aput-byte v11, v1, v10

    .line 157
    .local v1, buffer:[B
    invoke-static {v1}, Lcom/android/phone/callsettings/ScrambleLib;->ByteToInt([B)I

    move-result v2

    .line 159
    .local v2, data:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_70
    if-ge v4, v5, :cond_81

    .line 160
    const/high16 v10, -0x8000

    and-int/2addr v10, v2

    if-eqz v10, :cond_7e

    shl-int/lit8 v10, v2, 0x1

    or-int/lit8 v2, v10, 0x1

    .line 159
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 160
    :cond_7e
    shl-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 163
    :cond_81
    xor-int/lit16 v2, v2, 0x1732

    .line 164
    invoke-static {v2}, Lcom/android/phone/callsettings/ScrambleLib;->IntToByte(I)[B

    move-result-object v6

    .line 165
    .local v6, res:[B
    const/4 v4, 0x0

    :goto_88
    if-ge v4, v14, :cond_95

    .line 166
    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int v11, v7, v4

    aget-byte v12, v6, v4

    aput-byte v12, v10, v11

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    .line 154
    :cond_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #j:I
    .end local v6           #res:[B
    .end local v7           #startIndex:I
    :cond_98
    move v8, v9

    .line 168
    goto/16 :goto_9
.end method

.method public setScrambleData([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "datalength"
    .parameter "scamblesize"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    .line 108
    iput p2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    .line 109
    iput p3, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    .line 111
    iget v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    iget v1, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-eq v0, v1, :cond_f

    .line 112
    invoke-direct {p0}, Lcom/android/phone/callsettings/ScrambleLib;->InitScambleArray()V

    .line 114
    :cond_f
    return-void
.end method
