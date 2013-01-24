.class public Lcom/android/phone/CallerInfoCacheUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallerInfoCacheUpdateReceiver.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    const-class v2, Lcom/android/phone/CallerInfoCacheUpdateReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->LOG_TAG:Ljava/lang/String;

    .line 33
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_19

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_19

    :goto_16
    sput-boolean v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->DBG:Z

    return-void

    :cond_19
    move v0, v1

    goto :goto_16
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 46
    sget-object v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerInfoCacheUpdateReceiver#onReceive(). Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->log(Ljava/lang/String;)V

    .line 42
    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0}, Lcom/android/phone/CallerInfoCache;->startAsyncCache()V

    .line 43
    return-void
.end method
