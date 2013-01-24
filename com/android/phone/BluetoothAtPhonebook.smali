.class public Lcom/android/phone/BluetoothAtPhonebook;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final CALLS_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private final mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private final mNameIgnoreBlacklisted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .registers 10
    .parameter "context"
    .parameter "handsfree"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "My Car"

    aput-object v2, v1, v5

    const-string v2, "BMW 50046"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "BMW 20529"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "BMW50046"

    aput-object v3, v1, v2

    const-string v2, "Volkswagen"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mNameIgnoreBlacklisted:Ljava/util/ArrayList;

    .line 107
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 124
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-eqz v0, :cond_7c

    .line 130
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "SM"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_7c
    const-string v0, "ME"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 136
    iput-boolean v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->checkAccessPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothAtPhonebook;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothAtPhonebook;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    return p1
.end method

.method private checkAccessPermission()Z
    .registers 6

    .prologue
    .line 622
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 624
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v2

    .line 626
    .local v2, trust:Z
    if-eqz v2, :cond_12

    .line 627
    const/4 v3, 0x1

    .line 639
    :goto_11
    return v3

    .line 630
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 637
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 639
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .registers 4
    .parameter "currSize"

    .prologue
    const/16 v0, 0x64

    .line 486
    monitor-enter p0

    if-ge p1, v0, :cond_e

    .line 487
    .local v0, maxSize:I
    :goto_5
    :try_start_5
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 488
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    move-result v1

    monitor-exit p0

    return v1

    .end local v0           #maxSize:I
    :cond_e
    move v0, p1

    .line 486
    goto :goto_5

    .restart local v0       #maxSize:I
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 643
    packed-switch p0, :pswitch_data_12

    .line 656
    const-string v0, "O"

    :goto_5
    return-object v0

    .line 645
    :pswitch_6
    const-string v0, "H"

    goto :goto_5

    .line 647
    :pswitch_9
    const-string v0, "M"

    goto :goto_5

    .line 649
    :pswitch_c
    const-string v0, "W"

    goto :goto_5

    .line 652
    :pswitch_f
    const-string v0, "F"

    goto :goto_5

    .line 643
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .registers 6
    .parameter "pb"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 405
    monitor-enter p0

    if-nez p1, :cond_7

    move-object v0, v1

    .line 418
    :cond_5
    :goto_5
    monitor-exit p0

    return-object v0

    .line 408
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .line 409
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_17

    .line 410
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    .line 412
    .restart local v0       #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :cond_17
    if-nez p2, :cond_1d

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_5

    .line 413
    :cond_1d
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_25

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v1

    .line 414
    goto :goto_5

    .line 405
    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private processCpbrCommand()Landroid/bluetooth/AtCommandResult;
    .registers 18

    .prologue
    .line 504
    const-string v1, "SM"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-nez v1, :cond_19

    .line 505
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 615
    :cond_18
    :goto_18
    return-object v15

    .line 509
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v13

    .line 510
    .local v13, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v13, :cond_30

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v15

    goto :goto_18

    .line 524
    :cond_30
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_54

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_54

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_54

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_5b

    .line 526
    :cond_54
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_18

    .line 530
    :cond_5b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_71

    .line 531
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    .line 535
    :cond_71
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 536
    .local v15, result:Landroid/bluetooth/AtCommandResult;
    const/4 v8, -0x1

    .line 537
    .local v8, errorDetected:I
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 538
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .local v9, index:I
    :goto_87
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    if-gt v9, v1, :cond_18

    .line 539
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 540
    .local v12, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 541
    .local v10, name:Ljava/lang/String;
    const/16 v16, -0x1

    .line 542
    .local v16, type:I
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c6

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 550
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_d4

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 552
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 553
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 555
    :cond_d1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 562
    .end local v7           #c:Landroid/database/Cursor;
    :cond_d4
    :goto_d4
    if-nez v10, :cond_d8

    const-string v10, ""

    .line 563
    :cond_d8
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 564
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_eb

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 566
    :cond_eb
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_113

    .line 567
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 571
    :cond_113
    if-nez v12, :cond_117

    const-string v12, ""

    .line 572
    :cond_117
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v14

    .line 574
    .local v14, regionType:I
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 575
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 576
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_132

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 581
    :cond_132
    const-string v1, "-1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 583
    const-string v12, ""

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 589
    :cond_147
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 590
    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v11

    .line 591
    .local v11, nameByte:[B
    if-nez v11, :cond_1d0

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 599
    .end local v11           #nameByte:[B
    :cond_16c
    :goto_16c
    const-string v1, "sec_korea_bluetooth"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_211

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtPhonebook;->isNameIgnoreBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 611
    :goto_1ba
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 538
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_87

    .line 560
    .end local v14           #regionType:I
    :cond_1c6
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d4

    .line 594
    .restart local v11       #nameByte:[B
    .restart local v14       #regionType:I
    :cond_1d0
    new-instance v10, Ljava/lang/String;

    .end local v10           #name:Ljava/lang/String;
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .restart local v10       #name:Ljava/lang/String;
    goto :goto_16c

    .line 604
    .end local v11           #nameByte:[B
    :cond_1d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_1ba

    .line 608
    :cond_211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_1ba
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    .registers 11
    .parameter "pb"
    .parameter "pbr"

    .prologue
    const/4 v7, 0x0

    .line 423
    monitor-enter p0

    const/4 v6, 0x1

    .line 425
    .local v6, ancillaryPhonebook:Z
    :try_start_3
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 426
    const/4 v6, 0x0

    .line 428
    const-string v3, "in_visible_group=1 AND account_type!= \'vnd.sec.contact.sim\'"

    .line 445
    .local v3, where:Ljava/lang/String;
    :goto_e
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 446
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 450
    :cond_1a
    if-eqz v6, :cond_a9

    .line 451
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 454
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_e2

    if-nez v0, :cond_69

    move v0, v7

    .line 469
    .end local v3           #where:Ljava/lang/String;
    :goto_34
    monitor-exit p0

    return v0

    .line 429
    :cond_36
    :try_start_36
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 430
    const-string v3, "type=2"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .line 431
    .end local v3           #where:Ljava/lang/String;
    :cond_41
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 432
    const-string v3, "type=1"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .line 433
    .end local v3           #where:Ljava/lang/String;
    :cond_4c
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 434
    const-string v3, "type=3"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .line 437
    .end local v3           #where:Ljava/lang/String;
    :cond_57
    const-string v0, "SM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-eqz v0, :cond_67

    .line 438
    const/4 v6, 0x0

    .line 439
    const-string v3, "in_visible_group=1 AND account_type= \'vnd.sec.contact.sim\'"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .end local v3           #where:Ljava/lang/String;
    :cond_67
    move v0, v7

    .line 442
    goto :goto_34

    .line 456
    .restart local v3       #where:Ljava/lang/String;
    :cond_69
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 457
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 458
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    .line 468
    :goto_79
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed phonebook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x1

    goto :goto_34

    .line 460
    :cond_a9
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 462
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_c3

    move v0, v7

    goto/16 :goto_34

    .line 464
    :cond_c3
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 465
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 466
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_e1
    .catchall {:try_start_36 .. :try_end_e1} :catchall_e2

    goto :goto_79

    .line 423
    .end local v3           #where:Ljava/lang/String;
    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 492
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 493
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 494
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 495
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 496
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 497
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public getLastDialledNumber()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 141
    new-array v2, v13, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 143
    .local v2, projection:[Ljava/lang/String;
    const-string v8, "-1"

    .line 144
    .local v8, UNKNOWN_NUMBER:Ljava/lang/String;
    const-string v7, "-2"

    .line 145
    .local v7, PRIVATE_NUMBER:Ljava/lang/String;
    const-string v6, "-3"

    .line 146
    .local v6, PAY_PHONE_NUMBER:Ljava/lang/String;
    const-string v9, "-4"

    .line 149
    .local v9, UNKNOWN_PHONE:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 152
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_24

    .line 172
    :cond_23
    :goto_23
    return-object v4

    .line 154
    :cond_24
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v13, :cond_2e

    .line 155
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 158
    :cond_2e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 159
    const-string v0, "number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 160
    .local v10, column:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 161
    .local v12, number:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 163
    const-string v0, "feature_logs_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 164
    const-string v0, "-1"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "-2"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "-3"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "-4"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_66
    move-object v4, v12

    .line 172
    goto :goto_23
.end method

.method handleAccessPermissionResult(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 370
    iget-boolean v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    if-nez v3, :cond_7

    .line 397
    :goto_6
    return-void

    .line 374
    :cond_7
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    .line 379
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 381
    const-string v3, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_44

    .line 384
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 385
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 386
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 389
    :cond_31
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 390
    .local v0, cpbrResult:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 395
    .end local v0           #cpbrResult:Landroid/bluetooth/AtCommandResult;
    .end local v2           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_3c
    :goto_3c
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 396
    iput-boolean v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    goto :goto_6

    .line 392
    :cond_44
    const-string v3, "ERROR"

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    goto :goto_3c
.end method

.method public isLastDialledNumberVideoCall()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 178
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "logtype"

    aput-object v0, v2, v10

    .line 180
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 185
    .local v8, isVideoCall:Z
    if-nez v7, :cond_1e

    move v9, v8

    .line 200
    .end local v8           #isVideoCall:Z
    .local v9, isVideoCall:I
    :goto_1d
    return v9

    .line 187
    .end local v9           #isVideoCall:I
    .restart local v8       #isVideoCall:Z
    :cond_1e
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_29

    .line 188
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v9, v8

    .line 189
    .restart local v9       #isVideoCall:I
    goto :goto_1d

    .line 191
    .end local v9           #isVideoCall:I
    :cond_29
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 193
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 194
    .local v6, callType:I
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastDialledNumberType:Calls.TYPE - callType CALLER_NUMBERTYPE_COLUMN_INDEX("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 197
    const/16 v0, 0x1f4

    if-ne v6, v0, :cond_56

    .line 198
    const/4 v8, 0x1

    :cond_56
    move v9, v8

    .line 200
    .restart local v9       #isVideoCall:I
    goto :goto_1d
.end method

.method public isNameIgnoreBlacklisted(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mNameIgnoreBlacklisted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, blacklistName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 209
    .end local v0           #blacklistName:Ljava/lang/String;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .registers 4
    .parameter "parser"

    .prologue
    .line 215
    const-string v0, "+CSCS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$1;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 248
    const-string v0, "+CPBS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$2;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 297
    const-string v0, "+CPBR"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$3;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 367
    return-void
.end method

.method declared-synchronized resetAtState()V
    .registers 2

    .prologue
    .line 473
    monitor-enter p0

    :try_start_1
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 476
    monitor-exit p0

    return-void

    .line 473
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
