.class public Lcom/android/phone/callsettings/ScrambleLib$UUID;
.super Ljava/lang/Object;
.source "ScrambleLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/ScrambleLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UUID"
.end annotation


# instance fields
.field private Data1:J

.field private Data2:I

.field private Data3:I

.field private Data4:[C

.field final synthetic this$0:Lcom/android/phone/callsettings/ScrambleLib;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/ScrambleLib;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->this$0:Lcom/android/phone/callsettings/ScrambleLib;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    .line 32
    const-wide/32 v0, 0x21b900ec

    iput-wide v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data1:J

    .line 33
    const v0, 0xb361

    iput v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data2:I

    .line 34
    const/16 v0, 0x7131

    iput v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I

    .line 35
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/16 v1, 0x38

    aput-char v1, v0, v2

    .line 36
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x1

    aput-char v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    aput-char v2, v0, v3

    .line 38
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 39
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x4

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x5

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    .line 41
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x6

    const/16 v2, 0x71

    aput-char v2, v0, v1

    .line 42
    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x7

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/ScrambleLib$UUID;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I

    return v0
.end method


# virtual methods
.method public UpdateUUID()V
    .registers 7

    .prologue
    .line 49
    iget-object v3, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->this$0:Lcom/android/phone/callsettings/ScrambleLib;

    #getter for: Lcom/android/phone/callsettings/ScrambleLib;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/callsettings/ScrambleLib;->access$000(Lcom/android/phone/callsettings/ScrambleLib;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 50
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, imei_value:Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_24

    .line 56
    :cond_22
    const-string v0, "000000000000000"

    .line 58
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 59
    .local v1, szDeviceSerial:[B
    iget-object v3, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->this$0:Lcom/android/phone/callsettings/ScrambleLib;

    #getter for: Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;
    invoke-static {v3}, Lcom/android/phone/callsettings/ScrambleLib;->access$100(Lcom/android/phone/callsettings/ScrambleLib;)Lcom/android/phone/callsettings/ScrambleLib$UUID;

    move-result-object v3

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    const/4 v5, 0x7

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I

    .line 61
    .end local v1           #szDeviceSerial:[B
    :cond_4f
    return-void
.end method
