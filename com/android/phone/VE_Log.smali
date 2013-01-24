.class public Lcom/android/phone/VE_Log;
.super Ljava/lang/Object;
.source "VE_Log.java"


# static fields
.field private static final DBG:Z

.field private static mEnableLog:Z

.field private static mFilter:Ljava/lang/String;

.field private static mLogCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_17

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    :goto_e
    sput-boolean v0, Lcom/android/phone/VE_Log;->DBG:Z

    .line 11
    sput v1, Lcom/android/phone/VE_Log;->mLogCount:I

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/android/phone/VE_Log;->mFilter:Ljava/lang/String;

    return-void

    :cond_17
    move v0, v1

    .line 8
    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static set_LogEnable(ZLjava/lang/String;)V
    .registers 2
    .parameter "b"
    .parameter "filter"

    .prologue
    .line 18
    sput-boolean p0, Lcom/android/phone/VE_Log;->mEnableLog:Z

    .line 19
    sput-object p1, Lcom/android/phone/VE_Log;->mFilter:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static write(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/phone/VE_Log;->DBG:Z

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/android/phone/VE_Log;->mEnableLog:Z

    if-eqz v0, :cond_35

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/phone/VE_Log;->mLogCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/VE_Log;->mLogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/VE_Log;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_34
    :goto_34
    return-void

    .line 26
    :cond_35
    const/4 v0, 0x6

    if-ne p0, v0, :cond_34

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/phone/VE_Log;->mLogCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/VE_Log;->mLogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/VE_Log;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
