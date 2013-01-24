.class Lcom/android/phone/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field private mContinueVibrating:Z

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .registers 3
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Ringer$VibratorThread;->mContinueVibrating:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCustomVibrationUri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 434
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    if-eqz v0, :cond_a5

    .line 435
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_a5

    .line 438
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 439
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, patternStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibration id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pattern : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    #calls: Lcom/android/phone/Ringer;->StringToLongArray(Ljava/lang/String;)[J
    invoke-static {v0, v8}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;Ljava/lang/String;)[J

    move-result-object v7

    .line 447
    .local v7, pattern:[J
    if-eqz v7, :cond_a2

    .line 448
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #pattern:[J
    .end local v8           #patternStr:Ljava/lang/String;
    :cond_a1
    return-void

    .line 453
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_a2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 457
    .end local v6           #c:Landroid/database/Cursor;
    :cond_a5
    :goto_a5
    iget-boolean v0, p0, Lcom/android/phone/Ringer$VibratorThread;->mContinueVibrating:Z

    if-eqz v0, :cond_a1

    .line 459
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateCall(I)V

    .line 460
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_a5
.end method

.method public stopThread()V
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Ringer$VibratorThread;->mContinueVibrating:Z

    .line 431
    return-void
.end method
